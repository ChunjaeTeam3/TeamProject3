package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.SampleDAO;
import kr.co.teaspoon.dao.SampleDAOImpl;
import kr.co.teaspoon.dto.Sample;

import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SampleServiceImpl implements SampleService{

    @Autowired
    private SampleDAO sampleDAO;

    public List<Sample> sampleList() throws Exception {
        return sampleDAO.sampleList();
    }

    @Override
    public Sample sampleDetail(int no) throws Exception {
        return sampleDAO.sampleDetail(no);
    }

    @Override
    public void sampleInsert(Sample sample) throws Exception {
        sampleDAO.sampleInsert(sample);
    }

    @Override
    public void sampleUpdate(Sample sample) throws Exception {
        sampleDAO.sampleUpdate(sample);
    }

    @Override
    public void sampleDelete(int no) throws Exception {
        sampleDAO.sampleDelete(no);
    }
}
