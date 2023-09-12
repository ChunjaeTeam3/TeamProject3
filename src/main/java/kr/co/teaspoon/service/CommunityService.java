package kr.co.teaspoon.service;

import kr.co.teaspoon.dto.Board;
import kr.co.teaspoon.dto.Community;

import java.util.List;

public interface CommunityService {
    public List<Community> communityList(int curPage, String category) throws Exception;
    public Community communityDetail(int cno) throws Exception;
    public void communityInsert(Community dto) throws Exception;
    public void communityDelete(int cno) throws Exception;
    public void communityEdit(Community dto) throws Exception;

}
