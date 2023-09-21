package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.EventDAO;
import kr.co.teaspoon.dto.Event;
import kr.co.teaspoon.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EventServiceImpl implements EventService {

    @Autowired
    private EventDAO eventDAO;

    @Override
    public List<Event> eventList(Page page) throws Exception {
        return eventDAO.eventList(page);
    }

    @Override
    public Event eventDetail(int eno) throws Exception {
        return eventDAO.eventDetail(eno);
    }

    @Override
    public int getCount(Page page) throws Exception {
        return eventDAO.getCount(page);
    }

    @Override
    public void eventInsert(Event event) throws Exception {
        eventDAO.eventInsert(event);
    }

    @Override
    public void eventDelete(int eno) throws Exception {
        eventDAO.eventDelete(eno);
    }

    @Override
    public void eventEdit(Event event) throws Exception {
        eventDAO.eventEdit(event);
    }

    @Override
    public List<Event> ongoingEvents() throws Exception {
        return eventDAO.ongoingEvents();
    }
}
