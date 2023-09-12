package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.CommunityDAO;
import kr.co.teaspoon.dto.Community;
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
    public List<Community> communityList(int curPage, String category) throws Exception {
        Page page = new CommunityPage();
        int total = communityDAO.getCount();
        // 페이징에 필요한 데이터 저장
        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);
        page.setDbStartNum();
        // 카테고리 데이터 저장
        page.setC

//        System.out.println(communityDAO.communityList(page).toString());
        return communityDAO.communityList(page);
    }

    @Override
    public Community communityDetail(int cno) throws Exception {
        return null;
    }

    @Override
    public void communityInsert(Community dto) throws Exception {

    }

    @Override
    public void communityDelete(int cno) throws Exception {

    }

    @Override
    public void communityEdit(Community dto) throws Exception {

    }
}
