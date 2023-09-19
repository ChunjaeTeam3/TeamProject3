package kr.co.teaspoon.controller;


import kr.co.teaspoon.dto.*;


import kr.co.teaspoon.service.*;
import kr.co.teaspoon.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.HTML;
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
    private QnaService qnaService;
    @Autowired
    private WinnerService winnerService;

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

    @GetMapping("questionList.do")
    public String getNoAnswerList(HttpServletRequest request, Model model) throws Exception {
        //Page
        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

        Page page = new Page();

        int total = qnaService.noAnswerCount(page);

        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);
        model.addAttribute("curPage", curPage);     // 현재 페이지
        model.addAttribute("page", page);           // 페이징 데이터

        //QnaList
        List<Qna> noAnswerList = qnaService.noAnswerList(page);
        model.addAttribute("noAnswerList", noAnswerList);     //QnA 목록
        return "/admin/noAnswerList";
    }

    //이벤트 참여자 리스트
    @GetMapping("applyList.do")
    public String applyList(HttpServletRequest request, Model model) throws Exception {
        int eno = Integer.parseInt(request.getParameter("eno"));
        //WinnerList
        List<Apply> applyList = winnerService.applyList(eno);
        model.addAttribute("applyList", applyList);
        model.addAttribute("eno", eno);
        return "/admin/applyList";
    }

    //5명 추첨
    @GetMapping("winners.do")
    public String winners(HttpServletRequest request, Model model) throws Exception {
        int eno = Integer.parseInt(request.getParameter("eno"));

        List<WinnerList> winners = winnerService.winners(eno);
        model.addAttribute("winners", winners);
        model.addAttribute("eno", eno);
        return "/admin/winners";
    }

    //당발 글쓰기
    @GetMapping("winnerInsert.do")
    public String winnerInsert(HttpServletRequest request, Model model) throws Exception {
        int eno = Integer.parseInt(request.getParameter("eno"));
        List<WinnerList> winners = winnerService.winners(eno);
        Event event = eventService.eventDetail(eno);
        model.addAttribute("winners", winners);
        model.addAttribute("event", event);
        return "/admin/winnerInsert";
    }

    @PostMapping("winnerInsert.do")
    public String getWinnerInsertPro(HttpServletRequest request, Model model) throws Exception {
        HttpSession session = request.getSession();
        Winner dto = new Winner();
        dto.setEno(Integer.parseInt(request.getParameter("eno")));
        dto.setTitle(request.getParameter("title"));
        dto.setContent(request.getParameter("content"));
        dto.setAuthor((String) session.getAttribute("sid"));
        winnerService.winnerInsert(dto);
        return "redirect:/winner/list.do";
    }



}


