package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.BandDTO;

public class BandRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.bandMapper";
	String statement;
	
	public List<BandDTO> bandList() {
		statement = namespace + ".bandList";
		return sqlSession.selectList(statement);
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
}
