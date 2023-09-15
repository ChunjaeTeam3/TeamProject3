package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.FileInfoDAO;
import kr.co.teaspoon.dto.FileInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FileInfoServiceImpl implements FileInfoService {
    @Autowired
    private FileInfoDAO FileInfoDAO;
    @Override
    public FileInfo fileInfoDetail(int articleno) throws Exception {
        return FileInfoDAO.fileInfoDetail(articleno);
    }

    @Override
    public void fileInfoEdit(FileInfo dto) throws Exception {
        FileInfoDAO.fileInfoEdit(dto);
    }
}
