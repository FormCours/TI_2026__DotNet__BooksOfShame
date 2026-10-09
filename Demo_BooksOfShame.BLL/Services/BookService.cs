using Demo_BooksOfShame.BLL.Mappers;
using Demo_BooksOfShame.BLL.Models;
using Demo_BooksOfShame.DAL.Repositories;

namespace Demo_BooksOfShame.BLL.Services
{
    public class BookService
    {
        private readonly BookRepository _bookRepository;
        public BookService()
        {
            _bookRepository = new BookRepository();
        }

        public IEnumerable<BookModel> GetAll()
        {
            return _bookRepository.GetBooks().Select(b => b.ToModel());
            //return _bookRepository.GetBooks().Select(BookMapper.ToModel);
        }
    }
}
