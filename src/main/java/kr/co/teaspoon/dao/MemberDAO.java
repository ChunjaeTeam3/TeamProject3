package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Member;

public interface MemberDAO {

    public Member getMember(String id);
    public void memberInsert(Member member);
    public Member loginCheck(String id) throws Exception;

}
