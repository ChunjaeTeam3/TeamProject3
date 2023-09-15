package kr.co.teaspoon.dto;

import lombok.Data;

@Data
public class Qna {
    private int qno;
    private String title;
    private String content;
    private String author;
    private String resdate;
    private int lev;
    private int par;
}
