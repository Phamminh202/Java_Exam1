package com.t2010a.t2010a_again.entity;

import org.junit.jupiter.api.Test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;

class TeacherTest {
    @Test
    public void countCakeByTeacher() throws IOException{
        ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
        InputStream is = classLoader.getResourceAsStream("teachers.txt");
        InputStreamReader streamReader = new InputStreamReader(is, StandardCharsets.UTF_8);
        BufferedReader reader = new BufferedReader(streamReader);
        HashMap<String, Teacher> mapTeacher = new HashMap<>();
        for (String line; (line = reader.readLine())!= null; ){
            String[] sqlitedLine = line.split(" ");
            if (sqlitedLine.length == 4){
                String id = sqlitedLine[0];
                String name = sqlitedLine[1];
                String date = sqlitedLine[2];
                int qty = Integer.parseInt(sqlitedLine[3]);
                Teacher teacher = new Teacher(id,name,date,qty);
                //nếu như tồn tại giáo viên cùng với key, thì lấy giá trị cũ ra
                if (mapTeacher.containsKey(teacher.getId())){
                    Teacher oldTeacher = mapTeacher.get(teacher.getId());
                    //update số lượng bánh mới
                    oldTeacher.setQty(oldTeacher.getQty() + teacher.getQty());
                    //đưa lại vào map (bản chất k cần)
                    mapTeacher.put(oldTeacher.getId(),oldTeacher);
                }else {
                    mapTeacher.put(teacher.getId(),teacher);
                }
            }
        }
        ArrayList<Teacher> listTeacher = new ArrayList<>(mapTeacher.values());
        for (Teacher teacher :
        listTeacher){
            System.out.println(teacher.toString());
        }
    }

}