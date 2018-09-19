package kr.spring.admin.controller;

import java.io.File;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class AdminController {
	
	//메인 페이지 폼 호출
	@RequestMapping("/main/adminMain.do")
	public String process() {
		
		return "adminMain";
	}
	
	//============글쓰기 이미지 업로드 ===========//
		@RequestMapping("/product/imageUploader.do")
		public void uploadImageProduct(MultipartFile file, HttpSession session, HttpServletResponse response) throws Exception {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();

			// 업로드할 폴더 경로
			String realFolder = session.getServletContext().getRealPath("resources/upload");

			// 업로드할 파일 이름
			String org_filename = file.getOriginalFilename();
			String str_filename = System.currentTimeMillis() + org_filename;

			System.out.println("원본 파일명 : " + org_filename);
			System.out.println("저장할 파일명 : " + str_filename);

			String filepath = realFolder + "\\" + session.getAttribute("user_id") + "\\" + str_filename;
			System.out.println("파일경로 : " + filepath);

			File f = new File(filepath);
			if (!f.exists()) {
				f.mkdirs();
			}
			file.transferTo(f);
			out.println("../resources/upload/"+session.getAttribute("user_id")+"/"+str_filename);
			out.close();
		}
		
		//신고한 리뷰 폼
		@RequestMapping("/report/reportReview.do")
		public String formReportReview() {
			
			return "reportReview";
		}
		
		//사용자 등록 요청 폼
		@RequestMapping("userRequired/requiredRegister.do")
		public String formRequiredRegister() {
			
			return "requiredRegister";
		}
		
		//사용자 수정 요청 폼
		@RequestMapping("userRequired/requiredUpdate.do")
		public String formRequiredUpdate() {
			
			return "requiredUpdate";
		}
}
