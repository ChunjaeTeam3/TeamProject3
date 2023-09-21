package kr.co.teaspoon.service;

import java.util.List;

public interface AttendanceService {
    public List<String> attendanceList(String id) throws Exception;
    public boolean isAttendance(String id) throws Exception;
    public int addAttend(String id) throws Exception;
}
