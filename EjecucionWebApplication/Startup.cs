using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EjecucionWebApplication.Startup))]
namespace EjecucionWebApplication
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
