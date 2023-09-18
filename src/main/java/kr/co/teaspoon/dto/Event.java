package kr.co.teaspoon.dto;

import lombok.Data;

@Data
public class Event {
    private int eno;
    private String title;
    private String Content;
    private int status;
    private String sdate;
    private String edate;
    private String author;
    private String regdate;
    private int cnt;
}
