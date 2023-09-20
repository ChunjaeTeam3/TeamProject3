package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.*;
import kr.co.teaspoon.service.*;
import kr.co.teaspoon.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

    @Autowired
    HttpSession session;
    @Autowired
    private FileboardService fileboardService;
    @Autowired
    private FileInfoService fileInfoService;
    @Autowired
    private MemberService memberService;
    @Autowired
    private FilterWordService filterWordService;

    @Autowired
    private WinnerService winnerService;

    @Autowired
    private CommunityService communityService;

    @Autowired
    private QnaService qnaService;

    @Autowired
    private EventService eventService;

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

    // 커뮤니티 삭제
    @RequestMapping("communityDelete.do")
    public String communityDelete(@RequestParam int cno, HttpServletRequest request, Model model) throws Exception {
        int curPage = request.getParameter("page") != null ?Integer.parseInt(request.getParameter("page")) : 1;
        communityService.communityDelete(cno);
        model.addAttribute("curPage", curPage);
        return "redirect:/admin/communityMgmt.do";
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
@RequestMapping("list.do")
    public String adminList(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "/admin/adminList";
    }

    @GetMapping("adminFileList.do")		//board/list.do
    public String getBoardList(Model model) throws Exception {
        List<Fileboard> fileboardList = fileboardService.fileList();
        model.addAttribute("fileboardList", fileboardList);
        return "/admin/adminFileboard";
    }


    @GetMapping("delete.do")
    public String noticeDelete(HttpServletRequest request, Model model) throws Exception {
        int articleno = Integer.parseInt(request.getParameter("articleno"));
        fileboardService.fileboardDelete(articleno);
        return "redirect:adminList.do";
    }

    @GetMapping("adminEventList.do")
    public String getEventList(HttpServletRequest request, HttpServletResponse response,Model model) throws Exception {
        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

        Page page = new Page();

        // 페이징에 필요한 데이터 저장
        int total = eventService.getCount(page);
        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);

        List<Event> eventList = eventService.eventList(page);

        model.addAttribute("eventList", eventList);
        model.addAttribute("curPage", curPage);
        model.addAttribute("page", page);


        return "/admin/adminEventList";
    }

     @GetMapping("adminMemberList.do")
    public String adminMemberList(Model model) throws Exception {
        List<Member> memberList = memberService.memberList();
        model.addAttribute("memberList", memberList);
        return "/admin/adminMemberList";
    }

    @RequestMapping(value="memberDelete.do", method = RequestMethod.GET)
    public String memberDelete(@RequestParam String id, Model model, HttpSession session) throws Exception {
        memberService.memberDelete(id);
        session.invalidate();
        return "/admin/adminMemberList";
    }

    //이벤트 참여자 리스트
    @GetMapping("applyList.do")
    public String applyList(HttpServletRequest request, Model model) throws Exception {
        int eno = Integer.parseInt(request.getParameter("eno"));
        //WinnerList
        List<Apply> applyList = winnerService.applyList(eno);
        model.addAttribute("applyList", applyList);
        model.addAttribute("eno", eno);
        return "/admin/applyList";
    }

    //5명 추첨
    @GetMapping("winners.do")
    public String winners(HttpServletRequest request, Model model) throws Exception {
        int eno = Integer.parseInt(request.getParameter("eno"));

        List<WinnerList> winners = winnerService.winners(eno);
        model.addAttribute("winners", winners);
        model.addAttribute("eno", eno);
        return "/admin/winners";
    }

    //당발 글쓰기
    @GetMapping("winnerInsert.do")
    public String winnerInsert(HttpServletRequest request, Model model) throws Exception {
        int eno = Integer.parseInt(request.getParameter("eno"));
        List<WinnerList> winners = winnerService.winners(eno);
        for(WinnerList winner : winners) {
            String name = winner.getName();
            String firstName = name.substring(0,1);
            String lastName = name.substring(2,3);
            name = firstName+"*"+lastName;

            String id = winner.getId();
            String hiddenid = id.substring(0,4);
            id = hiddenid+"***";

            winner.setName(name);
            winner.setId(id);
        }
        Event event = eventService.eventDetail(eno);
        model.addAttribute("winners", winners);
        model.addAttribute("event", event);

        return "/admin/winnerInsert";
    }

    @PostMapping("winnerInsert.do")
    public String getWinnerInsertPro(HttpServletRequest request, Model model) throws Exception {
        HttpSession session = request.getSession();
        Winner dto = new Winner();
        dto.setEno(Integer.parseInt(request.getParameter("eno")));
        dto.setTitle(request.getParameter("title"));
        dto.setContent(request.getParameter("content"));
        dto.setAuthor((String) session.getAttribute("sid"));
        winnerService.winnerInsert(dto);


        return "redirect:/winner/list.do";
    }
}




