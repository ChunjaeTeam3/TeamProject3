package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.FilterWord;
import kr.co.teaspoon.util.Page;

import java.util.List;

public interface FilterWordDAO {
    public List<FilterWord> filterList(Page page) throws Exception;
    public int getCount() throws Exception;
    public FilterWord filterWordDetail(String word) throws Exception;
    public void filterInsert(String word) throws Exception;
    public void filterDelete(int fno) throws  Exception;

}
