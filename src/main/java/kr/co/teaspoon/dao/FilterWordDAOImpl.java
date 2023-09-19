package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.CommunityVO;
import kr.co.teaspoon.dto.FilterWord;
import kr.co.teaspoon.util.FilterPage;
import kr.co.teaspoon.util.Page;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class FilterWordDAOImpl implements FilterWordDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<FilterWord> filterList(Page page) throws Exception {
        return sqlSession.selectList("filterWord.filterList", page);
    }

    @Override
    public List<FilterWord> filterList() throws Exception {
        return sqlSession.selectList("filterWord.allFilterList");
    }

    @Override
    public int getCount() throws Exception {
        return sqlSession.selectOne("filterWord.getCount");
    }

    @Override
    public List<CommunityVO> badList(FilterPage page) throws Exception {
        return sqlSession.selectList("filterWord.badList", page);
    }

    @Override
    public int getCountBadList(List<FilterWord> filterList) throws Exception {
        return sqlSession.selectOne("filterWord.getCountBadList", filterList);
    }

    @Override
    public FilterWord filterWordDetail(String word) throws Exception {
        return sqlSession.selectOne("filterWord.filterWordDetail", word);
    }

    @Override
    public void filterInsert(String word) throws Exception {
        sqlSession.insert("filterWord.filterInsert", word);
    }

    @Override
    public void filterDelete(int fno) throws Exception {
        sqlSession.delete("filterWord.filterDelete", fno);
    }
}
