package namoo.social.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import namoo.social.dao.MessageDao;
import namoo.social.entity.Message;

@Service
public class MessageServiceLogic implements MessageService {

	@Autowired
	private MessageDao store;

	@Override
	public List<Message> readMessage(String writerId) {

		return store.retrieveMessage(writerId);
	}

	@Override
	public List<Message> readRelatedMessage(String id) {
		// TODO Auto-generated method stub
		return store.retrieveRelatedMessage(id);
	}

	@Override
	public int insert(Message message) {
		
		return store.create(message);
	}

}
