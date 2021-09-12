package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.BandDTO;
import Model.BandJoinDTO;

public class BandRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.bandMapper";
	String statement;
	
	public void bandWish(BandDTO dto) {
		statement = namespace + ".bandWish";
		sqlSession.insert(statement,dto);
	}
	
	public List<BandDTO> bandList(String memId) {
		statement = namespace + ".bandList";
		return sqlSession.selectList(statement,memId);
	}
	public List<BandDTO> joinBandList(String memId) {
		statement = namespace + ".joinBandList";
		return sqlSession.selectList(statement,memId);
	}
	
	public void bandWrite(BandDTO dto) {
		statement = namespace + ".bandWrite";
		int i = sqlSession.insert(statement,dto);
		System.out.println(i + "개가 등록되었습니다.");
	}
	
	public String bandNo() {
		statement = namespace + ".bandNo";
		return sqlSession.selectOne(statement);
	}
	
	public List<BandDTO> bandAllList(String bandCategoryS){
		statement = namespace + ".bandAllList";
		return sqlSession.selectList(statement, bandCategoryS);
	}
	
	public BandDTO bandIntro(String bandNo) {
		statement = namespace + ".bandIntro";
		return sqlSession.selectOne(statement, bandNo);
	}
}
