package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.CommunityDAO;
import kr.co.teaspoon.dto.Category;
import kr.co.teaspoon.dto.Community;
import kr.co.teaspoon.dto.CommunityVO;
import kr.co.teaspoon.util.CommunityPage;
import kr.co.teaspoon.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Array;
import java.util.ArrayList;
import java.util.List;

@Service
public class CommunityServiceImpl implements CommunityService {

    @Autowired
    private CommunityDAO communityDAO;

    @Override
    public List<CommunityVO> communityList(CommunityPage page) throws Exception {
        return communityDAO.communityList(page);
    }

    @Override
    public int getCount(Page page) throws Exception {
        return communityDAO.getCount(page);
    }

    @Override
    public List<Category> categoryList() throws Exception {
        return communityDAO.categeryList();
    }

    @Override
    public CommunityVO communityDetail(int cno) throws Exception {
        return communityDAO.communityDetail(cno);
    }

    @Override
    public void communityInsert(Community dto) throws Exception {
        communityDAO.communityInsert(dto);
    }

    @Override
    public void communityDelete(int cno) throws Exception {
        communityDAO.communityDelete(cno);
    }

    @Override
    public void communityEdit(Community dto) throws Exception {
        communityDAO.communityEdit(dto);
    }
}
