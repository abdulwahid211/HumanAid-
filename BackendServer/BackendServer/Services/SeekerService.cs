using BackendServer.Entities;
namespace BackendServer.Services
{
    public class SeekerService : ISeekerService
    {
        private DataContext _context;

        public SeekerService(
    DataContext context)
        {
            _context = context;
        }


        public IEnumerable<Seeker> GetAll()
        {
            return _context.Seekers;
        }
    }
}
