package kr.co.teaspoon.service;

import kr.co.teaspoon.dto.Fileboard;

import java.util.List;

public interface FileboardService {
    public void writeArticle(Fileboard FileboardDto) throws Exception;
    public void fileRegister(Fileboard FileboardDto) throws Exception;
    public List<Fileboard> fileList() throws Exception;
    public Fileboard fileDetail(int articleno) throws Exception;

    public void fileboardDelete(int articleno) throws Exception;
    public void fileboardEdit(Fileboard dto) throws Exception;
}
