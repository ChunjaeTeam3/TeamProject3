package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Apply;
import kr.co.teaspoon.dto.Winner;
import kr.co.teaspoon.dto.WinnerList;
import kr.co.teaspoon.util.Page;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class WinnerDAOImpl implements WinnerDAO{
    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<Apply> applyList(int eno) throws Exception {
        return sqlSession.selectList("winner.applyList", eno);
    }

    @Override
    public void random(int eno) throws Exception {
        sqlSession.insert("winner.random", eno);
    }

    @Override
    public List<WinnerList> winners(int eno) throws Exception {
        return sqlSession.selectList("winner.winners", eno);
    }

    @Override
    public void closeEvent(int eno) throws Exception {
        sqlSession.update("winner.closeEvent", eno);
    }

    @Override
    public List<Winner> winnerList(Page page) throws Exception {
        return sqlSession.selectList("winner.winnerList", page);
    }

    @Override
    public int winnerListCount(Page page) throws Exception {
        return sqlSession.selectOne("winner.winnerListCount");
    }

    @Override
    public Winner winnerDetail(int wno) throws Exception {
        return sqlSession.selectOne("winner.winnerDetail", wno);
    }

    @Override
    public void winnerInsert(Winner dto) throws Exception {
        sqlSession.insert("winner.winnerInsert", dto);
    }

    @Override
    public void winnerUpdate(Winner dto) throws Exception {
        sqlSession.update("winner.winnerUpdate", dto);
    }

    @Override
    public void winnerDelete(int wno) throws Exception {
        sqlSession.delete("winner.winnerDelete", wno);
    }
}
