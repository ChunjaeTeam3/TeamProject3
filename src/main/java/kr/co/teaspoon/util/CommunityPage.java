package kr.co.teaspoon.util;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CommunityPage extends Page {
    private String category;            // 커뮤니티 페이징 시 필요
    private int cno;                    // 댓글 페이징 시 필요
}
