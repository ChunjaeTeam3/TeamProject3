package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Comment;
import kr.co.teaspoon.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/comment/*")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @RequestMapping(value="insert.do", method= RequestMethod.POST)
    public ModelAndView commentInsert(HttpServletRequest request, Model model) throws Exception {
        HttpSession session = request.getSession();

        Comment comment = new Comment();
        comment.setCno(Integer.parseInt(request.getParameter("cno")));
        comment.setContent(request.getParameter("content"));
//        comment.setAuthor((String) session.getAttribute("sid"));
        comment.setAuthor("shin");
        commentService.commentInsert(comment);

        model.addAttribute("cno", request.getParameter("cno"));
        model.addAttribute("page", request.getParameter("page"));
        model.addAttribute("cate", request.getParameter("cate"));
        model.addAttribute("type", request.getParameter("type"));
        model.addAttribute("keyword", request.getParameter("keyword"));
        
        // 다른 컨트롤러(CommunityController)의 페이지로 redirect하기
        ModelAndView mav = new ModelAndView();
        mav.setView(new RedirectView(request.getContextPath() + "/community/getCommunity.do"));
        return mav;
    }

    @GetMapping("delete.do")
    public ModelAndView commentDelete(HttpServletRequest request, Model model) throws Exception {
        int comNo = Integer.parseInt(request.getParameter("comNo"));
        commentService.communityDelete(comNo);

        model.addAttribute("cno", request.getParameter("cno"));
        model.addAttribute("page", request.getParameter("page"));
        model.addAttribute("cate", request.getParameter("cate"));
        model.addAttribute("type", request.getParameter("type"));
        model.addAttribute("keyword", request.getParameter("keyword"));

        System.out.println(request.getParameter("type") + " " + request.getParameter("keyword"));

        // 다른 컨트롤러(CommunityController)의 페이지로 redirect하기
        ModelAndView mav = new ModelAndView();
        mav.setView(new RedirectView(request.getContextPath() + "/community/getCommunity.do"));
        return mav;
    }

}
