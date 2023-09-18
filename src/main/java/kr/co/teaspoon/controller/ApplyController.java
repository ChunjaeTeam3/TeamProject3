package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Apply;
import kr.co.teaspoon.dto.Event;
import kr.co.teaspoon.service.ApplyService;
import kr.co.teaspoon.service.EventService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

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
    public void appCheck(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String id = request.getParameter("id");
        boolean result = applyService.appCheck(id);

        JSONObject json = new JSONObject();
        json.put("result", result);
        PrintWriter out = response.getWriter();
        out.println(json.toString());
    }
}
