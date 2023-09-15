package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.FilterWordDAO;
import kr.co.teaspoon.dto.FilterWord;
import kr.co.teaspoon.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FilterWordServiceImpl implements FilterWordService {

    @Autowired
    private FilterWordDAO filterWordDAO;

    @Override
    public List<FilterWord> filterList(Page page) throws Exception {
        return filterWordDAO.filterList(page);
    }

    @Override
    public int getcount() throws Exception {
        return filterWordDAO.getCount();
    }

    @Override
    public boolean filterInsert(String word) throws Exception {
        boolean result = false;
        if (filterWordDAO.filterWordDetail(word) == null) {
            filterWordDAO.filterInsert(word);
            result = true;
        }
        return result;
    }

    @Override
    public void filterDelete(int fno) throws Exception {
        filterWordDAO.filterDelete(fno);
    }
}
