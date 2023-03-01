using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CustomerGuarantee.Startup))]
namespace CustomerGuarantee
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
