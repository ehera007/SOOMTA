package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.FaqDTO;

public class FaqRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.faqMapper";
	String statement;

	// 튜터안내
	public List<FaqDTO> tNoticeList() {// 튜터-공지
		statement = namespace + ".tNoticeList";
		return sqlSession.selectList(statement);
	}
	public FaqDTO tNoticeC(String faqNo) {//공지보기
		statement = namespace + ".tNoticeC";
		return sqlSession.selectOne(statement,faqNo);
	}

	public List<FaqDTO> tQList() {// 튜터-자주
		statement = namespace + ".tQList";
		return sqlSession.selectList(statement);
	}

	public List<FaqDTO> tHelpList() {// 튜터-이용
		statement = namespace + ".tHelpList";
		return sqlSession.selectList(statement);
	}
	public FaqDTO tSupport(String faqNo) {//이용안내보기
		statement = namespace + ".tSupport";
		return sqlSession.selectOne(statement,faqNo);
	}

	//회원안내
	public List<FaqDTO> mNoticeList() {// 회원-공지
		statement = namespace + ".mNoticeList";
		return sqlSession.selectList(statement);
	}

	public List<FaqDTO> mQList() {// 회원-자주
		statement = namespace + ".mQList";
		return sqlSession.selectList(statement);
	}

	public List<FaqDTO> mHelpList() {// 회원-이용
		statement = namespace + ".mHelpList";
		return sqlSession.selectList(statement);
	}
	//숨타
	public List<FaqDTO> hire(){//인재채용 리스트
		statement = namespace + ".hire";
		return sqlSession.selectList(statement);
	}

}
