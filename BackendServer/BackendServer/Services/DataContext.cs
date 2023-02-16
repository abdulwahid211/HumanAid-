using Microsoft.EntityFrameworkCore;
using BackendServer.Models;
namespace BackendServer.Services;

using BackendServer.Entities;
using Microsoft.EntityFrameworkCore;


public class DataContext : DbContext
{
    protected readonly IConfiguration Configuration;

    public DataContext(IConfiguration configuration)
    {
        Configuration = configuration;
    }

    protected override void OnConfiguring(DbContextOptionsBuilder options)
    {
        // connect to mysql with connection string from app settings
        var connectionString = Configuration.GetConnectionString("HumanaidDatabase");
        options.UseMySql(connectionString, ServerVersion.AutoDetect(connectionString));
    }

    public DbSet<Seeker> Seekers { get; set; }

    public DbSet<BackendServer.Models.SeekerDto> SeekerDto { get; set; }
}

