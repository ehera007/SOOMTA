package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.BandDTO;
import Model.BandJoinDTO;
import Model.BandNoticDTO;
import Model.BandWishDTO;

public class BandDetailRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.bandDetailMapper";
	String statement;
	public void noticeDel(String noticeNo) {
		statement = namespace + ".deleteNotice";
		sqlSession.delete(statement, noticeNo);
	}
	public void updateNotice(BandNoticDTO dto) {
		statement = namespace + ".updateNotice";
		sqlSession.insert(statement, dto);
	}
	
	public BandNoticDTO noticeDetail(String noticeNo) {
		statement = namespace + ".noticeDetail";
		return sqlSession.selectOne(statement, noticeNo);
	}
	public List<BandNoticDTO> myselect(String memId){
		statement = namespace + ".myselect";
		return sqlSession.selectList(statement, memId);
	}
	public BandNoticDTO selectDetail(String memId) {
		statement = namespace + ".selectDetail";
		return sqlSession.selectOne(statement, memId); 
	}
	public void bandContent(BandNoticDTO dto) {
		statement = namespace + ".bandNotice";
		sqlSession.insert(statement, dto); 
	}
	
	public List<BandNoticDTO> selectAll(Long bandNo){
		statement = namespace + ".selectAll";
		return sqlSession.selectList(statement, bandNo); 
	}
	public BandDTO bandDetail(BandDTO dto) {
		statement = namespace + ".bandDetail";
		return sqlSession.selectOne(statement, dto); 
	}
	public BandWishDTO bandDetail1(BandDTO dto) {
		statement = namespace + ".bandWish";
		return sqlSession.selectOne(statement, dto); 
	}
	public BandDTO band(Long  bandNo) {
		statement = namespace + ".band";
		return sqlSession.selectOne(statement, bandNo); 
	}
	public void bandJoin(BandJoinDTO dto) {
		statement = namespace + ".bandJoin";
		sqlSession.insert(statement, dto); 
	}
	public int countBank(BandDTO dto) {
		statement = namespace + ".countBank";
		return sqlSession.selectOne(statement, dto);
	}
	
	public BandDTO bandIntro(Long bandNo) {
		statement = namespace + ".bandIntro";
		return sqlSession.selectOne(statement, bandNo);
	}
	
}

