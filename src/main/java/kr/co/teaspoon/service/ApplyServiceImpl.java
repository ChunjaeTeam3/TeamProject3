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
    public Apply getApply(String id, int eno) throws Exception {
        return applyDAO.getApply(id,eno);
    }

    @Override
    public boolean appCheck(String id, int eno) throws Exception {
        Apply apply = applyDAO.getApply(id,eno);

        if (apply!= null && apply.getEno() == eno) {
            return false;
        }

        return true;
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

    @Override
    public int applyCnt() throws Exception {
        return applyDAO.applyCnt();
    }
}
