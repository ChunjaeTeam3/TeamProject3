package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Apply;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class ApplyDAOImpl implements ApplyDAO{
    @Autowired
    private SqlSession sqlSession;

    @Override
    public Apply getApply(String id, int eno) throws Exception {
        Map<String, Object> apply = new HashMap<>();
        apply.put("id", id);
        apply.put("eno", eno);

        return sqlSession.selectOne("apply.getApply", apply);
    }

    @Override
    public int getCount(int appno) throws Exception {
        return sqlSession.selectOne("apply.getCount", appno);
    }

    @Override
    public Apply appCheck(String id) throws Exception {
        return sqlSession.selectOne("apply.appCheck", id);
    }

    @Override
    public void applyInsert(Apply apply) throws Exception {
        sqlSession.insert("apply.applyInsert", apply);
    }

    @Override
    public void applyDelete(int appno) throws Exception {
        sqlSession.delete("apply.applyDelete", appno);
    }

    @Override
    public int applyCnt() throws Exception {
        return sqlSession.selectOne("apply.applyCnt");
    }
}
