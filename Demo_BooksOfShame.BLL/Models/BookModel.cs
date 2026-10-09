namespace Demo_BooksOfShame.BLL.Models
{
    public class BookModel
    {
        public Guid Id { get; set; }
        public string Title { get; set; }
        public string? Desc { get; set; }
        public string Status { get; set; }
        public DateTime CreateDate { get; set; }
    }
}
