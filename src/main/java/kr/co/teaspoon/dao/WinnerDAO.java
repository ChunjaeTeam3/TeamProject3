package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Apply;
import kr.co.teaspoon.dto.Winner;
import kr.co.teaspoon.dto.WinnerList;
import kr.co.teaspoon.util.Page;

import java.util.List;

public interface WinnerDAO {
    public List<Apply> applyList(int eno) throws Exception;
    public void random(int eno) throws Exception;
    //당첨자 리스트
    public List<WinnerList> winners(int eno) throws Exception;
    public void closeEvent(int eno) throws Exception;
    //당첨자 발표 게시글 목록
    public List<Winner> winnerList (Page page) throws Exception;
    public int winnerListCount(Page page) throws Exception;
    public Winner winnerDetail(int wno) throws Exception;
    public void winnerInsert(Winner dto) throws Exception;
    public void winnerUpdate(Winner dto) throws Exception;
    public void winnerDelete(int wno) throws Exception;

}
