package kr.co.teaspoon.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Fileboard {
    private int articleno; // 자료실 글 번호
    private String id; // 등록한 유저 아이디
    private String title; //제목
    private String content; //내용
    private String regdate; //등록일
    private List<FileInfo> fileInfos; //첨부된 파일 정보
}
