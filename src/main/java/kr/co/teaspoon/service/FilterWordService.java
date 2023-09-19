package kr.co.teaspoon.service;

import kr.co.teaspoon.dto.CommunityVO;
import kr.co.teaspoon.dto.FilterWord;
import kr.co.teaspoon.util.FilterPage;
import kr.co.teaspoon.util.Page;

import java.util.List;

public interface FilterWordService {

    public List<FilterWord> filterList(Page page) throws Exception;
    public int getCount() throws Exception;
    public List<CommunityVO> badList(FilterPage page) throws Exception;
    public int getCountBadList() throws Exception;
    public boolean filterInsert(String word) throws Exception;
    public void filterDelete(int fno) throws Exception;

}
