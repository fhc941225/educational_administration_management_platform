package Student.service;

import com.qf.model.Student;
import com.qf.student.service.IStudentservice;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;
import java.util.UUID;

@RunWith(value = SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml"})
public class StudentserviceTest {
    @Autowired
    private IStudentservice ser;
    /*查询所有*/
    @Test
    public void  selectAll()throws Exception{

        List<Student> list = ser.listByAll();
        System.out.println(list);
    }
    /*通过学号查询*/
    @Test
    public void selectBynumber()throws Exception{
        Student stu= new Student();
        stu.setStu_number("2018010101");
        List<Student> list = ser.listBysnumber(stu);
        System.out.println(list);
    }
    /*添加*/
    @Test
    public void insert()throws Exception{

        Student stu= new Student();

        String id = UUID.randomUUID().toString();
        stu.setStu_id(id);
        stu.setStu_name("王里");
        stu.setStu_birthday("1992-11-23");
        stu.setStu_card("330326199211235411");
        stu.setStu_address("浙江省杭州市湖区");
        stu.setStu_phone("18888648745");
        stu.setStu_number("2018010104");
        stu.setStu_class("18java");
        stu.setStu_major("Java");
        stu.setStu_pwd("123456");
        ser.insertByStudent(stu);
    }
    /*修改*/
    @Test
    public void update()throws Exception{
        Student stu= new Student();


        stu.setStu_id("21527647-1396-4a27-a78b-66a729956b5a");
        stu.setStu_name("王五");
        stu.setStu_birthday("1991-11-23");
        stu.setStu_card("330326199111235411");
        stu.setStu_address("浙江省杭州市拱墅区");
        stu.setStu_phone("18888648741");
        stu.setStu_number("2018010103");
        stu.setStu_class("18java");
        stu.setStu_major("Java");
        stu.setStu_pwd("123456");
        ser.updateBysid(stu);
    }
    /*修改状态值1*/
    @Test
    public void updateone()throws Exception{

        Student stu= new Student();
        stu.setStu_id("2b0a8763-3cbd-4009-92fd-1cc67b0a8703");
        ser.updateBystate(stu);
    }
    @Test
    public void updatetwo()throws Exception{

        Student stu= new Student();
        stu.setStu_id("2b0a8763-3cbd-4009-92fd-1cc67b0a8703");
        ser.updateBystatetwo(stu);
    }

}
