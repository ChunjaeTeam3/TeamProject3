package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Category;
import kr.co.teaspoon.dto.CommunityVO;
import kr.co.teaspoon.dto.FileInfo;
import kr.co.teaspoon.dto.Fileboard;
import kr.co.teaspoon.service.FileInfoService;
import kr.co.teaspoon.service.FileboardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/fileboard/*")
public class FileboardController {
        
        @Autowired
        HttpSession session;

        @Autowired
        private FileboardService fileboardService;
        @Autowired
        private FileInfoService fileInfoService;
        //@Autowired를 사용하여 의존성 주입을 받고 있다.
        // 스프링 컨테이너에서 FileboardService와 FileInfoService 빈(Bean)을 찾아서 해당 필드에 자동으로 주입해준다는 의미

        @RequestMapping(value = "insert.do", method = RequestMethod.GET)
        public String write() {
            return "/fileboard/fileboardInsert";
        }

        @RequestMapping(value = "insert.do", method = RequestMethod.POST)
        public String write(Fileboard fileboardDto, @RequestParam("upfile") MultipartFile[] files, Model model, HttpServletRequest req) throws IllegalStateException, IOException {
        //    Member member = (Member) session.getAttribute("member");
            String id = (String) session.getAttribute("sid");
            if (id != null && id.equals("admin")) { //관리자만 등록가능
                //String realPath = req.getRealPath("/pro3_war/resources/upload");
                String realPath = req.getSession().getServletContext().getRealPath("/resources/upload/"); // 경로설정
                System.out.println("path : " + realPath);
                String today = new SimpleDateFormat("yyMMdd").format(new Date()); //오늘 날짜
                String saveFolder = realPath + today; // 저장되는 폴더 경로
                System.out.println(saveFolder);
                File folder = new File(saveFolder);
                if(!folder.exists()) // 폴더가 존재하지 않으면 생성함
                    folder.mkdirs();
                List<FileInfo> fileInfos = new ArrayList<FileInfo>(); //첨부파일 정보를 리스트로 생성
                for (MultipartFile mfile : files) {
                    FileInfo fileInfoDto = new FileInfo();
                    String originalFileName = mfile.getOriginalFilename(); //첨부파일의 실제 파일명을 저장
                    if (!originalFileName.isEmpty()) {
                        String saveFileName = UUID.randomUUID().toString() + originalFileName.substring(originalFileName.lastIndexOf('.')); // 랜덤으로 파일이름 설정
                        fileInfoDto.setSaveFolder(today); // 파일인포 객체에 값저장
                        fileInfoDto.setOriginFile(originalFileName); // 파일인포 객체에 값저장
                        fileInfoDto.setSaveFile(saveFileName); // 파일인포 객체에 값저장
                        System.out.println(mfile.getOriginalFilename() + "   " + saveFileName);
                        mfile.transferTo(new File(folder, saveFileName)); // 파일을 업로드 폴더에 저장
                    }
                    fileInfos.add(fileInfoDto);
                }
                fileboardDto.setFileInfos(fileInfos);
                fileboardDto.setId(id);
                try {
                    fileboardService.writeArticle(fileboardDto);
                    List<Fileboard> fileboardList = fileboardService.fileList();
                    model.addAttribute("fileboardList", fileboardList);
                    return "/fileboard/fileboardList";
                } catch (Exception e) {
                    e.printStackTrace();
                    model.addAttribute("msg", "글 작성중 문제가 발생했습니다.");
                    return "/error/error";
                }
            } else {
                model.addAttribute("msg", "로그인 후 사용 가능한 페이지입니다.");
                return "/error/error";
            }
        }


        @GetMapping("list.do")		//board/list.do
        public String getBoardList(Model model) throws Exception {
            List<Fileboard> fileboardList = fileboardService.fileList();
            model.addAttribute("fileboardList", fileboardList);
            return "/fileboard/fileboardList";
        }

        @GetMapping("detail.do")	//board/detail.do?seq=1
        public String getBoardDetail(HttpServletRequest request, Model model) throws Exception {
            int articleno = Integer.parseInt(request.getParameter("articleno"));
            Fileboard dto = fileboardService.fileDetail(articleno); //해당 자료실 객체 값 생성
            FileInfo dto2 = fileInfoService.fileInfoDetail(articleno); //해당 자료실에 첨부된 파일 객체 값 생성
            model.addAttribute("dto", dto);
            model.addAttribute("dto2",dto2);
            return "/fileboard/fileboardDetail";
        }
    @GetMapping("delete.do")
    public String noticeDelete(HttpServletRequest request, Model model) throws Exception {
        int articleno = Integer.parseInt(request.getParameter("articleno"));
        fileboardService.fileboardDelete(articleno);
        return "redirect:list.do";
    }
    @GetMapping("edit.do")
    public String editForm(HttpServletRequest request, Model model) throws Exception {
        int articleno = Integer.parseInt(request.getParameter("articleno"));
        Fileboard dto = fileboardService.fileDetail(articleno);
        FileInfo dto2 = fileInfoService.fileInfoDetail(articleno);
        model.addAttribute("dto", dto);
        model.addAttribute("dto2",dto2);
        fileboardService.fileboardDelete(articleno);
        return "/fileboard/fileboardEdit";
    }

    @PostMapping("edit.do")
    public String write2(Fileboard fileboardDto, @RequestParam("upfile") MultipartFile[] files, Model model, HttpServletRequest req) throws IllegalStateException, IOException {
        //    Member member = (Member) session.getAttribute("member");
        String id = (String) session.getAttribute("sid");
        if (id != null && id.equals("admin")) { //관리자만 등록가능
            //String realPath = req.getRealPath("/pro3_war/resources/upload");
            String realPath = req.getSession().getServletContext().getRealPath("/resources/upload/"); // 경로설정
            System.out.println("path : " + realPath);
            String today = new SimpleDateFormat("yyMMdd").format(new Date()); //오늘 날짜
            String saveFolder = realPath + today; // 저장되는 폴더 경로
            System.out.println(saveFolder);
            File folder = new File(saveFolder);
            if(!folder.exists()) // 폴더가 존재하지 않으면 생성함
                folder.mkdirs();
            List<FileInfo> fileInfos = new ArrayList<FileInfo>(); //첨부파일 정보를 리스트로 생성
            for (MultipartFile mfile : files) {
                FileInfo fileInfoDto = new FileInfo();
                String originalFileName = mfile.getOriginalFilename(); //첨부파일의 실제 파일명을 저장
                if (!originalFileName.isEmpty()) {
                    String saveFileName = UUID.randomUUID().toString() + originalFileName.substring(originalFileName.lastIndexOf('.')); // 랜덤으로 파일이름 설정
                    fileInfoDto.setSaveFolder(today); // 파일인포 객체에 값저장
                    fileInfoDto.setOriginFile(originalFileName); // 파일인포 객체에 값저장
                    fileInfoDto.setSaveFile(saveFileName); // 파일인포 객체에 값저장
                    System.out.println(mfile.getOriginalFilename() + "   " + saveFileName);
                    mfile.transferTo(new File(folder, saveFileName)); // 파일을 업로드 폴더에 저장
                }
                fileInfos.add(fileInfoDto);
            }
            fileboardDto.setFileInfos(fileInfos);
            fileboardDto.setId(id);
            try {
                fileboardService.writeArticle(fileboardDto);
                List<Fileboard> fileboardList = fileboardService.fileList();
                model.addAttribute("fileboardList", fileboardList);
                return "/fileboard/fileboardList";
            } catch (Exception e) {
                e.printStackTrace();
                model.addAttribute("msg", "글 작성중 문제가 발생했습니다.");
                return "/error/error";
            }
        } else {
            model.addAttribute("msg", "로그인 후 사용 가능한 페이지입니다.");
            return "/error/error";
        }
    }
    }

