package org.zero.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zero.domain.Board_listVO;
import org.zero.mapper.Board_listMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service

public class Board_listServiceImpl implements Board_listService{
	@Autowired
	private Board_listMapper mapper;
	
	@Override
	public void register(Board_listVO board_list) {
		log.info("register......" + board_list);

		mapper.insertSelectkey(board_list);
	}

	@Override
	public Board_listVO get(Long num) {
		log.info("get........."+ num);
		
		return mapper.read(num);
	}

	@Override
	public boolean modify(Board_listVO board_list) {
		log.info("modify................" + board_list);
		
		return mapper.update(board_list) == 1;
	}

	@Override
	public boolean remove(Long num) {
		log.info("remove..............." + num);
		
		return mapper.remove(num) == 1;
	}

	@Override
	public List<Board_listVO> getList() {
		log.info("getList....................");
		
		return mapper.getList();
	}
	
}
