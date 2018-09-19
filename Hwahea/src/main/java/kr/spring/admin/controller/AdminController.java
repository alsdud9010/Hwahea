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
	
	//���� ������ �� ȣ��
	@RequestMapping("/main/adminMain.do")
	public String process() {
		
		return "adminMain";
	}
	
	//============�۾��� �̹��� ���ε� ===========//
		@RequestMapping("/product/imageUploader.do")
		public void uploadImageProduct(MultipartFile file, HttpSession session, HttpServletResponse response) throws Exception {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();

			// ���ε��� ���� ���
			String realFolder = session.getServletContext().getRealPath("resources/upload");

			// ���ε��� ���� �̸�
			String org_filename = file.getOriginalFilename();
			String str_filename = System.currentTimeMillis() + org_filename;

			System.out.println("���� ���ϸ� : " + org_filename);
			System.out.println("������ ���ϸ� : " + str_filename);

			String filepath = realFolder + "\\" + session.getAttribute("user_id") + "\\" + str_filename;
			System.out.println("���ϰ�� : " + filepath);

			File f = new File(filepath);
			if (!f.exists()) {
				f.mkdirs();
			}
			file.transferTo(f);
			out.println("../resources/upload/"+session.getAttribute("user_id")+"/"+str_filename);
			out.close();
		}
		
		//�Ű��� ���� ��
		@RequestMapping("/report/reportReview.do")
		public String formReportReview() {
			
			return "reportReview";
		}
		
		//����� ��� ��û ��
		@RequestMapping("userRequired/requiredRegister.do")
		public String formRequiredRegister() {
			
			return "requiredRegister";
		}
		
		//����� ���� ��û ��
		@RequestMapping("userRequired/requiredUpdate.do")
		public String formRequiredUpdate() {
			
			return "requiredUpdate";
		}
}
