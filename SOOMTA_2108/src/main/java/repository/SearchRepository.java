package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.BandDTO;
import Model.ClassDTO;

public class SearchRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.searchMapper";
	String statement;
	
	public List<ClassDTO> classSearch(String keyWord){
		statement = namespace + ".classSearch";
		return sqlSession.selectList(statement, keyWord);
	}
	public List<BandDTO> bandSearch(String keyWord){
		statement = namespace + ".bandSearch";
		return sqlSession.selectList(statement, keyWord);
	}
}