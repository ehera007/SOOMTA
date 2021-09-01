package Model;

import java.util.Date;

public class PurchaseDTO {
	String PurchaseNo;//구매번호
	String ClassNo;//클래스 번호
	String memId;//회원 아이디
	String tutorId;//튜터 아이디
    Date purchaseDate;//구매일시
    String purchaseMethod;//결제방법
    String purchaseInformation;//결제정보
}
