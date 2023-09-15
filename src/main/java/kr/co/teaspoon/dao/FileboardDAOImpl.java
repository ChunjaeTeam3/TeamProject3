package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Fileboard;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class FileboardDAOImpl implements FileboardDAO{
    @Autowired
    private SqlSession sqlSession;

    @Override
    public void writeArticle(Fileboard fileboardDto) throws Exception {
        sqlSession.insert("fileboard.writeArticle", fileboardDto);
    }

    @Override
    public void fileRegister(Fileboard fileboardDto) throws Exception {
        sqlSession.insert("fileboard.fileRegister", fileboardDto);
    }

    @Override
    public List<Fileboard> fileList() throws Exception {
        return sqlSession.selectList("fileboard.fileboardList");
    }

    @Override
    public Fileboard fileDetail(int articleno) throws Exception {
        return sqlSession.selectOne("fileboard.fileboardDetail", articleno);
    }

    @Override
    public void fileboardDelete(int articleno) throws Exception {
        sqlSession.delete("fileboard.fileboardDelete", articleno);
    }

    @Override
    public void fileboardEdit(Fileboard dto) throws Exception {
        sqlSession.update("fileboard.fileboardEdit",dto );
    }
}
