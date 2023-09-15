package kr.co.teaspoon.dto;

import lombok.Data;

@Data
public class Comment {
    private int comNo;
    private int cno;
    private String author;
    private String resdate;
    private String content;
}
