package net.project.hotellist.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	// 추상메서?�� -> 처리 메서?��?�� ?? ?��?��
	public ActionForward execute(
			HttpServletRequest request,
			HttpServletResponse response)
					throws Exception;

}
