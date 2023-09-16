package kr.co.teaspoon.service;


import kr.co.teaspoon.dao.FileboardDAO;
import kr.co.teaspoon.dto.Fileboard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class FileboardServiceImpl implements FileboardService {
    @Autowired
   private FileboardDAO fileboardDAO;

    @Override
    @Transactional
    public void writeArticle(Fileboard fileboardDto) throws Exception {
        if(fileboardDto.getTitle() == null || fileboardDto.getContent() == null) {
            throw new Exception();
        }
        fileboardDAO.writeArticle(fileboardDto);
        fileboardDAO.fileRegister(fileboardDto);
    }

    @Override
    public void fileRegister(Fileboard fileboardDto) throws Exception {
        fileboardDAO.fileRegister(fileboardDto );
    }

    @Override
    public List<Fileboard> fileList() throws Exception {
        return  fileboardDAO.fileList();
    }

    @Override
    public Fileboard fileDetail(int articleno) throws Exception {
        return  fileboardDAO.fileDetail(articleno);
    }

    @Override
    public void fileboardDelete(int articleno) throws Exception {
        fileboardDAO.fileboardDelete(articleno);
    }

    @Override
    public void fileboardEdit(Fileboard dto) throws Exception {
        fileboardDAO.fileboardEdit(dto);
    }
}
