package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Apply;
import kr.co.teaspoon.dto.Qna;
import kr.co.teaspoon.dto.Winner;
import kr.co.teaspoon.dto.WinnerList;
import kr.co.teaspoon.service.FilterWordService;
import kr.co.teaspoon.service.QnaService;
import kr.co.teaspoon.service.WinnerService;
import kr.co.teaspoon.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

    @Autowired
    private FilterWordService filterWordService;
    @Autowired
    private QnaService qnaService;
    @Autowired
    private WinnerService winnerService;

    @RequestMapping("filterInsert.do")
    public String filterInsertGet(@RequestParam String word, Model model) throws Exception {
//        boolean wordCheck = filterWordService.filterInsert(word);

        return "/admin/filterInsert";
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
    @GetMapping("applyList.do")
    public String applyList(HttpServletRequest request, Model model) throws Exception {
        int eno = Integer.parseInt(request.getParameter("eno"));
        //WinnerList
        List<Apply> applyList = winnerService.applyList(eno);
        model.addAttribute("applyList", applyList);
        return "/admin/applyList";
    }

    @GetMapping("winners.do")
    public String winners(HttpServletRequest request, Model model) throws Exception {
        int eno = Integer.parseInt(request.getParameter("eno"));

        List<WinnerList> winners = winnerService.winners(eno);
        model.addAttribute("winners", winners);
        return "/admin/winners";
    }

    //글쓰기
    @GetMapping("winnerInsert.do")
    public String getWinnerInsert(Model model) throws Exception {
        return "/admin/winnerInsert";
    }
    //글쓰기 처리
    @PostMapping("winnerInsert.do")
    public String getWinnerInsertPro(HttpServletRequest request, Model model) throws Exception {
        HttpSession session = request.getSession();
        Winner dto = new Winner();
        dto.setTitle(request.getParameter("title"));
        dto.setContent(request.getParameter("content"));
        dto.setAuthor((String) session.getAttribute("sid"));
        List<WinnerList> winnerList = winnerService.winners(dto.getEno());
        model.addAttribute("winnerList", winnerList);
        return "/event/winners";
    }

}
