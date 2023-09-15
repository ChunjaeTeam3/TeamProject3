package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Fileboard;

import java.util.List;

public interface FileboardDAO {
    public void writeArticle(Fileboard fileboardDto) throws Exception;
    public void fileRegister(Fileboard fileboardDto) throws Exception;
    public List<Fileboard> fileList() throws Exception;
    public Fileboard fileDetail(int articleno) throws Exception;

    public void fileboardDelete(int articleno) throws Exception;
    public void fileboardEdit(Fileboard dto) throws Exception;
}
