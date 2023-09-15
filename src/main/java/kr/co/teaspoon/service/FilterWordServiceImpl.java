package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.FilterWordDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FilterWordServiceImpl implements FilterWordService {

    @Autowired
    private FilterWordDAO filterWordDAO;

    @Override
    public boolean wordCheck(String word) throws Exception {
        return filterWordDAO.FilterWordDetail(word) == null ? true : false;
    }

}
