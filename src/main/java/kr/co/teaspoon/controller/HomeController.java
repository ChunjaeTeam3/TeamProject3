package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Event;
import kr.co.teaspoon.dto.Notice;
import kr.co.teaspoon.service.EventService;
import kr.co.teaspoon.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

@Controller
public class HomeController {
    //http:localhost:8081/pro03_war => / => /WEB-INF/views/index.jsp

    @Autowired
    private NoticeService noticeService;

    @Autowired
    private EventService eventService;

    @RequestMapping("/")
    public String home(Locale locale, Model model) throws Exception {
        List<Notice> noticeList = noticeService.noticeListLimit();
        model.addAttribute("noticeList", noticeList);

        List<Event> eventList = eventService.ongoingEvents();
        model.addAttribute("eventList", eventList);

        return "/index";
    }
}
