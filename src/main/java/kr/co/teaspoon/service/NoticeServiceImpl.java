package kr.co.teaspoon.service;
import java.util.List;

import kr.co.teaspoon.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.teaspoon.dao.NoticeDAO;
import kr.co.teaspoon.dto.Notice;

@Service
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    private NoticeDAO noticeDAO;

    @Override
    public List<Notice> noticeList(Page page) throws Exception {
        return noticeDAO.noticeList(page);
    }

    @Override
    public int getCount(Page page) throws Exception {
        return noticeDAO.getCount(page);
    }

    @Override
    public Notice noticeDetail(int seq) throws Exception {
        return noticeDAO.noticeDetail(seq);
    }

    @Override
    public void noticeInsert(Notice notice) throws Exception {
        noticeDAO.noticeInsert(notice);
    }

    @Override
    public void noticeDelete(int seq) throws Exception {
        noticeDAO.noticeDelete(seq);
    }

    @Override
    public void noticeEdit(Notice notice) throws Exception {
        noticeDAO.noticeEdit(notice);
    }
}
