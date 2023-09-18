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
    public ModelAndView commentInsert(Comment comment, HttpServletRequest request, Model model) throws Exception {
        HttpSession session = request.getSession();
        comment.setAuthor((String) session.getAttribute("sid"));
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

        // 다른 컨트롤러(CommunityController)의 페이지로 redirect하기
        ModelAndView mav = new ModelAndView();
        mav.setView(new RedirectView(request.getContextPath() + "/community/getCommunity.do"));
        return mav;
    }

}
