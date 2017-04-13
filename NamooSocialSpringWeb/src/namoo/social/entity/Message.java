package namoo.social.entity;

import java.sql.Date;

public class Message implements Comparable<Message> {
	//
	private String id;
	private String contents;
	private String writerId;
	private Date registDate;

	public Message() {
	}

	public Message(String contents, String writerId, Date registDate) {
		//
		this.contents = contents;
		this.writerId = writerId;
		this.registDate = registDate;
	}

	public Message(String id, String contents, String writerId, Date registDate) {
		//
		this(contents, writerId, registDate);
		this.id = id;
	}

	@Override
	public String toString() {
		return "Message [id=" + id + ", contents=" + contents + ", writerId=" + writerId + ", registDate=" + registDate
				+ "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getWriterId() {
		return writerId;
	}

	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}

	public Date getRegistDate() {
		return registDate;
	}

	public void setRegistDate(Date registDate) {
		this.registDate = registDate;
	}

	@Override
	public int compareTo(Message o) {

		if (Integer.parseInt(this.id) < Integer.parseInt(o.id)) {
			return 1;
		} else if (Integer.parseInt(this.id) > Integer.parseInt(o.id)) {
			return -1;
		} else {
			return 0;
		}

	}
}
