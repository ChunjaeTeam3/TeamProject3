package kr.co.teaspoon.service;

import kr.co.teaspoon.dto.Member;

public interface MemberService {

    public Member getMember(String id);
    public boolean idCheck(String id);
    public void memberInsert(Member member);
    public boolean loginCheck(String id, String pw) throws Exception;

}
