package kr.co.teaspoon.service;

import kr.co.teaspoon.dto.Qna;
import kr.co.teaspoon.util.Page;

import java.util.List;

public interface QnaService {

    public List<Qna> qnaList(Page page) throws Exception;
    public List<Qna> noAnswerList(Page page) throws Exception;
    public Qna qnaDetail(int qno) throws Exception;
    public int getCount(Page page) throws Exception;
    public int noAnswerCount(Page page) throws Exception;
    public int noAnswerCount() throws Exception;                // 관리자페이지에서 사용
    public void questionInsert(Qna dto) throws Exception;
    public void answerInsert(Qna dto) throws Exception;
    public void qnaDelete(int qno) throws Exception;
    public void qnaEdit(Qna dto) throws Exception;


}
