namespace BackendServer.Models;
using System.ComponentModel.DataAnnotations;

public class SeekerDto
{
    [Required]
    public int Id { get; set; }
    [Required]
    public string Username { get; set; }
    [Required]
    public string Telephone { get; set; }
    [Required]
    public string Email { get; set; }
    [Required]
    public string Postcode { get; set; }
    [Required]
    public string City { get; set; }


}

