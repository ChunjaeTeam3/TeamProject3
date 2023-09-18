package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Apply;
import kr.co.teaspoon.dto.WinnerList;
import kr.co.teaspoon.util.Page;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class WinnerListDAOImpl implements WinnerListDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public void random(WinnerList dto) throws Exception {
        sqlSession.insert("winnerList.random",dto);
    }

    @Override
    public List<Apply> applyList(int eno) throws Exception {
        return sqlSession.selectList("winnerList.applyList", eno);
    }

    @Override
    public List<WinnerList> winnerList(int eno) throws Exception {
        return sqlSession.selectList("winnerList.winnerList", eno);
    }

    @Override
    public int applyCount(Page page) throws Exception {
        return sqlSession.selectOne("winnerList.applyCount", page);
    }
}
