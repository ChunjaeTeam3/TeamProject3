package kr.co.teaspoon.service;

import kr.co.teaspoon.dto.Notice;
import kr.co.teaspoon.util.Page;

import java.util.List;

public interface NoticeService {
    public List<Notice> noticeList(Page page) throws Exception;
    public List<Notice> noticeListLimit() throws Exception;
    public int getCount(Page page) throws Exception;
    public Notice noticeDetail(int seq) throws Exception;
    public void noticeInsert(Notice notice) throws Exception;
    public void noticeDelete(int seq) throws Exception;
    public void noticeEdit(Notice notice) throws Exception;
}