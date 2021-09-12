package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.BandDTO;
import Model.BandJoinDTO;
import Model.BandWishDTO;

public class BandDetailRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.bandDetailMapper";
	String statement;
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
	
	public BandDTO bandIntro(String bandNo) {
		statement = namespace + ".bandIntro";
		return sqlSession.selectOne(statement, bandNo);
	}
}

