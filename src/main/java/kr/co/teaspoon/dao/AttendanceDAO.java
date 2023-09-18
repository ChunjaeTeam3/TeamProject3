package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Attendance;

import java.util.List;

public interface AttendanceDAO {
    public List<String> attendanceList(String id) throws Exception;
    public Attendance getAttendance(String id) throws Exception;
    public void addAttend(String id) throws Exception;
}
