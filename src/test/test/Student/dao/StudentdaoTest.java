package Student.dao;

import com.qf.model.Student;
import com.qf.student.dao.Studentdao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@RunWith(value = SpringJUnit4ClassRunner.class)
@ContextConfiguration(value = "classpath:spring/spring-dao.xml")
public class StudentdaoTest {
    @Autowired
    private Studentdao dao ;
    /*查询所有*/
    @Test
    public void  selectByAll()throws Exception{

         List<Student> list = dao.selectByAll();
        System.out.println(list);
    }
    /*通过学号查询*/
    @Test
    public  void selectBysnumber()throws Exception{
        Student stu = new Student();
        stu.setStu_number("2018010101");
        List<Student> list = dao.selectBysnumber(stu);
        System.out.println(list);

    }
    /*添加*/
    @Test
    public void insert()throws Exception{
        Student stu= new Student();

        String id = UUID.randomUUID().toString();
        stu.setStu_id(id);
        stu.setStu_name("王五");
        stu.setStu_birthday("1991-11-23");
        stu.setStu_card("330326199111235411");
        stu.setStu_address("浙江省杭州市西湖区");
        stu.setStu_phone("18888648741");
        stu.setStu_number("2018010103");
        stu.setStu_class("18java");
        stu.setStu_major("Java");
        stu.setStu_pwd("123456");
        dao.insertByStudent(stu);
    }
    /*通过id修改*/
    @Test
    public void updateBysid()throws Exception{
        Student stu= new Student();

        stu.setStu_id("c33c7043-b302-48c5-8a4b-9dba2266af77");
        stu.setStu_name("王群");
        stu.setStu_birthday("1990-10-23");
        stu.setStu_card("330326199010235411");
        stu.setStu_address("浙江省杭州市边江区");
        stu.setStu_phone("18888648742");
        stu.setStu_number("2018010102");
        stu.setStu_class("18java");
        stu.setStu_major("Java");
        stu.setStu_pwd("123456");
        stu.setStu_photo("1");
        dao.updateBysid(stu);

    }
    /*修改状态1,毕业*/
    @Test
    public void updateBystateone()throws Exception{
        Student stu = new Student();
        stu.setStu_id("21527647-1396-4a27-a78b-66a729956b5a");

        dao.updateBystate(stu);
    }
    /*修改状态2,开除*/
    @Test
    public void updateBystatetwo()throws Exception{
        Student stu = new Student();
        stu.setStu_id("21527647-1396-4a27-a78b-66a729956b5a");

        dao.updateBystatetwo(stu);
    }
}
