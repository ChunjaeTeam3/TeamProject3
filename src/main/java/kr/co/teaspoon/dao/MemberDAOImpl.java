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
}
