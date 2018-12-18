using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CafeManagement.Startup))]
namespace CafeManagement
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
