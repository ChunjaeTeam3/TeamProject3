package kr.co.teaspoon.service;


import kr.co.teaspoon.dto.Apply;
import kr.co.teaspoon.dto.WinnerList;
import kr.co.teaspoon.util.Page;

import java.util.List;

public interface WinnerListService {
    public void random(WinnerList dto) throws Exception;
    public List<Apply> applyList(int eno) throws Exception;
    public List<WinnerList> winnerList(int eno) throws Exception;
    public int applyCount(Page page) throws Exception;
}
