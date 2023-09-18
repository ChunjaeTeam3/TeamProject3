package kr.co.teaspoon.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Event {
    private int eno;
    private String title;
    private String content;
    private String status;
    private String sdate;
    private String edate;
    private String author;
    private String regdate;
    private int cnt;
}