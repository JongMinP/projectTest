package namoo.social.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import namoo.social.dao.UserDao;
import namoo.social.entity.User;
import namoo.social.entity.UserToUser;

@Service
public class UserServiceLogic implements UserService {

	@Autowired
	private UserDao store;

	@Override
	public int register(User user) {

		return store.createUser(user);
	}

	@Override
	public User readUser(String id) {

		return store.retrieveUser(id);
	}

	@Override
	public List<User> findUsersByToUser(String toUserId) {

		return store.retrieveUsersByToUser(toUserId);
	}

	@Override
	public List<User> findUsersByToUser(String toUserId, String searchText) {

		return store.retrieveUsersByToUser(toUserId, searchText);
	}

	@Override
	public int deleteUserToUser(UserToUser userToUser) {

		return store.deleteUserToUser(userToUser);
	}

	@Override
	public int insertUserToUser(UserToUser userToUser) {

		return store.createUserToUser(userToUser);
	}

	@Override
	public List<User> findUsersByFromUser(String fromUserId) {

		return store.retrieveUsersByFromUser(fromUserId);
	}

	@Override
	public List<User> findUsersByFromUser(String fromUserId, String searchText) {

		return store.retrieveUsersByFromUser(fromUserId, searchText);
	}

	@Override
	public int servicecountOfRelatedUsersByToUser(String toUserId) {

		return store.countOfRelatedUsersByToUser(toUserId);
	}

	@Override
	public int serviceCountOfRelatedUsersByFromUser(String fromUserId) {

		return store.countOfRelatedUsersByFromUser(fromUserId);
	}

}
