namespace LoginTests
{
    internal interface IWebDriver
    {
        object FindElement(object value);
        object Navigate();
    }
}