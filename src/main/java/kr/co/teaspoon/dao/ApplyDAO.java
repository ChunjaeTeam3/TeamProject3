package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Apply;
import kr.co.teaspoon.dto.Member;

public interface ApplyDAO {
    public Apply getApply (String id, int eno) throws Exception;
    public int getCount(int appno) throws Exception;
    public Apply appCheck(String id) throws Exception;
    public void applyInsert(Apply apply) throws Exception;
    public void applyDelete(int appno) throws Exception;
}
