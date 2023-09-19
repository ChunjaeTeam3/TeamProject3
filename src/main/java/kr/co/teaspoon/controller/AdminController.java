package kr.co.teaspoon.controller;


import kr.co.teaspoon.dto.Event;


import kr.co.teaspoon.dto.Fileboard;
import kr.co.teaspoon.dto.Qna;
import kr.co.teaspoon.service.*;
import kr.co.teaspoon.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

    @Autowired
    HttpSession session;
    @Autowired
    private FileboardService fileboardService;
    @Autowired
    private FileInfoService fileInfoService;
    @Autowired
    private MemberService memberService;
    @Autowired
    private FilterWordService filterWordService;

    @Autowired
    private EventService eventService;


    @RequestMapping("filterInsert.do")
    public String filterInsertGet(@RequestParam String word, Model model) throws Exception {
//        boolean wordCheck = filterWordService.filterInsert(word);

        return "/admin/filterInsert";
    }

    @RequestMapping("list.do")
    public String adminList(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "/admin/adminList";
    }
    @GetMapping("adminFileList.do")		//board/list.do
    public String getBoardList(Model model) throws Exception {
        List<Fileboard> fileboardList = fileboardService.fileList();
        model.addAttribute("fileboardList", fileboardList);
        return "/admin/adminFileboard";
    }


    @GetMapping("delete.do")
    public String noticeDelete(HttpServletRequest request, Model model) throws Exception {
        int articleno = Integer.parseInt(request.getParameter("articleno"));
        fileboardService.fileboardDelete(articleno);
        return "redirect:adminList.do";
    }

    @GetMapping("adminEventList.do")
    public String getEventList(HttpServletRequest request, HttpServletResponse response,Model model) throws Exception {
        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

        Page page = new Page();

        // 페이징에 필요한 데이터 저장
        int total = eventService.getCount(page);
        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);

        List<Event> eventList = eventService.eventList(page);

        model.addAttribute("eventList", eventList);
        model.addAttribute("curPage", curPage);
        model.addAttribute("page", page);

        return "/admin/adminEventList";
    }
}


    @GetMapping("delete.do")
    public String noticeDelete(HttpServletRequest request, Model model) throws Exception {
        int articleno = Integer.parseInt(request.getParameter("articleno"));
        fileboardService.fileboardDelete(articleno);
        return "redirect:adminList.do";
    }

}


