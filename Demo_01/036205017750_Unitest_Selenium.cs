using Microsoft.VisualStudio.TestTools.UnitTesting;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;

namespace Demo_01
{
    [TestClass]
    public class LoginTests
    {
        private IWebDriver _driver;

        [TestInitialize]
        public void Setup()
        {
            _driver = new ChromeDriver();
        }

        [TestCleanup]
        public void Teardown()
        {
            _driver.Quit();
        }

        [TestMethod]
        public void Login_ValidCredentials_RedirectsToHomePage()
        {
            // Điều hướng đến trang đăng nhập
            _driver.Navigate().GoToUrl("https://localhost:7027/");

            // Nhập tên người dùng và mật khẩu
            _driver.FindElement(By.Name("Username")).SendKeys("a");
            _driver.FindElement(By.Name("Password")).SendKeys("1");

            // Nhấn nút đăng nhập
            _driver.FindElement(By.CssSelector("button[type='SIGN IN']")).Click();

            // Kiểm tra xem có chuyển hướng đến trang chính không
            Assert.AreEqual("https://localhost:7027/Home/Index", _driver.Url);
        }

        [TestMethod]
        public void Login_InvalidCredentials_ShowsErrorMessage()
        {
            // Điều hướng đến trang đăng nhập
            _driver.Navigate().GoToUrl("https://localhost:7027/");

            // Nhập thông tin đăng nhập không hợp lệ
            _driver.FindElement(By.Name("Username")).SendKeys("wronguser");
            _driver.FindElement(By.Name("Password")).SendKeys("wrongpassword");

            // Nhấn nút đăng nhập
            _driver.FindElement(By.CssSelector("button[type='SIGN IN']")).Click();

            // Kiểm tra thông báo lỗi
            var errorMessage = _driver.FindElement(By.ClassName("alert-danger")); // Cần đảm bảo có class này trong HTML nếu hiển thị thông báo lỗi
            Assert.IsTrue(errorMessage.Displayed);
        }
    }
}
