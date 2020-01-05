package Junit;
import java.util.Date;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
public class Login {
	static WebDriver driver;

	@BeforeClass
	public static void beforeclass() {
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\ARUNANAND\\eclipse-workspace\\project1\\driver\\chromedriver.exe");
		driver=new ChromeDriver();
		driver.get("http://127.0.0.1:5000/auth/login");
		Assert.assertTrue(driver.getCurrentUrl().contains("login"));
		}

	@AfterClass
	public static void afterclass() {
		
	}

	@Before
	public void before() {
		Date d=new Date();
		System.out.println(d);
	}

	@After
	public void after() {
		Date d=new Date();
		System.out.println(d);
	}

	@Test
	public void test() throws InterruptedException {
		WebElement txtUserName = driver.findElement(By.id("username"));
		Thread.sleep(2000);
		txtUserName.sendKeys("arun");
		
		Assert.assertEquals("arun",txtUserName.getAttribute("value"));
		WebElement txtPass = driver.findElement(By.id("password"));
		txtPass.sendKeys("admin");
		Assert.assertEquals("admin",txtPass.getAttribute("value"));
		Thread.sleep(2000);
		driver.findElement(By.xpath("//input[@value='Log In']")).click();
		Thread.sleep(7000);
		
		
		
	}
}
