package com.example.indb.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Objects;

@Service
@Slf4j
public class FileService {

    private final String FILE_DIR = "C:\\Users\\Woong\\Desktop\\indb\\src\\main\\resources\\static\\course\\";

    public void saveFile(MultipartFile files, String dir, String fileName) throws IOException {

        String origName = files.getOriginalFilename();
        String savedPath = new StringBuilder()
                .append(FILE_DIR)
                .append(dir)
                .append("\\")
                .append(fileName)
                .append(".jpg")
                .toString();

        log.info(origName, fileName);

        files.transferTo(new File(savedPath));
    }
}
