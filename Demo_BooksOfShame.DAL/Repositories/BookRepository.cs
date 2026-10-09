using Demo_BooksOfShame.DAL.Entities;
using Microsoft.Data.SqlClient;

namespace Demo_BooksOfShame.DAL.Repositories
{
    public class BookRepository
    {
        private string _connectionString = "Data Source=localhost;Database=BooksOfShame;Integrated Security=True;Trust Server Certificate=True;";

        public IEnumerable<BookEntity> GetBooks()
        {
            using SqlConnection connection = new SqlConnection(_connectionString);

            using SqlCommand command = connection.CreateCommand();
            command.CommandText = "SELECT [B].*, [BS].[Name] AS [Status_Name]" +
                                  " FROM [Book] [B]" +
                                  "     JOIN [Book_Status] [BS] ON [B].[Status_Id] = [BS].[Id]";

            connection.Open();

            using SqlDataReader reader = command.ExecuteReader();
            while(reader.Read())
            {
                yield return new BookEntity()
                {
                    Id = (Guid)reader["Id"],
                    Title = (string)reader["Title"],
                    Desc = (reader["Desc"] is not DBNull) ? (string?)reader["Desc"] : null,
                    CreateDate = (DateTime)reader["Create_Date"],
                    Status = new BookStatusEntity()
                    {
                        Id = (int)reader["Status_Id"],
                        Name = (string)reader["Status_Name"]
                    }
                };
            }
        }
    }
}
