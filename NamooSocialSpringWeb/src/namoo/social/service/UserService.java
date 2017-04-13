package namoo.social.service;

import java.util.List;

import namoo.social.entity.User;
import namoo.social.entity.UserToUser;

public interface UserService {

	int register(User user); // 등록

	User readUser(String id); // 사용자 조회

	int insertUserToUser(UserToUser userToUser); // 팔로워 등록

	/**
	 * 내가 등록한 친구들 목록 조회 (팔로워 목록 조회)
	 * 
	 * @param fromUserId
	 *            사용자 아이디
	 * @return
	 */
	List<User> findUsersByFromUser(String fromUserId);

	/**
	 * 내가 등록한 친구들 목록 검색 (팔로워 검색)
	 * 
	 * @param fromUserId
	 *            사용자 아이디
	 * @param searchText
	 *            검색어
	 * @return
	 */
	List<User> findUsersByFromUser(String fromUserId, String searchText);

	/**
	 * 내가 등록한 친구들 수 조회 (팔로워 수 조회)
	 * 
	 * @param fromUserId
	 * @return
	 */
	int serviceCountOfRelatedUsersByFromUser(String fromUserId);

	/**
	 * 나를 등록한 친구들 목록 조회 (팔로잉 목록 조회)
	 * 
	 * @param toUserId
	 * @return
	 */
	List<User> findUsersByToUser(String toUserId);

	/**
	 * 나를 등록한 친구들 목록 검색 (팔로잉 검색)
	 * 
	 * @param toUserId
	 * @param searchText
	 * @return
	 */
	List<User> findUsersByToUser(String toUserId, String searchText);

	/**
	 * 나를 등록한 친구들 수 조회 (팔로잉 수 조회)
	 * 
	 * @param toUserId
	 * @return
	 */
	int servicecountOfRelatedUsersByToUser(String toUserId);

	/**
	 * 언팔로우
	 * 
	 * @param userToUser
	 * @return
	 */
	int deleteUserToUser(UserToUser userToUser);

}
