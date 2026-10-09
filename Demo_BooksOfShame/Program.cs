using Demo_BooksOfShame.BLL.Models;
using Demo_BooksOfShame.BLL.Services;

Console.WriteLine("Demo - Books of shame");


BookService bookService = new BookService();

IEnumerable<BookModel> books = bookService.GetAll();


foreach(BookModel book in books)
{
    Console.WriteLine(" - " + book.Title);
}