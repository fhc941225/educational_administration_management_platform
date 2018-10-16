package Teacher.dao;

import com.qf.Teacher.dao.Teacherdao;
import com.qf.model.Teacher;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;
import java.util.UUID;

@RunWith(value = SpringJUnit4ClassRunner.class)
@ContextConfiguration(value = "classpath:spring/spring-dao.xml")
public class Teacherdaotest {
    @Autowired
    private Teacherdao dao;
    /*添加*/
    @Test
    public void insert()throws Exception{

        Teacher tea = new Teacher();
        String id = UUID.randomUUID().toString();
        tea.setTea_id(id);
        tea.setTea_number("2018020102");
        tea.setTea_name("王名");
        tea.setTea_birthday("1980-10-13");
        tea.setTea_card("330316198010135422");
        tea.setTea_address("浙江省杭州市上城区");
        tea.setTea_phone("15151545679");
        tea.setTea_courses("WEB");
        tea.setTea_pwd("123456");
        tea.setTea_photo("1");
       dao.insert(tea);



    }
    /*查所有*/
    @Test
    public void selectByAll() throws Exception {

        List<Teacher> list = dao.selectByAll();
        System.out.println(list);
    }
    /*通过教师编号查询*/
    @Test
    public void selctBynumber() throws Exception {

        Teacher tea = new Teacher();
        tea.setTea_number("2018020102");
        List<Teacher> list = dao.selectBynumber(tea);
        System.out.println(list);
    }
    /*修改信息*/
    @Test
    public void update() throws Exception {
        Teacher tea = new Teacher();
        tea.setTea_id("54c6fc1d-2094-4186-8b97-580da2abf8a9");
        tea.setTea_number("2018020102");
        tea.setTea_name("王名");
        tea.setTea_birthday("1980-10-13");
        tea.setTea_card("330316198010135422");
        tea.setTea_address("0");
        tea.setTea_phone("15151545689");
        tea.setTea_courses("WEB");
        tea.setTea_pwd("123456");
        tea.setTea_photo("1");
        dao.updateByid(tea);

    }
    /*修改状态*/
    @Test
    public void updatby2() throws Exception {
        Teacher tea = new Teacher();
        tea.setTea_id("54c6fc1d-2094-4186-8b97-580da2abf8a9");
        dao.updateBystate(tea);
    }
}
