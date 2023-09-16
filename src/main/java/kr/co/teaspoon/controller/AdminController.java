package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.CommunityVO;
import kr.co.teaspoon.dto.FilterWord;
import kr.co.teaspoon.service.FilterWordService;
import kr.co.teaspoon.util.FilterPage;
import kr.co.teaspoon.dto.Qna;
import kr.co.teaspoon.service.FilterWordService;
import kr.co.teaspoon.service.QnaService;
import kr.co.teaspoon.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

    // 필터링 단어 추가 페이지 로딩
    @RequestMapping(value="filterInsert.do", method= RequestMethod.GET)
    public String filterInsertGet(HttpServletRequest request, Model model) throws Exception {
        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

        // 필터링 단어 목록 페이징 처리
        Page page = new Page();
        int total = filterWordService.getCount();
        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);
        
        List<FilterWord> filterList = filterWordService.filterList(page);
        model.addAttribute("filterList", filterList);
        model.addAttribute("page", page);
        model.addAttribute("curPage", curPage);

        return "/admin/filterInsert";
    }

    // 필터링 단어 추가
    @RequestMapping(value="filterInsert.do", method= RequestMethod.POST)
    public String filterInsertGet(@RequestParam String word, Model model) throws Exception {
        filterWordService.filterInsert(word);
        return "redirect:/admin/filterInsert.do";
    }

    // 필터링 단어 삭제
    @GetMapping("filterDelete.do")
    public String filterDelete(@RequestParam int fno, Model model) throws Exception {
        filterWordService.filterDelete(fno);
        return "redirect:/admin/filterInsert.do";
    }

    // 커뮤니티 관리 페이지 로딩
    @RequestMapping("communityMgmt.do")
    public String communityMgmt(HttpServletRequest request, Model model) throws Exception {
        int curPage = request.getParameter("page") != null ?Integer.parseInt(request.getParameter("page")) : 1;

        FilterPage page = new FilterPage();
        int total = filterWordService.getCountBadList();
        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);

        List<CommunityVO> communityList = filterWordService.badList(page);
        model.addAttribute("list", communityList);
        model.addAttribute("page", page);
        model.addAttribute("curPage", curPage);

        return "/admin/communityMgmt";
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
        List<Qna> noAnswerList = qnaService.noAnswerList();
        model.addAttribute("noAnswerList", noAnswerList);     //QnA 목록
        return "/admin/noAnswerList";
    }

}
