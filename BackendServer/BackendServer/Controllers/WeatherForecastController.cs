using Microsoft.AspNetCore.Mvc;

namespace BackendServer.Controllers
{
    [ApiController]
    [Route("[controller]/Abzy")]
    public class WeatherForecastsss : ControllerBase
    {
        private static readonly string[] Summaries = new[]
        {
        "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
    };

        private readonly ILogger<WeatherForecastsss> _logger;

        public WeatherForecastsss(ILogger<WeatherForecastsss> logger)
        {
            _logger = logger;
        }

        [HttpGet(Name = "ppppppWeatherForecastspppppppppp")]
        public IEnumerable<WeatherForecast> Get()
        {
            return Enumerable.Range(1, 5).Select(index => new WeatherForecast
            {
                Date = DateTime.Now.AddDays(index),
                TemperatureC = Random.Shared.Next(-20, 55),
                Summary = Summaries[Random.Shared.Next(Summaries.Length)]
            })
            .ToArray();
        }
    }
}