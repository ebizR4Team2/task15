package parser;

import java.io.File;  

import org.apache.tools.ant.Project;  
import org.apache.tools.ant.taskdefs.Zip;  
import org.apache.tools.ant.types.FileSet;  

public class MyZip {
	private File zipFile;
	private static String filePath = System.getProperty("user.dir") + "\\form\\";
	  
    public MyZip(String fileName) {  
        zipFile = new File(fileName);  
    }  
      
    public File compress() {  
        File srcdir = new File(filePath);  
        if (!srcdir.exists())  
            throw new RuntimeException(filePath + " doesn't exist!");  
          
        Project prj = new Project();  
        Zip zip = new Zip();  
        zip.setProject(prj);  
        zip.setDestFile(zipFile);  
        
        FileSet fileSet = new FileSet();  
        fileSet.setProject(prj);  
        fileSet.setDir(srcdir);  
        // set files you want to include or exclude
        fileSet.setIncludes("*.html");
        fileSet.setIncludes("css/*");
        //fileSet.setExcludes(...);  
        zip.addFileset(fileSet);  
        
        zip.execute(); 
        System.out.print("Zip generated");
        return zipFile;
    }  
    public static void main(String[] args) {
    	MyZip zip = new MyZip("test.zip");
    	zip.compress();
    }
}
