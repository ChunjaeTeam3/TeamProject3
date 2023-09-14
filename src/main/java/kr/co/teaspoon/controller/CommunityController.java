package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.*;
import kr.co.teaspoon.service.CommentService;
import kr.co.teaspoon.service.CommunityService;
import kr.co.teaspoon.util.CommentPage;
import kr.co.teaspoon.util.CommunityPage;
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
import java.util.List;

@Controller
@RequestMapping("/community/*")
public class CommunityController {

    @Autowired
    private CommunityService communityService;

    @Autowired
    private CommentService commentService;

    @GetMapping("list.do")
    private String communityList(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {

        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;
        String category = request.getParameter("cate");

        CommunityPage page = new CommunityPage();
        page.setCategory(category);                                // 카테고리 데이터 SET
        page.setKeyword(request.getParameter("keyword"));       // 검색 키워드 SET
        page.setType(request.getParameter("type"));             // 검색 타입 SET

        // 페이징에 필요한 데이터 저장
        int total = communityService.getCount(page);
        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);

        List<CommunityVO> communityList = communityService.communityList(page);
        List<Category> categories = communityService.categoryList();

        model.addAttribute("list", communityList);          // 게시글 목록
        model.addAttribute("categories", categories);       // 카테고리 목록
        model.addAttribute("curPage", curPage);             // 현재 페이지
        model.addAttribute("curCategory", category);        // 현재 카테고리
        model.addAttribute("page", page);                   // 페이징 데이터

        return "/community/communityList";
    }

    @GetMapping("getCommunity.do")
    public String communityDetail(HttpServletRequest request, Model model) throws Exception {
        CommunityVO comm = communityService.communityDetail(Integer.parseInt(request.getParameter("cno")));

        // 게시판 목록에서 사용자가 선택한 게시물이 속해있는 페이지
        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;
        // 댓글 목록의 페이지
        int commentPage = request.getParameter("commentPage") != null ? Integer.parseInt(request.getParameter("commentPage")) : 1;

        // 댓글 페이징 처리
        CommentPage page = new CommentPage();
        // 페이징에 필요한 데이터 저장
        int total = commentService.getCount(comm.getCno());
        page.setCno(comm.getCno());
        page.makeBlock(commentPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(commentPage, total);

        List<Comment> commentList = commentService.commentList(page);

        model.addAttribute("detail", comm);
        model.addAttribute("commentList", commentList);
        model.addAttribute("curPage", curPage);
        model.addAttribute("commentPage", commentPage);
        model.addAttribute("page", page);
        model.addAttribute("cate", request.getParameter("cate"));
        model.addAttribute("type", request.getParameter("type"));
        model.addAttribute("keyword", request.getParameter("keyword"));
        return "/community/communityDetail";
    }

    @GetMapping("insert.do")
    public String insertForm(HttpServletRequest request, Model model) throws Exception {
        List<Category> categories = communityService.categoryList();
        model.addAttribute("categories", categories);
        return "/community/communityInsert";
    }

    @PostMapping("insert.do")
    public String communityInsert(HttpServletRequest request, Model model) throws Exception {
        HttpSession session = request.getSession();
        Community community = new Community();
        community.setCate(request.getParameter("cate"));
        community.setTitle(request.getParameter("title"));
        community.setContent(request.getParameter("content"));
//        community.setAuthor((String) session.getAttribute("sid"));
        community.setAuthor("shin");
        communityService.communityInsert(community);
        return "redirect:list.do";
    }

    @GetMapping("edit.do")
    public String editForm(@RequestParam int cno, Model model) throws Exception {
        CommunityVO comm = communityService.communityDetail(cno);
        List<Category> categories = communityService.categoryList();
        model.addAttribute("detail", comm);
        model.addAttribute("categories", categories);
        return "/community/communityUpdate";
    }

    @PostMapping("edit.do")
    public String communityEdit(HttpServletRequest request, Model model) throws Exception {
        int cno = Integer.parseInt(request.getParameter("cno"));
        Community comm = new Community();
        comm.setCno(cno);
        comm.setCate(request.getParameter("cate"));
        comm.setTitle(request.getParameter("title"));
        comm.setContent(request.getParameter("content"));
        communityService.communityEdit(comm);
        return "redirect:list.do";
    }

    @GetMapping("delete.do")
    public String communityDelete(@RequestParam int cno, Model model) throws Exception {
        communityService.communityDelete(cno);
        return "redirect:list.do";
    }

}
