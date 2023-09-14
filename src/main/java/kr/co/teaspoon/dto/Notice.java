package kr.co.teaspoon.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Notice {
    private int seq;
    private String title;
    private String content;
    private String nickname;
    private String regdate;
    private int visited;
}
