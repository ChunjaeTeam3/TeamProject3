package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Notice;
import kr.co.teaspoon.service.NoticeService;
import kr.co.teaspoon.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {

    @Autowired
    private NoticeService noticeService;

    @GetMapping("list.do")
    private String NoticeList(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {

        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

        Page page = new Page();
        page.setKeyword(request.getParameter("keyword"));       // 검색 키워드 SET
        page.setType(request.getParameter("type"));             // 검색 타입 SET

        // 페이징에 필요한 데이터 저장
        int total = noticeService.getCount(page);
        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);

        List<Notice> noticeList = noticeService.noticeList(page);

        model.addAttribute("noticeList", noticeList);          // 공지사항 목록
        model.addAttribute("curPage", curPage);             // 현재 페이지
        model.addAttribute("page", page);                   // 페이징 데이터

        return "/notice/noticeList";
    }

    @GetMapping("detail.do")	//notice/detail.do?seq=1
    public String getNoticeDetail(HttpServletRequest request, Model model) throws Exception {
        int seq = Integer.parseInt(request.getParameter("seq"));
        Notice notice = noticeService.noticeDetail(seq);
        model.addAttribute("notice", notice);
        return "/notice/noticeDetail";
    }

    @GetMapping("insert.do")
    public String insertForm(HttpServletRequest request, Model model) throws Exception {
        return "/notice/noticeInsert";
    }

    @PostMapping("insert.do")
    public String noticeInsert(HttpServletRequest request, Model model) throws Exception {
        Notice notice = new Notice();
        notice.setTitle(request.getParameter("title"));
        notice.setContent(request.getParameter("content"));
        noticeService.noticeInsert(notice);
        return "redirect:list.do";
    }

    @GetMapping("delete.do")
    public String noticeDelete(HttpServletRequest request, Model model) throws Exception {
        int seq = Integer.parseInt(request.getParameter("seq"));
        noticeService.noticeDelete(seq);
        return "redirect:list.do";
    }

    @GetMapping("edit.do")
    public String editForm(HttpServletRequest request, Model model) throws Exception {
        int seq = Integer.parseInt(request.getParameter("seq"));
        Notice notice = noticeService.noticeDetail(seq);
        model.addAttribute("notice", notice);
        return "/notice/noticeEdit";
    }

    @PostMapping("edit.do")
    public String noticeEdit(HttpServletRequest request, Model model) throws Exception {
        int seq = Integer.parseInt(request.getParameter("seq"));
        Notice notice = new Notice();
        notice.setSeq(seq);
        notice.setTitle(request.getParameter("title"));
        notice.setContent(request.getParameter("content"));
        noticeService.noticeEdit(notice);
        return "redirect:list.do";
    }
}
