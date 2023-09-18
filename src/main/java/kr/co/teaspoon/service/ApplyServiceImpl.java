package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.ApplyDAO;
import kr.co.teaspoon.dto.Apply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ApplyServiceImpl implements ApplyService{

    @Autowired
    private ApplyDAO applyDAO;

    @Override
    public Apply getApply(String id) throws Exception {
        return applyDAO.getApply(id);
    }

    @Override
    public boolean appCheck(String id) throws Exception {
        return applyDAO.getApply(id) ==null ? true : false;
    }

    @Override
    public int getCount(int appno) throws Exception {
        return applyDAO.getCount(appno);
    }

    @Override
    public void applyInsert(Apply apply) throws Exception {
        applyDAO.applyInsert(apply);
    }

    @Override
    public void applyDelete(int appno) throws Exception {
        applyDAO.applyDelete(appno);
    }
}
