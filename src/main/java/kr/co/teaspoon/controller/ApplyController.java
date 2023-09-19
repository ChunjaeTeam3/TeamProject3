package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Apply;
import kr.co.teaspoon.dto.Event;
import kr.co.teaspoon.service.ApplyService;
import kr.co.teaspoon.service.EventService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/apply/*")
public class ApplyController {

    @Autowired
    private ApplyService applyService;
    @Autowired
    private EventService eventService;

    @GetMapping("insert.do")
    public String insertForm(HttpServletRequest request, Model model) throws Exception {
        Event event = eventService.eventDetail(Integer.parseInt(request.getParameter("eno").trim())); //
        request.setAttribute("event", event);
        return "/apply/appForm";
    }

    @RequestMapping(value="insert.do", method= RequestMethod.POST)
    public String applyInsert(HttpServletRequest request, Model model) throws Exception {
        HttpSession session = request.getSession();
        int eno = Integer.parseInt(request.getParameter("eno").trim());
        Event event = eventService.eventDetail(eno);
        model.addAttribute("event", event);

        Apply apply = new Apply();
        apply.setEno(event.getEno());
        apply.setName(request.getParameter("name"));
        apply.setId((String) session.getAttribute("sid"));
        apply.setTel(request.getParameter("tel"));
        applyService.applyInsert(apply);

        return "/apply/appSuc";
    }

    @GetMapping("delete.do")
    public ModelAndView applyDelete(HttpServletRequest request, Model model) throws Exception {
        int appno = Integer.parseInt(request.getParameter("appno"));
        applyService.applyDelete(appno);

        model.addAttribute("eno", request.getParameter("eno"));

        ModelAndView mav = new ModelAndView();
        mav.setView(new RedirectView(request.getContextPath() + "/member/eventMypage.do"));
        return mav;
    }
    @RequestMapping(value = "appCheck.do", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Boolean> appCheck(HttpServletRequest request) throws Exception {
        String id = request.getParameter("id");
        int eno = Integer.parseInt(request.getParameter("eno"));

        boolean result = applyService.appCheck(id, eno);

        Apply apply = applyService.getApply(id);

        if (result) {
            result = true;
        } else {
            // 이미 참여한 이벤트인 경우
            if (apply.getEno() == eno) {
                result = false; // 해당 이벤트에 대한 신청은 거부
            } else {
                result = true; // 다른 이벤트에 대한 신청은 허용
            }
        }

        Map<String, Boolean> response = new HashMap<>();
        response.put("result", result);
        return response;
    }

}
