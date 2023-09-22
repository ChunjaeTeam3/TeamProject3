package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.AttendanceDAO;
import kr.co.teaspoon.dao.MemberDAO;
import kr.co.teaspoon.dto.MemberPtVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

@Service
public class AttendanceServiceImpl implements AttendanceService {

    @Autowired
    private AttendanceDAO attendanceDAO;

    @Autowired
    private MemberDAO memberDAO;

    @Override
    public List<String> attendanceList(String id) throws Exception {
        return attendanceDAO.attendanceList(id);
    }

    @Override
    public boolean isAttendance(String id) throws Exception {
        boolean result = false;
        if(attendanceDAO.getAttendance(id) != null) {
            result = true;
        }
        return result;
    }

    @Override
    public int addAttend(String id) throws Exception {
        attendanceDAO.addAttend(id);

        // 랜덤 포인트 (10~100)
        Random random = new Random();
        int point = (int) (random.nextInt(10) + 1) * 10;
        MemberPtVO ranPoint = new MemberPtVO(id, point);
        memberDAO.updatePt(ranPoint);

        System.out.println("point : " + point);
        return point;
    }

}
