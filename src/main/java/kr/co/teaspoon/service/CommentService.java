package kr.co.teaspoon.service;

import kr.co.teaspoon.dto.Comment;
import kr.co.teaspoon.util.CommunityPage;

import java.util.List;

public interface CommentService {
    public List<Comment> commentList(CommunityPage page) throws Exception;
    public int getCount(int cno) throws Exception;
    public void commentInsert(Comment dto) throws Exception;
    public void communityDelete(int comNo) throws Exception;
}
