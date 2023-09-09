package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Board;
import kr.co.teaspoon.service.BoardService;
import kr.co.teaspoon.service.BoardServiceImpl;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/board/*")
public class BoardController {

    @Autowired
    private BoardService boardService;

    @GetMapping("list.do")		//board/list.do
    public String getBoardList(Model model) throws Exception {
        List<Board> boardList = boardService.boardList();
        model.addAttribute("boardList", boardList);
        return "/board/boardList";
    }

    @GetMapping("detail.do")	//board/detail.do?seq=1
    public String getBoardDetail(HttpServletRequest request, Model model) throws Exception {
        int seq = Integer.parseInt(request.getParameter("seq"));
        Board dto = boardService.boardDetail(seq);
        model.addAttribute("dto", dto);
        return "/board/boardDetail";
    }

    @GetMapping("insert.do")
    public String insertForm(HttpServletRequest request, Model model) throws Exception {
        return "/board/boardInsert";
    }

    @PostMapping("insert.do")
    public String boardInsert(HttpServletRequest request, Model model) throws Exception {
        Board dto = new Board();
        dto.setTitle(request.getParameter("title"));
        dto.setContent(request.getParameter("content"));
        boardService.boardInsert(dto);
        return "redirect:list.do";
    }

    @GetMapping("delete.do")
    public String boardDelete(HttpServletRequest request, Model model) throws Exception {
        int seq = Integer.parseInt(request.getParameter("seq"));
        boardService.boardDelete(seq);
        return "redirect:list.do";
    }

    @GetMapping("edit.do")
    public String editForm(HttpServletRequest request, Model model) throws Exception {
        int seq = Integer.parseInt(request.getParameter("seq"));
        Board dto = boardService.boardDetail(seq);
        model.addAttribute("dto", dto);
        return "board/boardEdit";
    }

    @PostMapping("edit.do")
    public String boardEdit(HttpServletRequest request, Model model) throws Exception {
        int seq = Integer.parseInt(request.getParameter("seq"));
        Board dto = new Board();
        dto.setSeq(seq);
        dto.setTitle(request.getParameter("title"));
        dto.setContent(request.getParameter("content"));
        boardService.boardEdit(dto);
        return "redirect:list.do";
    }
}
