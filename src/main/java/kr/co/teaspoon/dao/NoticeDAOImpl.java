package kr.co.teaspoon.dao;
import java.util.List;

import kr.co.teaspoon.util.Page;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teaspoon.dto.Notice;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class NoticeDAOImpl implements NoticeDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<Notice> noticeList(Page page) throws Exception {
        return sqlSession.selectList("notice.noticeList", page);
    }

    @Override
    public int getCount(Page page) throws Exception {
        return sqlSession.selectOne("notice.getCount", page);
    }
    @Transactional
    @Override
    public Notice noticeDetail(int seq) throws Exception {
        sqlSession.update("notice.countUp", seq);
        return sqlSession.selectOne("notice.noticeDetail", seq);
    }

    @Override
    public void noticeInsert(Notice notice) throws Exception {
        sqlSession.insert("notice.noticeInsert", notice);
    }

    @Override
    public void noticeDelete(int seq) throws Exception {
        sqlSession.delete("notice.noticeDelete", seq);
    }

    @Override
    public void noticeEdit(Notice notice) throws Exception {
        sqlSession.update("notice.noticeEdit", notice);
    }
}
