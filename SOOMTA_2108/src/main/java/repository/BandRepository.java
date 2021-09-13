package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.BandDTO;
import Model.BandWishDTO;
import command.BandCtgCommand;

public class BandRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.bandMapper";
	String statement;
	
	public void bandWish(BandWishDTO dto) { //밴드 찜
		statement = namespace + ".bandWish";
		sqlSession.insert(statement,dto);
	}
	public int wishChk(BandWishDTO dto) {
		statement = namespace + ".wishChk";
		return sqlSession.selectOne(statement, dto);
	}
	public void wishDel(BandWishDTO dto) {
		statement = namespace + ".wishDel";
		sqlSession.delete(statement, dto);
	}
	public List<BandWishDTO> wishBand(String memId) { //밴드 찜 목록
		statement = namespace + ".wishBand";
		return sqlSession.selectList(statement, memId);
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
	
	public List<BandDTO> bandAllList(BandCtgCommand bandCtgCommand){
		statement = namespace + ".bandAllList";
		return sqlSession.selectList(statement, bandCtgCommand);
	}
	public BandDTO bandIntro(Long bandNo) {
		statement = namespace + ".bandIntro";
		return sqlSession.selectOne(statement, bandNo);
	}
	public int countB(String bandCategoryS) {
		statement = namespace + ".countB";
		return sqlSession.selectOne(statement, bandCategoryS);
	}
}
