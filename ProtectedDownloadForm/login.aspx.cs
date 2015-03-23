
using System.Web.Security;


namespace ProtectedDownloadForm
{


    public partial class login : System.Web.UI.Page
    {


        protected void Page_Load(object sender, System.EventArgs e)
        {
            // string[] userLanguages = this.Request.UserLanguages;
            // string strLang = string.Join("\",\"", userLanguages);
            // var x = new System.Globalization.CultureInfo(this.Request.UserLanguages != null ? this.Request.UserLanguages[0] : "en-US");
            // System.Console.WriteLine(x.);

            // System.Console.WriteLine(strLang);

            this.txtPassword.Attributes["placeholder"] = GetTranslation("Password");
            this.btnLogin.Text = GetTranslation("Login");
            this.Title = GetTranslation("Login");
        } // End Sub Page_Load 


        public string GetTranslation(string strKey)
        {
            System.Collections.Generic.Dictionary<string, System.Collections.Generic.Dictionary<string, string>> dict =
                  new System.Collections.Generic.Dictionary<string, System.Collections.Generic.Dictionary<string, string>>();

            dict.Add("de-CH", new System.Collections.Generic.Dictionary<string, string>());
            dict.Add("en-US", new System.Collections.Generic.Dictionary<string, string>());
            dict.Add("uk-UA", new System.Collections.Generic.Dictionary<string, string>());
            dict.Add("ru-RU", new System.Collections.Generic.Dictionary<string, string>());
            dict.Add("vi-VN", new System.Collections.Generic.Dictionary<string, string>());

            dict["de-CH"]["Login"] = "Login";
            dict["de-CH"]["Password"] = "Passwort";
            
            dict["en-US"]["Login"] = "Login";
            dict["en-US"]["Password"] = "Password";

            dict["ru-RU"]["Login"] = "Логін";
            dict["ru-RU"]["Password"] = "Пароль";

            dict["uk-UA"]["Login"] = "Логин";
            dict["uk-UA"]["Password"] = "Пароль";

            dict["vi-VN"]["Login"] = "Đăng nhập";
            dict["vi-VN"]["Password"] = "Mật khẩu";



            string strLang = (
                new System.Globalization.CultureInfo(this.Request.UserLanguages != null ? 
                this.Request.UserLanguages[0] : "en-US")
                ).TextInfo.CultureName;

            if (dict.ContainsKey(strLang))
                if (dict[strLang].ContainsKey(strKey))
                    return dict[strLang][strKey];

            //return "404: " + strKey;
            return strKey;
        } // End Function GetTranslation


        public static bool Authenticate(string pw)
        {
            //return true;

            if (System.StringComparer.InvariantCultureIgnoreCase.Equals("123789", pw))
                return true;

            return false;
        } // End Function Authenticate


        protected void btnLogin_Click(object sender, System.EventArgs e)
        {
            if (!Authenticate(this.txtPassword.Text))
                return;

            // int expiryInMinutes = 60 * 24 * 7;
            System.Guid userGuid = System.Guid.NewGuid();

            // System.DateTime cookieExpiration = System.DateTime.Today.AddMinutes(expiryInMinutes);
            System.DateTime cookieExpiration = System.DateTime.UtcNow.Date.AddDays(8).AddMilliseconds(-1);
            
            System.Web.Security.FormsAuthenticationTicket authenticationTicket =
                new FormsAuthenticationTicket(
                    2
                    , userGuid.ToString()
                    , System.DateTime.Now
                    , cookieExpiration
                    , true
                    , string.Empty
                    , FormsAuthentication.FormsCookiePath
            );

            // Ticket must be encrypted
            string encryptedTicket = FormsAuthentication.Encrypt(authenticationTicket);

            // Create cookie to contain encrypted auth ticket
            System.Web.HttpCookie authCookie = new System.Web.HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);
            authCookie.Expires = authenticationTicket.Expiration;
            authCookie.Path = FormsAuthentication.FormsCookiePath;

            // Clear out existing cookie for good measure (probably overkill) then add
            // HttpContext.Current.Response.Cookies.Remove(FormsAuthentication.FormsCookieName);
            System.Web.HttpContext.Current.Response.Cookies.Add(authCookie);

            Response.Redirect("~/Index.aspx");
        } // End Sub btnLogin_Click 


    } // End Class login : System.Web.UI.Page


} // End Namespace ProtectedDownloadForm
