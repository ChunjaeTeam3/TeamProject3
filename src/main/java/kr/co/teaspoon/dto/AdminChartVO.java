package kr.co.teaspoon.dto;

import lombok.Data;

@Data
public class AdminChartVO {
    private String label;
    private int memberCnt;
    private int attendCnt;
}
