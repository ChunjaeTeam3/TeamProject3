package kr.co.teaspoon;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.junit.*;
//import org.junit.runner.RunWith;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/applicationContext.xml"})
public class LombokTest2 {
    private static final Logger log = LoggerFactory.getLogger("LombokTest2.class");

    @BeforeClass
    public static void testStart(){
        System.out.println("전체 테스트 시작");
        log.info("전체 테스트 시작");
    }

    @AfterClass
    public static void testEnd(){
        System.out.println("전체 테스트 종료");
        log.info("전체 테스트 종료");
    }

    @Before
    public void testBeforePrint() {
        System.out.println("JUnit 테스트 시작");
        log.info("JUnit 테스트 시작");
    }


    @After
    public void testAfterPrint() {
        System.out.println("JUnit 테스트 종료");
        log.info("JUnit 테스트 종료");
    }
}
