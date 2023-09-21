package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Qna;
import kr.co.teaspoon.util.Page;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class QnaDAOImpl implements QnaDAO{
    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<Qna> qnaList(Page page) throws Exception {
        return sqlSession.selectList("qna.qnaList",page);
    }

    @Override
    public List<Qna> noAnswerList(Page page) throws Exception {
        return sqlSession.selectList("qna.noAnswerList", page);
    }

    @Override
    public Qna qnaDetail(int qno) throws Exception {
        return sqlSession.selectOne("qna.qnaDetail", qno);
    }

    @Override
    public int getCount(Page page) throws Exception {
        return sqlSession.selectOne("qna.getCount",page);
    }

    @Override
    public int noAnswerCount(Page page) throws Exception {
        return sqlSession.selectOne("qna.noAnswerCount", page);
    }

    @Override
    public int noAnswerCount() throws Exception {           // 관리자 페이지에서 사용
        return sqlSession.selectOne("qna.noAnswerCount");
    }

    @Override
    public void questionInsert(Qna dto) throws Exception {
        sqlSession.insert("qna.questionInsert", dto);
    }

    @Override
    public void parUpdate(Qna dto) throws Exception {
        sqlSession.update("qna.parUpdate", dto);
    }

    @Override
    public void answerInsert(Qna dto) throws Exception {
        sqlSession.insert("qna.answerInsert",dto);
    }

    @Override
    public void qnaDelete(int qno) throws Exception {
        sqlSession.delete("qna.qnaDelete",qno);
    }

    @Override
    public void qnaEdit(Qna dto) throws Exception {
        sqlSession.update("qna.qnaEdit",dto);
    }
}
