package kr.co.teaspoon.controller;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

@Controller
@RequestMapping("/news/*")
public class NewsController {

    private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
    public static HashMap<String, String> map;

    @RequestMapping(value = "list.do", method = RequestMethod.GET)
    public String startCrawl(Model model) throws IOException {
        int page = 1;
        ArrayList<String> al1 = new ArrayList<>();
        ArrayList<String> al2 = new ArrayList<>();
        ArrayList<String> al3 = new ArrayList<>();
        ArrayList<String> al4 = new ArrayList<>();
        ArrayList<String> al5 = new ArrayList<>();

        while (page < 20) {
            String address = "https://www.hangyo.com/news/section_list_all.html?sec_no=1648&page=" + Integer.toString(page); //크롤링하고 싶은 페이지
            Document rawData = Jsoup.connect(address).timeout(5000).get();

            Elements newsItems = rawData.select("li"); //li태그 안에 있는 요소를 크롤링
            String realURL = "";
            String realTitle = "";
            String realContent = "";
            String realregdate = "";
            String img = "";
            for (Element option : newsItems) {
                realURL = "https://www.hangyo.com" + option.select("a").attr("href"); //a태그
                realTitle = option.select("h2").text();//h2태그
                realContent = option.select("p").text();//p태그
                realregdate = option.select("em").text();//em태그 안의 요소를 크롤링한다
                img = option.select("img").attr("src");
                al1.add(realURL);
                al2.add(realTitle);
                al3.add(realContent);
                al4.add(realregdate);
                al5.add(img);
            }
            page += 10;
        }
        model.addAttribute("urls", al1);
        model.addAttribute("titles", al2);
        model.addAttribute("contents", al3);
        model.addAttribute("regdates", al4);
        model.addAttribute("img",al5);

        return "/news/newsList";
    }
}