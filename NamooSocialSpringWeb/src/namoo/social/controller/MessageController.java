package namoo.social.controller;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import namoo.social.entity.Message;
import namoo.social.entity.User;
import namoo.social.service.MessageService;

@Controller
@RequestMapping("message")
public class MessageController {

	@Autowired
	private MessageService service;

	@RequestMapping("messageList.do")
	public String messageList(Model model, HttpServletRequest req) {

		HttpSession session = req.getSession(false);

		if (session == null || session.getAttribute("loginedUser") == null) {
			return "redirect:/user/log.do";
		}

		User user = (User) session.getAttribute("loginedUser");
		List<Message> list = service.readMessage(user.getId());
		List<Message> sortList = service.readMessage(user.getId());

		model.addAttribute("list", list);
		Collections.sort(sortList);

		model.addAttribute("sortList", sortList);

		return "message/messageList";

	}

	@RequestMapping("register.do")
	public String messageRegister(@RequestParam("contents") String contents, Model model, HttpServletRequest req) {

		Message message = new Message();
		HttpSession session = req.getSession(false);

		java.util.Date utilDate = new java.util.Date();
		Date sqlDate = new Date(utilDate.getTime());

		User user = (User) session.getAttribute("loginedUser");

		message.setContents(contents);
		message.setRegistDate(sqlDate);
		message.setWriterId(user.getId());

		System.out.println(message.toString());

		service.insert(message);

		return "redirect:/message/messageList.do";
	}

}
