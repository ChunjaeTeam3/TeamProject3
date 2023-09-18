package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.WinnerListDAO;
import kr.co.teaspoon.dto.Apply;
import kr.co.teaspoon.dto.WinnerList;
import kr.co.teaspoon.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WinnerListServiceImpl implements WinnerListService{
    @Autowired
    private WinnerListDAO winnerListDAO;

    @Override
    public void random(WinnerList dto) throws Exception {
        winnerListDAO.random(dto);
    }

    @Override
    public List<Apply> applyList(int eno) throws Exception {
        return winnerListDAO.applyList(eno);
    }

    @Override
    public List<WinnerList> winnerList(int eno) throws Exception {
        return winnerListDAO.winnerList(eno);
    }

    @Override
    public int applyCount(Page page) throws Exception {
        return winnerListDAO.applyCount(page);
    }
}
