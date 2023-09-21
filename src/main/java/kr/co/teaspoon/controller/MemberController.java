package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Member;
import kr.co.teaspoon.service.MemberService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.Cookie;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/member/*")
public class MemberController {

    @Autowired
    private MemberService memberService;

    @Autowired
    HttpSession session;

    BCryptPasswordEncoder pwEncoder = new BCryptPasswordEncoder();

    @RequestMapping("term.do")
    public String term(Model model) {
        return "/member/term";
    }

    @RequestMapping("join.do")
    public String join(Model model) {
        return "/member/join";
    }

    @RequestMapping(value="join.do", method=RequestMethod.POST)
    public String joinPro(ServletRequest request, ServletResponse response, Model model) throws Exception {
        Member member = new Member();
        String ppw = request.getParameter("pw");
        String pw = pwEncoder.encode(ppw);
        member.setId(request.getParameter("id"));
        member.setPw(pw);
        member.setName(request.getParameter("name"));
        member.setEmail(request.getParameter("email"));
        member.setTel(request.getParameter("tel"));
        member.setAddr1(request.getParameter("addr1"));
        member.setAddr2(request.getParameter("addr2"));
        member.setPostcode(request.getParameter("postcode"));
        member.setBirth(request.getParameter("birth"));
        memberService.memberInsert(member);

        return "/member/login";
    }

    @RequestMapping(value = "idCheck.do", method = RequestMethod.POST)
    public void idCheck(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String id = request.getParameter("id");
        boolean result = memberService.idCheck(id);

        JSONObject json = new JSONObject();
        json.put("result", result);
        PrintWriter out = response.getWriter();
        out.println(json.toString());
    }

    @RequestMapping("login.do")
    public String memberLoginForm(Model model) throws Exception {
        return "/member/login";
    }
    @RequestMapping("login2.do")
    public String memberLoginForm2(Model model) throws Exception {
        return "/member/loginmypage";
    }
    @RequestMapping(value = "loginpro.do", method = RequestMethod.POST)
    public String memberLogin(@RequestParam String id, @RequestParam String pw, HttpServletResponse response, HttpServletRequest request, Model model) throws Exception {
        boolean ps = memberService.loginCheck(id, pw);
        String saveId = request.getParameter("saveId");
        
        // 로그인 성공 시 쿠키에 아이디 기억하기
        Cookie cookie = new Cookie("userID", id);
        if(ps && saveId != null) {
            response.addCookie(cookie);
        } else if(ps && saveId == null) {           // '아이디 기억하기' 체크 해제한 경우
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
        
        // 로그인 성공 시
        if(ps){
            session.setAttribute("sid", id);
            memberService.updateVisited(id);
            return "redirect:/";
        } else {
            return "redirect:login.do";
        }
    }

    @RequestMapping(value = "loginpro2.do", method = RequestMethod.POST)
    public String memberLogin2(HttpSession session, @RequestParam String pw, Model model) throws Exception {
        String id = (String) session.getAttribute("sid");
        boolean ps = memberService.loginCheck(id, pw);
        if(ps){
            session.setAttribute("sid", id);
            return "redirect:mypage.do";
        } else {
            return "redirect:login2.do";
        }
    }

    @GetMapping("logout.do")
    public String memberLogout(HttpSession session) throws Exception {
        session.invalidate();
        return "redirect:/";
    }

    @GetMapping("myInfo.do")
    public String myInfo(Model model) throws Exception {
        String id = (String) session.getAttribute("sid");
        Member member = memberService.getMember(id);
        model.addAttribute("member", member);
        return "/member/myInfo";
    }

    @GetMapping("mypage.do")
    public String mypage(Model model) throws Exception {
        String id = (String) session.getAttribute("sid");
        Member member = memberService.getMember(id);
        model.addAttribute("member", member);
        return "/member/mypage";
    }
    @RequestMapping(value="update.do", method=RequestMethod.POST)
    public String memberUpdate(Member member, Model model) throws Exception {
        String pwd = "";
        if(member.getPw().length()<=16) {
            pwd = pwEncoder.encode(member.getPw());
            member.setPw(pwd);
        }
        memberService.memberEdit(member);
        return "redirect:/";
    }

    @RequestMapping(value="delete.do", method = RequestMethod.GET)
    public String memberDelete(@RequestParam String id, Model model, HttpSession session) throws Exception {
        memberService.memberDelete(id);
        session.invalidate();
        return "redirect:/";
    }

    @RequestMapping(value="list.do", method = RequestMethod.GET)
    public String memberList(Model model) throws Exception {
        List<Member> memberList = memberService.memberList();
        model.addAttribute("memberList", memberList);

        return "/member/memberList";
    }
}
