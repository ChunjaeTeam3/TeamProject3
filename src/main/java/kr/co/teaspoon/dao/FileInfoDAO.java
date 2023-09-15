package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.FileInfo;
import kr.co.teaspoon.dto.Fileboard;

public interface FileInfoDAO {
    public FileInfo fileInfoDetail(int articleno) throws Exception;
    public void fileInfoEdit(FileInfo dto) throws Exception;
}
