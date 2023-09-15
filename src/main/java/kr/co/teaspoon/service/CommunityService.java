package kr.co.teaspoon.service;

import kr.co.teaspoon.dto.Category;
import kr.co.teaspoon.dto.Community;
import kr.co.teaspoon.dto.CommunityVO;
import kr.co.teaspoon.util.CommunityPage;
import kr.co.teaspoon.util.Page;

import java.util.List;

public interface CommunityService {
    public List<CommunityVO> communityList(CommunityPage page) throws Exception;
    public List<Category> categoryList() throws Exception;
    public int getCount(Page page) throws Exception;
    public CommunityVO communityDetail(int cno) throws Exception;
    public void communityInsert(Community dto) throws Exception;
    public void communityDelete(int cno) throws Exception;
    public void communityEdit(Community dto) throws Exception;

}
