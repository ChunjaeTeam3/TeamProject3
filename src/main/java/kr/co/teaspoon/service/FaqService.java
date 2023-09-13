package kr.co.teaspoon.service;

import kr.co.teaspoon.dto.Faq;
import kr.co.teaspoon.util.Page;

import java.util.List;

public interface FaqService {
    public List<Faq> faqList(Page page) throws Exception;
    public int getCount(Page page) throws Exception;
}
