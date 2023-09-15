package kr.co.teaspoon.controller;

import kr.co.teaspoon.service.FilterWordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

    @Autowired
    private FilterWordService filterWordService;

    @RequestMapping("filterInsert.do")
    public String filterInsertGet(@RequestParam String word, Model model) throws Exception {
//        boolean wordCheck = filterWordService.filterInsert(word);

        return "/admin/filterInsert";
    }

}
