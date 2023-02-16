using BackendServer.Services;
using Microsoft.AspNetCore.Mvc;

namespace BackendServer.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class SeekerController : Controller
    {
        private ISeekerService _seekerService;

        public SeekerController(ISeekerService seekerService)
        {
            _seekerService = seekerService;
        }

        [HttpGet]
        public IActionResult GetAll()
        {
            var users = _seekerService.GetAll();
            return Ok(users);
        }

    }
}
