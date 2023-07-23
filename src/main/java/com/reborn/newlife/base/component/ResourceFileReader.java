package com.reborn.newlife.base.component;

import java.io.File;
import java.io.IOException;
import java.net.URL;

import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Component;

// 待修改
@Component
public class ResourceFileReader {
	
    private final ResourceLoader resourceLoader;

    public ResourceFileReader(ResourceLoader resourceLoader) {
        this.resourceLoader = resourceLoader;
    }

    public String getFilePathFromResource(String filePath) throws IOException {
        Resource resource = resourceLoader.getResource(filePath);
        // URL url = resource.getURL();
        File file = resource.getFile();
        return file.getAbsolutePath(); // 絕對路徑
    }
}



