package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Event;
import kr.co.teaspoon.util.Page;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class EventDAOImpl implements EventDAO{

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<Event> eventList(Page page) throws Exception {
        return sqlSession.selectList("event.eventList", page);
    }

    @Transactional
    @Override
    public Event eventDetail(int eno) throws Exception {
        sqlSession.update("event.updateCnt", eno);
        return sqlSession.selectOne("event.eventDetail", eno);
    }

    @Override
    public int getCount(Page page) throws Exception {
        return sqlSession.selectOne("event.getCount", page);
    }

    @Override
    public void eventInsert(Event event) throws Exception {
        sqlSession.insert("event.eventInsert", event);
    }

    @Override
    public void eventDelete(int eno) throws Exception {
        sqlSession.delete("event.eventDelete", eno);
    }

    @Override
    public void eventEdit(Event event) throws Exception {
        sqlSession.update("event.eventEdit", event);
    }

    @Override
    public List<Event> ongoingEvents() throws Exception {
        return sqlSession.selectList("event.ongoingEvents");
    }
}
