package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.WinnerDAO;
import kr.co.teaspoon.dto.Apply;
import kr.co.teaspoon.dto.Winner;
import kr.co.teaspoon.dto.WinnerList;
import kr.co.teaspoon.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class WinnerServiceImpl implements WinnerService{
    @Autowired
    private WinnerDAO winnerDAO;

    @Override
    public List<Apply> applyList(int eno) throws Exception {
        return winnerDAO.applyList(eno);
    }

    @Override
    @Transactional
    public List<WinnerList> winners(int eno) throws Exception {
        winnerDAO.random(eno);
        winnerDAO.closeEvent(eno);
        return winnerDAO.winners(eno);
    }

    @Override
    public List<Winner> winnerList(Page page) throws Exception {
        return winnerDAO.winnerList(page);
    }

    @Override
    public int winnerListCount(Page page) throws Exception {
        return winnerDAO.winnerListCount(page);
    }

    @Override
    public Winner winnerDetail(int wno) throws Exception {
        return winnerDAO.winnerDetail(wno);
    }

    @Override
    public void winnerInsert(Winner dto) throws Exception {
        winnerDAO.winnerInsert(dto);
    }

    @Override
    public void winnerUpdate(Winner dto) throws Exception {
        winnerDAO.winnerUpdate(dto);
    }

    @Override
    public void winnerDelete(int wno) throws Exception {
        winnerDAO.winnerDelete(wno);
    }
}
