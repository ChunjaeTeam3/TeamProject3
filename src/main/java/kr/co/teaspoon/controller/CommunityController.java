package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Community;
import kr.co.teaspoon.service.CommunityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/community/*")
public class CommunityController {

    @Autowired
    private CommunityService communityService;

    @GetMapping("list.do")
    private String getCommunityList(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {

        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;
        String category = request.getParameter("cate");

        List<Community> communityList = communityService.communityList(curPage, category);
        System.out.println(communityList.toString());
        model.addAttribute("list", communityList);

        return "/community/communityList";
    }

}
