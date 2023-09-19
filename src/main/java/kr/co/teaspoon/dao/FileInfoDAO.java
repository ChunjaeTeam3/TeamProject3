package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.FileInfo;
import kr.co.teaspoon.dto.Fileboard;

import java.util.List;

public interface FileInfoDAO {
    public List<FileInfo> fileInfoDetail(int articleno) throws Exception;
    public void fileInfoEdit(FileInfo dto) throws Exception;
    public List<FileInfo> fileInfoList(int articleno) throws Exception;
    public void fileInfoInsert(Fileboard fileboard) throws Exception;
    public void fileInfoDelete(int articleno) throws Exception;
}
