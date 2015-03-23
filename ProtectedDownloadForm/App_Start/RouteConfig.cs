
namespace ProtectedDownloadForm
{


    public static class RouteConfig
    {


        public static void RegisterRoutes(System.Web.Routing.RouteCollection routes)
        {
            // routes.EnableFriendlyUrls();
            Microsoft.AspNet.FriendlyUrls.RouteCollectionExtensions.EnableFriendlyUrls(routes);
        }


    } // End Class RouteConfig


} // End Namespace ProtectedDownloadForm
