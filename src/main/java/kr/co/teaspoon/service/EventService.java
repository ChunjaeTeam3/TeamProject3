package kr.co.teaspoon.service;

import kr.co.teaspoon.dto.Event;
import kr.co.teaspoon.util.Page;

import java.util.List;

public interface EventService {
    public List<Event> eventList(Page page) throws Exception;
    public Event eventDetail(int eno) throws Exception;
    public int getCount(Page page) throws Exception;
    public void eventInsert(Event event) throws Exception;
    public void eventDelete(int eno) throws Exception;
    public void eventEdit(Event event) throws Exception;
}
