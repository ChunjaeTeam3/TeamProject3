package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.FilterWordDAO;
import kr.co.teaspoon.dto.CommunityVO;
import kr.co.teaspoon.dto.FilterWord;
import kr.co.teaspoon.util.FilterPage;
import kr.co.teaspoon.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Filter;

@Service
public class FilterWordServiceImpl implements FilterWordService {

    @Autowired
    private FilterWordDAO filterWordDAO;

    @Override
    public List<FilterWord> filterList(Page page) throws Exception {
        return filterWordDAO.filterList(page);
    }

    @Override
    public int getCount() throws Exception {
        return filterWordDAO.getCount();
    }

    @Override
    public List<CommunityVO> badList(FilterPage page) throws Exception {
        List<FilterWord> filterList = filterWordDAO.filterList();
        List<String> wordList = new ArrayList<>();
        for(FilterWord filter:filterList) {
            wordList.add(filter.getWord());
        }
        page.setList(wordList);
        return filterWordDAO.badList(page);
    }

    @Override
    public int getCountBadList() throws Exception {
        List<FilterWord> filterList = filterWordDAO.filterList();
        return filterWordDAO.getCountBadList(filterList);
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
