package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.FilterWord;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FilterWordDAOImpl implements FilterWordDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public FilterWord FilterWordDetail(String word) throws Exception {
        return sqlSession.selectOne("filterWord.filterWordDetail", word);
    }
}
