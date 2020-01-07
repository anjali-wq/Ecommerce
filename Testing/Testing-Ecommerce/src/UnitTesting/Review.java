package UnitTesting;

import java.util.Date;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class Review {
	static WebDriver driver;

	@BeforeClass
	public static void beforeclass() {
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\ARUNANAND\\eclipse-workspace\\project1\\driver\\chromedriver.exe");
		driver=new ChromeDriver();
		driver.get("http://127.0.0.1:5000");
		driver.manage().window().maximize();
		}

	@AfterClass
	public static void afterclass() throws InterruptedException {
		Thread.sleep(3000);
		driver.quit();
	}

	@Before
	public void before() {
		Date d=new Date();
		System.out.println(d);
		driver.manage().window().maximize();
	}

	@After
	public void after() {
		Date d=new Date();
		System.out.println(d);
	}

	@Test
	public void test() throws InterruptedException {
		
		Thread.sleep(2000);
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
		driver.findElement(By.linkText("Reviews")).click();
		Thread.sleep(2000);
		driver.findElement(By.linkText("New")).click();
		Thread.sleep(2000);
		WebElement txtTitle = driver.findElement(By.id("title"));
		Thread.sleep(2000);
		txtTitle.sendKeys("Shoe-Test");
		WebElement txtBody = driver.findElement(By.id("body"));
		Thread.sleep(2000);
		txtBody.sendKeys("Best fit!!!!!!!");
		Thread.sleep(2000);
		driver.findElement(By.xpath("//input[@value='Save']")).click();
		Thread.sleep(3000);
		driver.findElement(By.linkText("Edit")).click();
		Thread.sleep(3000);
		driver.findElement(By.xpath("//input[@value='Delete']")).click();
		Thread.sleep(3000);
		Alert a1=driver.switchTo().alert();
		a1.accept();
		Thread.sleep(3000);
	}
}
