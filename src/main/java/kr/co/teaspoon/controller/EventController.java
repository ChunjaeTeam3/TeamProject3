package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Winner;
import kr.co.teaspoon.dto.WinnerList;
import kr.co.teaspoon.service.WinnerService;
import org.dom4j.rule.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/event/*")
public class EventController {

    @Autowired
    private WinnerService winnerService;

    //당첨자발표 게시글 목록
    //당첨자 발표 게시글 상세보기
    //글쓰기

    //수정
    //삭제
}
