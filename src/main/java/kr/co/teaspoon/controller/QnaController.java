package kr.co.teaspoon.controller;


import kr.co.teaspoon.dto.Qna;
import kr.co.teaspoon.service.QnaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/qna/*")
public class QnaController {

    @Autowired
    private QnaService qnaService;

    @GetMapping("list.do")
    public String getQnaList(Model model) throws Exception {
        List<Qna> qnaList = qnaService.qnaList();
        model.addAttribute("qnaList", qnaList);
        return "/qna/qnaList";
    }

    @GetMapping("detail.do")
    public String getQnaDetail(HttpServletRequest request, Model model) throws Exception {
        int qno = Integer.parseInt(request.getParameter("qno"));
        Qna dto = qnaService.qnaDetail(qno);
        model.addAttribute("dto", dto);
        return "/qna/qnaDetail";
    }

    @GetMapping("insert.do")
    public String getQuestionInsert(Model model) throws Exception {
        return "/qna/questionInsert";
    }

    @PostMapping("insert.do")
    public String getQuestionInsertPro(HttpServletRequest request, Model model) throws Exception {
        Qna dto = new Qna();
        dto.setTitle(request.getParameter("title"));
        dto.setContent(request.getParameter("content"));
        qnaService.questionInsert(dto);
        return "redirect:list.do";
    }

    @GetMapping("edit.do")
    public String getQnaEdit(HttpServletRequest request, Model model) throws Exception {
        int qno = Integer.parseInt(request.getParameter("qno"));
        Qna dto = qnaService.qnaDetail(qno);
        model.addAttribute("dto", dto);
        return "/qna/qnaEdit";
    }


}
