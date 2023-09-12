package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Board;
import kr.co.teaspoon.dto.Community;
import kr.co.teaspoon.util.Page;

import java.util.List;

public interface CommunityDAO {
    public List<Community> communityList(Page page) throws Exception;
    public int getCount() throws Exception;
    public Community communityDetail(int cno) throws Exception;
    public void communityInsert(Community dto) throws Exception;
    public void communityDelete(int cno) throws Exception;
    public void communityEdit(Community dto) throws Exception;

}
