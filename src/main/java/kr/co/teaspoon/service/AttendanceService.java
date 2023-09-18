package kr.co.teaspoon.service;

import kr.co.teaspoon.dto.Attendance;

import java.util.List;

public interface AttendanceService {
    public List<String> attendanceList(String id) throws Exception;
    public boolean isAttendance(String id) throws Exception;
    public void addAttend(String id) throws Exception;
}
