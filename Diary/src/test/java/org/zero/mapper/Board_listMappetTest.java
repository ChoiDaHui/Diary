package org.zero.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zero.domain.Board_listVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class Board_listMappetTest {
	@Setter(onMethod_ = @Autowired)
	private Board_listMapper mapper;

//	@Test
//	public void testGetList() {
//
//		mapper.getList().forEach(board -> log.info("board 객체 내용 : " + board));
//
//	}
//	
//	@Test
//	public void testInsert() {
//
//		Board_listVO board_list = new Board_listVO();
//		
//		board_list.setTitle("새로 작성하는 글");
//		board_list.setContent("새로 작성하는 내용");
//		board_list.setUser_id("user00");
//		board_list.setImg_file("새로운 이미지 경로");
//
//		mapper.insert(board_list);
//
//		log.info(board_list);
//	}
//	
//	@Test
//	public void testRead() {
//		Board_listVO board_list = mapper.read(5L);
//		
//		log.info(board_list);
//	}
	
//	@Test
//	public void testDelete() {
//
//		log.info("DELETE COUNT: " + mapper.delete(2L));
//	}
	
//	@Test
//	public void testUpdate() {
//		Board_listVO board_list = new Board_listVO();
//		board_list.setNum(5L);
//		board_list.setTitle("수정된 제목");
//		board_list.setContent("수전된 내용");
//		board_list.setImg_file("수전된 이미지 경로");
//		board_list.setUser_id("user00");
//		
//		int count = mapper.update(board_list);
//		log.info("UPDATE COUNT : " + count);
//		
//	}

	
}
