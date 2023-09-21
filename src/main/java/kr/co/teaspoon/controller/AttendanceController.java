package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Attendance;
import kr.co.teaspoon.service.AttendanceService;
import kr.co.teaspoon.util.CalendarInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/attendance/*")
public class AttendanceController {

    @Autowired
    HttpSession session;

    @Autowired
    AttendanceService attendanceService;

    @GetMapping("attendance.do")
    public String attendanceCheck(HttpServletRequest request, Model model) throws Exception {
        String id = (String) session.getAttribute("sid");

        List<String> attendanceList = attendanceService.attendanceList(id);
        boolean attendChk = attendanceService.isAttendance(id);

        CalendarInfo calendarInfo = new CalendarInfo();
        calendarInfo.setCalendar();

        model.addAttribute("list", attendanceList);
        model.addAttribute("attendChk", attendChk);         // 오늘 출석체크 했는지 체크
        model.addAttribute("calendarInfo", calendarInfo);

        return "/attendance/attendanceCheck";
    }

    @GetMapping("addAttend.do")
    public String addAttend(HttpServletRequest request, Model model) throws Exception {
        String id = (String) session.getAttribute("sid");
        if(!attendanceService.isAttendance(id)) {
            attendanceService.addAttend(id);
        }

        return "redirect:/attendance/attendance.do";
    }
}
