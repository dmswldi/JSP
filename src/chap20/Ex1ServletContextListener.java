package chap20;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class Ex1ServletContextListener
 *
 */
@WebListener
public class Ex1ServletContextListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public Ex1ServletContextListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
    	// 앱 종료 시 실행
         System.out.println("우리 앱이 종료되었습니다.");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
    	// 앱 실행 시 가장 먼저 실행
         System.out.println("우리 앱이 실행되었습니다.");
         
      // 1. jdbc 드라이버 로딩
 		try {
 			Class.forName("oracle.jdbc.driver.OracleDriver");// 커넥션 얻어오기 전 1번만 실행되면 됨.
 		} catch (ClassNotFoundException e1) {
 			e1.printStackTrace();
 		}
 		
    }
	
}
