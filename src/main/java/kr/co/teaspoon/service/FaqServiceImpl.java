package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.FaqDAO;
import kr.co.teaspoon.dto.Faq;
import kr.co.teaspoon.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FaqServiceImpl implements FaqService {

    @Autowired
    private FaqDAO faqDAO;

    @Override
    public List<Faq> faqList(Page page) throws Exception {
        return faqDAO.faqList(page);
    }

    @Override
    public int getCount(Page page) throws Exception {
        return faqDAO.getCount(page);
    }
}
