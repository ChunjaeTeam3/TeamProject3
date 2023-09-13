package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.QnaDAO;
import kr.co.teaspoon.dto.Qna;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QnaServiceImpl implements QnaService{

    @Autowired
    private QnaDAO qnaDAO;

    @Override
    public List<Qna> qnaList() throws Exception {
        return qnaDAO.qnaList();
    }

    @Override
    public Qna qnaDetail(int qno) throws Exception {
        return qnaDAO.qnaDetail(qno);
    }

    @Override
    public void questionInsert(Qna dto) throws Exception {
        qnaDAO.questionInsert(dto);
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
