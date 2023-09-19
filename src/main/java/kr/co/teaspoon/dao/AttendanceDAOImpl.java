package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Attendance;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AttendanceDAOImpl implements AttendanceDAO {

    @Autowired
    SqlSession sqlSession;

    @Override
    public List<String> attendanceList(String id) throws Exception {
        return sqlSession.selectList("attendance.attendanceList", id);
    }

    @Override
    public Attendance getAttendance(String id) throws Exception {
        return sqlSession.selectOne("attendance.getAttendance", id);
    }

    @Override
    public void addAttend(String id) throws Exception {
        sqlSession.insert("attendance.addAttend", id);
    }
}
