package kr.co.teaspoon.dto;

import lombok.*;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Faq {
    private int fno;
    private String question;
    private String answer;
    private int cnt;
}
