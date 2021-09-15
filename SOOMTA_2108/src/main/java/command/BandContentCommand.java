package command;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class BandContentCommand {
	Long bandNo;
	String memId;
	Long noticeNo;
	String noticeSub;
	String noticeCon;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date noticeDate;
	String noticeCategory;
	public Long getBandNo() {
		return bandNo;
	}
	public void setBandNo(Long bandNo) {
		this.bandNo = bandNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public Long getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(Long noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeSub() {
		return noticeSub;
	}
	public void setNoticeSub(String noticeSub) {
		this.noticeSub = noticeSub;
	}
	public String getNoticeCon() {
		return noticeCon;
	}
	public void setNoticeCon(String noticeCon) {
		this.noticeCon = noticeCon;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	public String getNoticeCategory() {
		return noticeCategory;
	}
	public void setNoticeCategory(String noticeCategory) {
		this.noticeCategory = noticeCategory;
	}
}
