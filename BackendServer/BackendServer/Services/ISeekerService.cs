using BackendServer.Entities;

namespace BackendServer.Services
{
    public interface ISeekerService
    {
        IEnumerable<Seeker> GetAll();
    }
}
