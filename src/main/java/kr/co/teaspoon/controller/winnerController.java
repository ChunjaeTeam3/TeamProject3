package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Winner;
import kr.co.teaspoon.service.WinnerService;
import kr.co.teaspoon.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/winner/*")
public class winnerController {
    @Autowired
    HttpSession session;
    @Autowired
    private WinnerService winnerService;

    //당첨자 발표 게시글 목록
    @GetMapping("list.do")
    public String GetWinnerList(HttpServletRequest request, Model model) throws Exception {
        //Page
        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

        Page page = new Page();

        //페이징에 필요한 데이터 저장
        int total = winnerService.winnerListCount(page);
        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);

        List<Winner> winnerList = winnerService.winnerList(page);
        model.addAttribute("winnerList",winnerList);
        model.addAttribute("curPage", curPage);     // 현재 페이지
        model.addAttribute("page", page);           // 페이징 데이터
        return "/winner/winnerList";
    }

    //당첨자발표 상세보기
    @GetMapping("detail.do")
    public String getWinnerDetail(HttpServletRequest request, Model model) throws Exception {
        int wno = Integer.parseInt(request.getParameter("wno"));
        Winner dto = winnerService.winnerDetail(wno);
        model.addAttribute("dto", dto);
        return "/winner/winnerDetail";
    }
    //당발 글 삭제
    @GetMapping("delete.do")
    public String getWinnerDelete(HttpServletRequest request, Model model) throws Exception {
        int wno = Integer.parseInt(request.getParameter("wno"));
        winnerService.winnerDelete(wno);
        return "redirect:list.do";
    }
}
