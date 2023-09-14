package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.MemberDAO;
import kr.co.teaspoon.dto.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberDAO memberDAO;

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
}
