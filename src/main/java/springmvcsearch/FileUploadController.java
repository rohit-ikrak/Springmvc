package springmvcsearch;

import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class FileUploadController {
	
	@RequestMapping("/fileform")
	public String showUploadForm() {
		return "fileform";
	}
	
	@RequestMapping(value="/uploadimage", method =  RequestMethod.POST)
	public String fileupload(@RequestParam("file") CommonsMultipartFile file, HttpSession s, Model m) {
		System.out.println("File uploaded");
//		System.out.println(file.getContentType());
//		System.out.println(file.getSize()/1024);
//		System.out.println(file.getName());
//		System.out.println(file);
//		System.out.println(file.isEmpty());
//		System.out.println(file.toString());
		
		byte[] data = file.getBytes();
		
		//we save this file to server.
		String path = s.getServletContext().getRealPath("/")
				+"WEB-INF"+File.separator+"resources"
				+ File.separator+ "images"+ File.separator 
				+ file.getOriginalFilename();
		System.out.println(path);

		try {
			FileOutputStream fos = new FileOutputStream(path);
			fos.write(data);
			fos.close();
			
			System.out.println("file uploaded");
			m.addAttribute("msg", "uploaded successfully");
			m.addAttribute("filename", file.getOriginalFilename());
		
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("Error uploading file");
			m.addAttribute("msg","uploading error");
		}
		
		return "filesuccess";
	}
}
