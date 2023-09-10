package kr.co.teaspoon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

    @RequestMapping("/term.do")
    public String term(Model model) {
        return "/member/term";
    }

    @RequestMapping("/join.do")
    public String join(Model model) {
        return "/member/join";
    }

}
