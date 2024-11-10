using LoginTests;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;

namespace MyApp.Tests.SeleniumTests
{
    [TestClass]
    public class LoginTests
    {
        private IWebDriver _driver;

        public object By { get; private set; }

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

            _driver.Navigate().GoToUrl("https://localhost:7027/");

            _driver.FindElement(By.Name("Username")).SendKeys("a");
            _driver.FindElement(By.Name("Password")).SendKeys("1");

            _driver.FindElement(By.CssSelector("button[type='SIGN IN']")).Click();


            Assert.AreEqual("https://localhost:7027/Home/Index/", _driver.Url);
        }

        [TestMethod]
        public void Login_InvalidCredentials_ShowsErrorMessage()
        {

            _driver.Navigate().GoToUrl("https://localhost:7027/");


            _driver.FindElement(By.Name("Username")).SendKeys("wronguser");
            _driver.FindElement(By.Name("Password")).SendKeys("wrongpassword");


            _driver.FindElement(By.CssSelector("button[type='SIGN IN']")).Click();


            var errorMessage = _driver.FindElement(By.ClassName("alert-danger")); 
            Assert.IsTrue(errorMessage.Displayed);
        }
    }
}