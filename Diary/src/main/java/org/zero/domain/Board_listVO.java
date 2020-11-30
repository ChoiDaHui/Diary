package org.zero.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Board_listVO {
	private Long num;
	private String content;
	private String img_file;
	private String title;
	private String user_id;
	private Date date;
	private Date UpdateDate;
}
