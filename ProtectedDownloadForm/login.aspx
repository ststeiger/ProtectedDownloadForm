<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ProtectedDownloadForm.login" %>

<!DOCTYPE html>
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta charset="UTF-8" />
    <title>Login Page</title>

    <meta http-equiv="cache-control" content="max-age=0" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
    <meta http-equiv="pragma" content="no-cache" />

    <style type="text/css">
        
        html, body, form
        {
            margin: 0px; 
            padding: 0px;
            width: 100%;       
            height: 100%;
        }
        

        textarea:focus, input[type="text"]:focus, input[type="password"]:focus, input[type="datetime"]:focus, input[type="datetime-local"]:focus, input[type="date"]:focus, input[type="month"]:focus, input[type="time"]:focus, input[type="week"]:focus, input[type="number"]:focus, input[type="email"]:focus, input[type="url"]:focus, input[type="search"]:focus, input[type="tel"]:focus, input[type="color"]:focus, .uneditable-input:focus
        {
            border-color: rgba(82,168,236,0.8);
            outline: 0;
            outline: thin dotted \9;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.075),0 0 8px rgba(82,168,236,0.6);
            -moz-box-shadow: inset 0 1px 1px rgba(0,0,0,0.075),0 0 8px rgba(82,168,236,0.6);
            box-shadow: inset 0 1px 1px rgba(0,0,0,0.075),0 0 8px rgba(82,168,236,0.6);
        }

        select, textarea, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"], .uneditable-input
        {
            /*
            display: inline-block;
            
            height: 20px;

            margin-bottom: 10px;
            font-size: 14px;
            line-height: 20px;
            vertical-align: middle;
            */
            padding: 4px 6px;
            color: #555;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
        }

        textarea, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"], .uneditable-input
        {
            background-color: #fff;
            border: 1px solid #ccc;

            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
            -moz-box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);

            -webkit-transition: border linear .2s,box-shadow linear .2s;
            -moz-transition: border linear .2s,box-shadow linear .2s;
            -o-transition: border linear .2s,box-shadow linear .2s;
            transition: border linear .2s,box-shadow linear .2s;
        }
        
        .btn-primary
        {
            color: #fff;
            background-color: #337ab7;
            border-color: #2e6da4;
        }

        .btn-primary:hover, .btn-primary:focus, .btn-primary:active
        {
            color: #fff;
            background-color: #286090;
            border-color: #204d74;
        }

        .btn
        {
            display: inline-block;
            padding: 6px 12px;
            margin-bottom: 0;
            font-size: 14px;
            font-weight: 400;
            line-height: 1.42857143;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -ms-touch-action: manipulation;
            touch-action: manipulation;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            background-image: none;
            border: 1px solid transparent;
            border-radius: 4px;
            width: 100%;
            font-weight: bold;
            text-transform: uppercase;
        }

        .btn:focus 
        {
            outline: thin dotted;
            outline: 5px auto -webkit-focus-ring-color;
            outline-offset: -2px;
        }

        .btn:hover
        {
            /*color: #FFFC00;*/
            color: #F9F9F9;
            font-weight: bold;
            text-decoration: none;
        }

        .btn:active 
        {
            background-image: none;
            outline: 0;
            -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);
            box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);
        }

        fieldset[disabled] .btn
        {
            pointer-events: none;
            cursor: not-allowed;
            filter: alpha(opacity=65);
            -webkit-box-shadow: none;
            box-shadow: none;
            opacity: .65;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">
        
        <div class="greenBorder" style="display: table; width: 100%; height: 100%; #position: relative; overflow: hidden;">
    
            <div style=" #position: absolute; #top: 50%;display: table-cell; vertical-align: middle;">
                <div class="greenBorder" style=" #position: relative; #top: -50%">

                    <div style="display: table; margin-right: auto; margin-left: auto;">
                        <!-- Vertically centered -->
                         <div style="float: left;">
                            <asp:TextBox ID="txtPassword" Text="" runat="server" TextMode="Password" placeholder="Password" />
                            <div style="clear: both; height: 2mm;">&nbsp;</div>
                            <div style="text-align: left;">
                                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnLogin_Click"  />
                            </div>
                        </div>
                        <!-- Vertically centered -->
                    </div>

                </div>
            </div>
        </div>

    </form>

</body>
</html>
