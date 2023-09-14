package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Faq;
import kr.co.teaspoon.dto.Notice;
import kr.co.teaspoon.util.Page;

import java.util.List;

public interface FaqDAO {
    public List<Faq> faqList(Page page) throws Exception;
    public int getCount(Page page) throws Exception;
}
