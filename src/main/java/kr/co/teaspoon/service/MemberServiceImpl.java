package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.MemberDAO;
import kr.co.teaspoon.dto.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberDAO memberDAO;

    BCryptPasswordEncoder pwEncoder = new BCryptPasswordEncoder();

    @Override
    public Member getMember(String id) {
        return memberDAO.getMember(id);
    }

    @Override
    public boolean idCheck(String id) {
        return memberDAO.getMember(id) == null ? true : false;
    }

    @Override
    public void memberInsert(Member member) {
        memberDAO.memberInsert(member);
    }

    @Override
    public boolean loginCheck(String id, String pw) throws Exception {
        boolean comp = false;
        Member member = memberDAO.loginCheck(id);
        boolean loginSuccess = pwEncoder.matches(pw, member.getPw());
        if(member!=null && loginSuccess){
            comp = true;
        } else {
            comp = false;
        }
        return comp;
    }

    @Override
    public void memberEdit(Member member) throws Exception{ memberDAO.memberEdit(member); }

    @Override
    public void memberDelete(String id) throws Exception { memberDAO.memberDelete(id);}
}
