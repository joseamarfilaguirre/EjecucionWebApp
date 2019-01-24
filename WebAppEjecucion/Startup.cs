using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebAppEjecucion.Startup))]
namespace WebAppEjecucion
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
