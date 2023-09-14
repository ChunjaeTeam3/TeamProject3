package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Faq;
import kr.co.teaspoon.util.Page;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class FaqDAOImpl implements FaqDAO{

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<Faq> faqList(Page page) throws Exception {
        return sqlSession.selectList("faq.faqList", page);
    }

    @Override
    public int getCount(Page page) throws Exception {
        return sqlSession.selectOne("faq.getCount", page);
    }
}
