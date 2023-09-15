package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Member;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public Member getMember(String id) {
        return sqlSession.selectOne("member.getMember", id);
    }

    @Override
    public void memberInsert(Member member) {
        sqlSession.insert("member.memberInsert", member);
    }

    @Override
    public Member loginCheck(String id) throws Exception { return sqlSession.selectOne("member.loginCheck", id); }

    @Override
    public void memberEdit(Member member) { sqlSession.update("member.memberEdit", member); }

    @Override
    public void memberDelete(String id) throws Exception { sqlSession.delete("member.memberDelete", id); }
}
