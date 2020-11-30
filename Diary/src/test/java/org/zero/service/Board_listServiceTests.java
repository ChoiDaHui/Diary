package org.zero.service;

import static org.junit.Assert.assertNotNull;

import java.sql.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zero.domain.Board_listVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import oracle.net.ano.Service;
import oracle.sql.DATE;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

@Log4j
public class Board_listServiceTests {
	@Setter(onMethod_ = { @Autowired })
	private Board_listService service_list;
	
//	@Test
//	public void testExist() {
//		
//		log.info("=====================");
//		log.info(service_list);
//		assertNotNull(service_list);
//		log.info("=====================");
//	}

	@Test
	public void testWriters() {
		Board_listVO board_list = new Board_listVO();
		board_list.setTitle("예원쨩이 새로 작성하는 제목");
		board_list.setContent("예원쨩이 새로 작성하는 내용");
		board_list.setImg_file("예원쨩이 새로 작성한 파일경로");
		board_list.setUser_id("user01");
		
		service_list.register(board_list);
		
		log.info("생성된 게시물의 번호 : " + board_list.getNum());
	}
	
//	@Test
//	public void getList() {
//		service_list.getList().forEach(board_list -> log.info(board_list));
//	}
//	
//	@Test
//	public void testGet() {
//		log.info(service_list.get(3L));
//	}
	
//	@Test
//	public void testDelete() {
//		log.info("REMOVE RESULT: " + service_list.remove(53L));
//	}
//	
//	@Test
//	public void testUpdate() {
//		Board_listVO board_list = service_list.get(57L);
//		
//		if(board_list == null) {
//			return;
//		}
//		
//		board_list.setImg_file("수정된 이미지 파일");
//		log.info("MODIFY RESULT: " + service_list.modify(board_list));
//	}
}
