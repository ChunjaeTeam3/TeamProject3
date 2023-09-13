package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Category;
import kr.co.teaspoon.dto.Community;
import kr.co.teaspoon.dto.CommunityVO;
import kr.co.teaspoon.service.CommunityService;
import kr.co.teaspoon.util.CommunityPage;
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
        model.addAttribute("detail", comm);
        model.addAttribute("page", request.getParameter("page"));
        model.addAttribute("curCategory", request.getParameter("cate"));
        model.addAttribute("type", request.getParameter("type"));
        model.addAttribute("keyword", request.getParameter("keyword"));
        return "/community/communityDetail";
    }

}
