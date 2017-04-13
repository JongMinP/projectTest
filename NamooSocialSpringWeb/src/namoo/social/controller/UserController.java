package namoo.social.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import namoo.social.entity.User;
import namoo.social.entity.UserToUser;
import namoo.social.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	private UserService service;

	@RequestMapping("log.do")
	public String loginPage(Model model) {

		return "user/login";
	}

	@RequestMapping("login.do")
	public String loginComfirm(User user, Model model, HttpServletRequest req) {

		User loginedUser = service.readUser(user.getId());
		if (user.getPassword().equals(loginedUser.getPassword())) {

			HttpSession session = req.getSession();
			session.setAttribute("loginedUser", loginedUser);

			int followingNumber = service.servicecountOfRelatedUsersByToUser(user.getId());
			int followerNumber = service.serviceCountOfRelatedUsersByFromUser(user.getId());

			session.setAttribute("followingNumber", followingNumber);
			session.setAttribute("followerNumber", followerNumber);

			return "redirect:/message/messageList.do";
		} else {
			HttpSession session = req.getSession(false);
			session.invalidate();
			return "redirect:/user/log.do";
		}

	}

	@RequestMapping("join.do")
	public String join() {

		return "user/join";

	}

	@RequestMapping("joinPermition.do")
	public String joinPermition(User user, Model model) {

		User userCofirm = service.readUser(user.getId());

		if (!userCofirm.getId().equals(user.getId())) {

			if (service.register(user) > 0) {

				return "common/info";
			}
		}

		System.out.println("아이디가 중복 됩니다.");

		return "redirect:/user/join.do";
	}

	@RequestMapping("logout.do")
	public String logout(HttpServletRequest req) {

		req.getSession().invalidate();

		return "redirect:/user/log.do";
	}

	@RequestMapping("followingList.do")
	public String findFollowingList(Model model, HttpServletRequest req) {

		HttpSession session = req.getSession(false); // 있으면 가져다 써라
		User user = (User) session.getAttribute("loginedUser");

		List<User> users = service.findUsersByToUser(user.getId());

		model.addAttribute("users", users);

		return "user/followingList";

	}

	@RequestMapping("followingDelete.do")
	public String deleteFollowing(User id, Model model, HttpServletRequest req) {

		UserToUser userToUser = new UserToUser();
		HttpSession session = req.getSession(false);

		User toUser = (User) session.getAttribute("loginedUser");

		userToUser.setFromUser(id); // 팔로잉
		userToUser.setToUser(toUser); // 나

		service.deleteUserToUser(userToUser);

		return "redirect:/user/followingList.do";

	}

	@RequestMapping("followingSearch.do")
	public String findFollowingSearch(@RequestParam("search") String search, Model model, HttpServletRequest req) {

		HttpSession session = req.getSession(false);

		User toUser = (User) session.getAttribute("loginedUser");

		List<User> users = service.findUsersByToUser(toUser.getId(), search);

		model.addAttribute("users", users);

		return "user/followingList";
	}

	@RequestMapping("followerList.do")
	public String findFollowerList(Model model, HttpServletRequest req) {

		HttpSession session = req.getSession(false);

		User user = (User) session.getAttribute("loginedUser");

		List<User> users = service.findUsersByFromUser(user.getId());

		model.addAttribute("users", users);

		return "user/followerList";
	}

	@RequestMapping("followerSearch.do")
	public String findFollowerSearch(@RequestParam("search") String search, Model model, HttpServletRequest req) {

		HttpSession session = req.getSession(false);

		User user = (User) session.getAttribute("loginedUser");

		List<User> users = service.findUsersByFromUser(user.getId(), search);

		model.addAttribute("users", users);

		return "user/followerList";

	}

}
