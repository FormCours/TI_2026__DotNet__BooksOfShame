namespace Demo_BooksOfShame.DAL.Entities
{
    public class BookEntity
    {
        public Guid Id { get; set; }
        public string Title { get; set; }
        public string? Desc { get; set; }
        public BookStatusEntity Status { get; set; }
        public DateTime CreateDate { get; set; }
    }
}
