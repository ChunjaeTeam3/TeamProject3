package kr.co.teaspoon.service;

import kr.co.teaspoon.dto.Apply;

public interface ApplyService {
    public Apply getApply (String id, int eno) throws Exception;
    public boolean appCheck(String id, int eno) throws Exception;
    public int getCount(int appno) throws Exception;
    public void applyInsert(Apply apply) throws Exception;
    public void applyDelete(int appno) throws Exception;
    public int applyCnt() throws Exception;
}
