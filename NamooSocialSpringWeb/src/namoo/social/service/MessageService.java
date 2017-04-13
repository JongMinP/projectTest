package namoo.social.service;

import java.util.List;

import namoo.social.entity.Message;

public interface MessageService {

	public int insert(Message message);

	public List<Message> readMessage(String writerId); // 사용자 메세지

	public List<Message> readRelatedMessage(String id); // 팔로워 메세지

}
