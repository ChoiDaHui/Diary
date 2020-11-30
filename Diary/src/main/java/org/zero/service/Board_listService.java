package org.zero.service;

import java.util.List;

import org.zero.domain.Board_listVO;

public interface Board_listService {
	public void register(Board_listVO board_list);
	public Board_listVO get(Long num);
	public boolean modify(Board_listVO board_list);
	public boolean remove(Long num);
	public List<Board_listVO> getList();
}
