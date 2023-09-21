package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.QnaDAO;
import kr.co.teaspoon.dto.Qna;
import kr.co.teaspoon.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class QnaServiceImpl implements QnaService{

    @Autowired
    private QnaDAO qnaDAO;

    @Override
    public List<Qna> qnaList(Page page) throws Exception {
        return qnaDAO.qnaList(page);
    }

    @Override
    public List<Qna> noAnswerList(Page page) throws Exception {
        return qnaDAO.noAnswerList(page);
    }

    @Override
    public int noAnswerCount() throws Exception {
        return qnaDAO.noAnswerCount();
    }

    @Override
    public Qna qnaDetail(int qno) throws Exception {
        return qnaDAO.qnaDetail(qno);
    }

    @Override
    public int getCount(Page page) throws Exception {
        return qnaDAO.getCount(page);
    }

    @Override
    public int noAnswerCount(Page page) throws Exception {
        return qnaDAO.noAnswerCount(page);
    }

    @Override
    @Transactional
    public void questionInsert(Qna dto) throws Exception {
        qnaDAO.questionInsert(dto);
        qnaDAO.parUpdate(dto);
    }

    @Override
    public void answerInsert(Qna dto) throws Exception {
        qnaDAO.answerInsert(dto);
    }

    @Override
    public void qnaDelete(int qno) throws Exception {
        qnaDAO.qnaDelete(qno);
    }

    @Override
    public void qnaEdit(Qna dto) throws Exception {
        qnaDAO.qnaEdit(dto);
    }
}
