package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Apply;
import kr.co.teaspoon.dto.Member;

public interface ApplyDAO {
    public Apply getApply (String id) throws Exception;
    public int getCount(int appno) throws Exception;
    public void applyInsert(Apply apply) throws Exception;
    public void applyDelete(int appno) throws Exception;
}
