package Teacher.service;

import com.qf.Teacher.service.Teacherservice;
import com.qf.model.Teacher;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;
import java.util.UUID;

@RunWith(value = SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/spring-service.xml","classpath:spring/spring-dao.xml"})
public class TeacherserviceTest {
    @Autowired
    private Teacherservice ser;
    /*添加*/
    @Test
    public void insert() throws Exception {
        Teacher tea = new Teacher();
        String id = UUID.randomUUID().toString();
        tea.setTea_id(id);
        tea.setTea_number("2018020102");
        tea.setTea_name("王");
        tea.setTea_birthday("1980-10-13");
        tea.setTea_card("330316198010135422");
        tea.setTea_address("浙江省杭州市上城区");
        tea.setTea_phone("15151545679");
        tea.setTea_courses("WEB");
        tea.setTea_pwd("123456");
        tea.setTea_photo("1");
        ser.insert(tea);
    }
    /*查询所有*/
    @Test
    public void selectByAll() throws Exception {

        List<Teacher> list = ser.selectByAll();
        System.out.println(list);
    }
    /*通过学号查询*/
    @Test
    public void selectBynumber() throws Exception {
        Teacher tea = new Teacher();

        tea.setTea_number("2018020101");
        List<Teacher> list = ser.selectBynumber(tea);
        System.out.println(list);
    }
    /*通过id修改*/
    @Test
    public void updateByid() throws Exception {
        Teacher tea = new Teacher();
        tea.setTea_id("84c28f94-d539-4e80-afdf-9bd0905b1d1a");

        tea.setTea_address("浙江省温州市鹿城");
        tea.setTea_phone("15151545676");
        tea.setTea_courses("WEB");


        ser.updateByid(tea);

    }
    @Test
    public void update() throws Exception {
        Teacher tea = new Teacher();
        tea.setTea_id("84c28f94-d539-4e80-afdf-9bd0905b1d1a");
        ser.updateBystate(tea);
    }
}
