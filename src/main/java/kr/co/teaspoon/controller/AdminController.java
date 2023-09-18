package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Apply;
import kr.co.teaspoon.dto.Qna;
import kr.co.teaspoon.dto.WinnerList;
import kr.co.teaspoon.service.FilterWordService;
import kr.co.teaspoon.service.QnaService;
import kr.co.teaspoon.service.WinnerListService;
import kr.co.teaspoon.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

    @Autowired
    private FilterWordService filterWordService;
    @Autowired
    private QnaService qnaService;
    @Autowired
    private WinnerListService winnerListService;

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
        List<Apply> applyList = winnerListService.applyList(eno);
        model.addAttribute("applyList", applyList);
        return "/admin/applyList";
    }

    @GetMapping("winners.do")
    public String winners(HttpServletRequest request, Model model) throws Exception {
        int eno = Integer.parseInt(request.getParameter("eno"));

        List<WinnerList> winners = winnerListService.winners(eno);
        model.addAttribute("winners", winners);
        return "/admin/winners";
    }


}
