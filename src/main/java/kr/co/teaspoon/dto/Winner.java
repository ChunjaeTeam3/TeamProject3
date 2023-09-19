package kr.co.teaspoon.dto;

import lombok.Data;

@Data
public class Winner {
    private int wno;
    private int eno;
    private String title;
    private String content;
    private String author;
    private String resdate;
}