package complexforms;

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
	
	@RequestMapping("fileform")
	public String fileUploadPage() {
		return "file-upload";
	}
	@RequestMapping(path = "/uploadfile" , method = RequestMethod.POST)
	public String fileUpload(@RequestParam("imageTitle") String imageTitle,
			@RequestParam("imageFile") CommonsMultipartFile file , HttpSession session, Model model) {
		
		System.out.println("file size : " + file.getSize());
		System.out.println("file type : " + file.getContentType());
		System.out.println("file original name : " + file.getOriginalFilename());
		System.out.println("file name : " + file.getName());
		byte[] image = file.getBytes();
		
		String path =
				session.getServletContext().getRealPath("/") + "WEB-INF"+File.separator+
				"resources" + File.separator + "image"+ File.separator + file.getOriginalFilename();
		
		try {
			FileOutputStream fs = new FileOutputStream(path);
			fs.write(image);
			fs.close();
			System.out.println("file uploaded successfully at : " + path);
			model.addAttribute("fileName", file.getOriginalFilename());
			model.addAttribute("msg", "file uploaded successfully");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("upload problem");
			model.addAttribute("msg", "something went wrong");
		}
		
		return "filesuccess";
	}
}
