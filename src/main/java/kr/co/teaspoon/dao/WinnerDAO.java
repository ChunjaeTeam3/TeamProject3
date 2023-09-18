package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Apply;
import kr.co.teaspoon.dto.Winner;
import kr.co.teaspoon.dto.WinnerList;
import kr.co.teaspoon.util.Page;

import java.util.List;

public interface WinnerDAO {
    public void random(int eno) throws Exception;
    public List<Apply> applyList(int eno) throws Exception;
    public List<WinnerList> winners(int eno) throws Exception;
    public int applyCount(Page page) throws Exception;
    public void winnerInsert(Winner dto) throws Exception;
}
