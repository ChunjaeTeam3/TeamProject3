package kr.co.teaspoon.controller;

import kr.co.teaspoon.service.WinnerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/event/*")
public class EventController {

    @Autowired
    private WinnerService winnerService;

    //당첨자발표 게시글 목록
    //당첨자 발표 게시글 상세보기
    //수정
    //삭제
}
