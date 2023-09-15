package kr.co.teaspoon.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FileInfo {
    private int no; //첨부파일 첨부된 번호
    private int articleno; //자료실 글번호
    private String saveFolder; //저장된 폴더이름
    private String originFile; //실제 저장된 파일이름
    private String saveFile; //랜덤 이름 설정된 파일 이름
}
