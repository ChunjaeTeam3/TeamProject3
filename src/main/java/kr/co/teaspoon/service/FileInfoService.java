package kr.co.teaspoon.service;

import kr.co.teaspoon.dto.FileInfo;

public interface FileInfoService {
    public FileInfo fileInfoDetail(int articleno) throws Exception;
    public void fileInfoEdit(FileInfo dto) throws Exception;
}
