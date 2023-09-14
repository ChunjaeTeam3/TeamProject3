package kr.co.teaspoon.controller;


import kr.co.teaspoon.dto.Qna;
import kr.co.teaspoon.service.QnaService;
import org.dom4j.rule.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/qna/*")
public class QnaController {

    @Autowired
    private QnaService qnaService;

    //QnA 목록
    @GetMapping("list.do")
    public String getQnaList(Model model) throws Exception {
        List<Qna> qnaList = qnaService.qnaList();
        model.addAttribute("qnaList", qnaList);
        return "/qna/qnaList";
    }

    //QnA 상세보기
    @GetMapping("detail.do")
    public String getQnaDetail(HttpServletRequest request, Model model) throws Exception {
        int qno = Integer.parseInt(request.getParameter("qno"));
        Qna dto = qnaService.qnaDetail(qno);
        model.addAttribute("dto", dto);
        return "/qna/qnaDetail";
    }

    //Question 글 쓰기
    @GetMapping("questionInsert.do")
    public String getQuestionInsert(Model model) throws Exception {
        return "/qna/questionInsert";
    }

    //Question 글쓰기 처리
    @PostMapping("questionInsert.do")
    public String getQuestionInsertPro(HttpServletRequest request, Model model) throws Exception {
        Qna dto = new Qna();
        dto.setTitle(request.getParameter("title"));
        dto.setContent(request.getParameter("content"));
        qnaService.questionInsert(dto);
        return "redirect:list.do";
    }

    //Question 수정
    @GetMapping("edit.do")
    public String getQnaEdit(HttpServletRequest request, Model model) throws Exception {
        int qno = Integer.parseInt(request.getParameter("qno"));
        Qna dto = qnaService.qnaDetail(qno);
        model.addAttribute("dto", dto);
        return "/qna/qnaEdit";
    }
    //Question 수정처리
    @PostMapping("edit.do")
    public String getQnaEditPro(HttpServletRequest request, Model model) throws Exception {
        int qno = Integer.parseInt(request.getParameter("qno"));
        Qna dto = new Qna();
        dto.setQno(qno);
        dto.setTitle(request.getParameter("title"));
        dto.setContent(request.getParameter("content"));
        qnaService.qnaEdit(dto);
        return "redirect:list.do";
    }

    //QnA 삭제
    @GetMapping("delete.do")
    public String getQnaDelete(HttpServletRequest request, Model model) throws Exception {
        int qno = Integer.parseInt(request.getParameter("qno"));
        qnaService.qnaDelete(qno);
        return "redirect:list.do";
    }

    //답변 등록
    @GetMapping("answerInsert.do")
    public String getAnswerInsert(HttpServletRequest request, Model model) throws Exception {
        int qno = Integer.parseInt(request.getParameter("qno"));
        Qna dto = qnaService.qnaDetail(qno);
        model.addAttribute("dto", dto);
        return "/qna/answerInsert";
    }

    //답변 등록 처리
    @PostMapping("answerInsert.do")
    public String getAnswerInsertPro(HttpServletRequest request, Model model) throws Exception {
        Qna dto = new Qna();
        dto.setTitle(request.getParameter("title"));
        dto.setContent(request.getParameter("content"));
        dto.setPar(Integer.parseInt(request.getParameter("par")));
        qnaService.answerInsert(dto);
        return "redirect:list.do";
    }
}
