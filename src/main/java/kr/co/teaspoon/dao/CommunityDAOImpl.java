package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Community;
import kr.co.teaspoon.util.Page;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class CommunityDAOImpl implements CommunityDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<Community> communityList(Page page) throws Exception {
        List<String> typeArr = new ArrayList<>();
        return sqlSession.selectList("community.communityList", page);
    }

    @Override
    public int getCount() throws Exception {
        return sqlSession.selectOne("community.getCount");
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
