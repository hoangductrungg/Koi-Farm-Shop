using Microsoft.VisualStudio.TestTools.UnitTesting;
using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using X.PagedList;

namespace SanPhamTheoLoaiTests
{
    public class SanPhamTheoLoaiTests
    {
        private IWebDriver driver;

        [SetUp]
        public void Setup()
        {
            driver = new ChromeDriver();
            driver.Navigate().GoToUrl("https://localhost:7027/home/index");
        }

        [Test]
        public void VerifyProductsDisplay()
        {
            // Kiểm tra xem các sản phẩm được hiển thị đúng theo danh mục
            var productList = driver.FindElements(By.ClassName("product__item"));
            Assert.Greater(productList.Count, 0, "No products are displayed on the page");

            // Kiểm tra xem mỗi sản phẩm có đúng các thông tin cần thiết
            foreach (var product in productList)
            {
                var productName = product.FindElement(By.ClassName("product__item__text h6 a")).Text;
                var productPrice = product.FindElement(By.ClassName("product__item__text span")).Text;
                Assert.IsNotNull(productName, "Product name is missing");
                Assert.IsNotNull(productPrice, "Product price is missing");
            }
        }

        [Test]
        public void VerifyPagination()
        {
            // Kiểm tra xem phân trang có hoạt động đúng
            var pageLinks = driver.FindElements(By.ClassName("page-link"));
            Assert.Greater(pageLinks.Count, 2, "Pagination links are not displayed correctly");

            // Bấm vào một trang khác và kiểm tra URL
            pageLinks[1].Click(); // Bấm vào trang thứ 2
            StringAssert.Contains("page=1", driver.Url, "URL does not contain the expected page parameter");
        }

        [TearDown]
        public void TearDown()
        {
            driver.Quit();
        }
    }
}