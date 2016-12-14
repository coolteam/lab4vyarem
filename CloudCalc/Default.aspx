<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CloudCalc.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cloud calc v1</title>
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="css/CloudCalc.css"  media="screen,projection"/>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
    <form id="form1"  runat="server">
    <div>
        <div class="col s12 m7">
            <h2 class="header">Хмарковий калькулятор GitHub version</h2>
            <div class="card horizontal">
                <div class="card-image">
                    <img src="http://lorempixel.com/output/technics-h-c-100-190-7.jpg">
                  </div>
                <div class="card-stacked">
                <div class="card-content">
                     <div class="row">
                        <div class="input-field col s12">
                            <asp:TextBox ID="firstNumber" CssClass="firstNumberCssClass" runat="server"></asp:TextBox>
                          <label for="firstNumber">Перше число</label>
                        </div>
                      </div>
                    <div class="row">
                        <div class="input-field col s12">
                          <asp:TextBox  ID="secondNumber" CssClass="secondNumberCssClass" runat="server"></asp:TextBox>
                          <label for="secondNumber">Друге число</label>
                        </div>
                      </div>
                </div>
                <div class="card-action">
                    <div class="row">
                        <div class="input-field col s12">
                          <asp:TextBox TextMode="Number"  Enabled="False" ID="result" runat="server"></asp:TextBox>
                          <label for="result">Результат</label>
                        </div>
                      </div>
                    
                </div>
                </div>
            </div>
        </div>
        <div class="fixed-action-btn horizontal">
                        <a class="btn-floating btn-large red">
                          <i class="large material-icons">input</i>
                        </a>
                        <ul>
                            <li>
                                <asp:Button runat="server" ID="btnAdd" Text="add" CssClass="btn-floating red material-icons"
                                    OnClick="btnAdd_OnClick"/>
                            </li>
                            <li>
                                <asp:Button runat="server" ID="btnSub" Text="-" CssClass="btn-floating yellow darken-1 material-icons"
                                    OnClick="btnSub_OnClick"/>
                            </li>
                            <li>
                                <asp:Button runat="server" ID="btnMult" Text="*" CssClass="btn-floating green material-icons"
                                    OnClick="btnMult_OnClick"/>
                            </li>
                            <li>
                                <asp:Button runat="server" ID="btnDiv" Text="/" CssClass="btn-floating blue material-icons"
                                    OnClick="btnDiv_OnClick"/>
                            </li>
                        </ul>
                  </div>
    </div>
    </form>
    <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.14.0/jquery.validate.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
      <script type="text/javascript" src="js/CloudCalc.js"></script>
</body>
</html>
