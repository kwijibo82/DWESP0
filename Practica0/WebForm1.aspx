<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practica0.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link href="css/StyleSheetPractica0.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Petició</title>
</head>

<body>
    &nbsp; 
    
            <form id="form1" runat="server">
                <div id="tot">
                    <header>
                        <div id="logo">
                        </div>
                        <div id="data">
                            <asp:Calendar ID="Calendar" runat="server"></asp:Calendar>
                        </div>
                        <br />
                    </header>
                    <section>
                        <header>
                            Dades alumne
                        </header>

                        <article>
                            <div class="etiquetas">
                                <asp:Label ID="LabelNom" runat="server" Text="Nom"></asp:Label>
                            </div>
                            <div class="boxesAndDropDownLists">
                                <asp:TextBox ID="TextBoxNom" runat="server" OnTextChanged="TextBoxNom_TextChanged">
                                </asp:TextBox>
                            </div>
                            <div class="messagesAndValidations">
                                <asp:RequiredFieldValidator
                                    ID="RequiredFieldValidatorNom"
                                    runat="server"
                                    ErrorMessage="Campo requerido"
                                    ControlToValidate="TextBoxNom"></asp:RequiredFieldValidator>
                            </div>
                            <br />
                            <div class="etiquetas">
                                <asp:Label ID="LabelCognom" runat="server" Text="Cognom"> </asp:Label>
                            </div>
                            <div class="boxesAndDropDownLists">
                                <asp:TextBox ID="TextBoxCognom" runat="server"></asp:TextBox>
                            </div>
                            <div class="messagesAndValidations">
                                <asp:RequiredFieldValidator
                                    ID="RequiredFieldValidatorCognom"
                                    runat="server"
                                    ErrorMessage="Campo requerido"
                                    ControlToValidate="TextBoxCognom"></asp:RequiredFieldValidator>
                            </div>
                            
                            
                            <br />
                        </article>
                    </section>
                    <section>
                        <header>
                            Mòdul professional a cursar<br />
                            <br />

                        </header>
                        <article>

                            Mòdul professional&nbsp;
                            <div class="boxesAndDropDownLists">
                                <asp:DropDownList
                                    ID="DropDownListModuls"
                                    runat="server"
                                    OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                                    Height="24px"
                                    Width="226px">
                                    <asp:ListItem>DWES</asp:ListItem>
                                    <asp:ListItem>DWEC</asp:ListItem>
                                    <asp:ListItem>DIW</asp:ListItem>
                                    <asp:ListItem>DAW</asp:ListItem>
                                    <asp:ListItem>PROJECTE</asp:ListItem>
                                    <asp:ListItem>ED</asp:ListItem>
                                    <asp:ListItem>BD2</asp:ListItem>

                                </asp:DropDownList>
                            </div>
                            <asp:CheckBoxList
                                ID="CheckBoxListUFs"
                                runat="server"
                                Height="41px"
                                RepeatDirection="Horizontal"
                                Width="61px">
                                <asp:ListItem>UF1</asp:ListItem>
                                <asp:ListItem>UF2</asp:ListItem>
                                <asp:ListItem>UF3</asp:ListItem>
                                <asp:ListItem>UF4</asp:ListItem>
                                <asp:ListItem>UF5</asp:ListItem>
                                <asp:ListItem>UF5</asp:ListItem>
                            </asp:CheckBoxList>
                        </article>

                    </section>
                    <section id="cursMatriculat">
                        <header>
                            Curs on està matriculat
                        </header>
                        <article>

                            <asp:Label ID="labelTorn" runat="server" Text="Torn"></asp:Label>
                            
                            <asp:RadioButtonList 
                                ID="RadioButtonListTorn" 
                                runat="server"
                                OnSelectedIndexChanged="RadioButtonListTorn_SelectedIndexChanged" AutoPostBack="True">
                                <asp:ListItem Selected="True">Matí</asp:ListItem>
                                <asp:ListItem>Tarda</asp:ListItem>
                            </asp:RadioButtonList>
                            
                            <br />
                            <div class="etiquetas">
                                <asp:Label ID="LabelCurs" runat="server" Text="Curs"></asp:Label>
                            </div>
                            <div class="boxesAndDropDownLists">
                                <asp:DropDownList ID="DropDownListCursMatriculat" runat="server" Height="17px" Width="216px" OnSelectedIndexChanged="DropDownListCurs_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList>
                            </div>
                            <br />
                            <div class="etiquetas">
                                <asp:Label ID="LabelTutor" runat="server" Text="Tutor" CssClass="buttonAfegirResumStyle"></asp:Label>
                            </div>
                            <div class="boxesAndDropDownLists">
                                <asp:DropDownList ID="DropDownListTutor" runat="server" Height="17px" Width="213px" AutoPostBack="True">
                                    <asp:ListItem>Domingo, Antonio</asp:ListItem>
                                    <asp:ListItem>Fernández, Francisco</asp:ListItem>
                                    <asp:ListItem>Galcerà, Xavier</asp:ListItem>
                                    <asp:ListItem>García, José Luís</asp:ListItem>
                                    <asp:ListItem>Ríos, Àlex</asp:ListItem>
                                    <asp:ListItem>Segura, Consuelo</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <br />
                            <div class="etiquetas">
                                <asp:Label ID="LabelProfessor" runat="server" Text="Professor"></asp:Label>
                            </div>
                            <div class="boxesAndDropDownLists">
                                <asp:DropDownList ID="DropDownListProfessor" runat="server" Height="16px" Width="188px" AutoPostBack="True">
                                    <asp:ListItem>Domingo, Antonio</asp:ListItem>
                                    <asp:ListItem>Fernández, Francisco</asp:ListItem>
                                    <asp:ListItem>Galcerà, Xavier</asp:ListItem>
                                    <asp:ListItem>García, José Luís</asp:ListItem>
                                    <asp:ListItem>Méndez, Urbano</asp:ListItem>
                                    <asp:ListItem>Ríos, Alex</asp:ListItem>
                                    <asp:ListItem>Segura, Consuelo</asp:ListItem>
                                    <asp:ListItem>Serrano, Joan</asp:ListItem>
                                    <asp:ListItem>Sotorra, Miquel</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <br />

                        </article>
                    </section>
                    <section id="cursNou">
                        <header>
                            Curs on vol anar
                        </header>
                        <article>
                            <div class="etiquetas">
                                <asp:Label ID="labelTornCursNou" runat="server" Text="Torn"></asp:Label>
                            </div>
                            <asp:RadioButtonList
                                 ID="RadioButtonListCurs" 
                                 runat="server"
                                 OnSelectedIndexChanged="RadioButtonListCurs_SelectedIndexChanged" AutoPostBack="True">
                                <asp:ListItem Selected="True">Matí</asp:ListItem>
                                <asp:ListItem>Tarda</asp:ListItem>
                            </asp:RadioButtonList>
                            <br />
                            <div class="etiquetas">
                                <asp:Label ID="LabelCursCursNou" runat="server" Text="Curs"></asp:Label>
                            </div>
                            <div class="boxesAndDropDownLists">
                                <asp:DropDownList 
                                    ID="DropDownListCursCursNou" 
                                    runat="server" 
                                    Height="17px" 
                                    Width="216px" AutoPostBack="True">
                                </asp:DropDownList>
                            </div>
                            <br />
                            <div class="etiquetas">
                                <asp:Label ID="LabelTutorCursNou" runat="server" Text="Tutor"></asp:Label>
                            </div>
                            <div class="boxesAndDropDownLists">
                                <asp:DropDownList ID="DropDownListTutorCursNou" runat="server" Height="17px" Width="213px" AutoPostBack="True">
                                    <asp:ListItem>Domingo,Antonio</asp:ListItem>
                                    <asp:ListItem>Fernández, Francisco</asp:ListItem>
                                    <asp:ListItem>Galcerà, Xavier</asp:ListItem>
                                    <asp:ListItem>García, José Luís</asp:ListItem>
                                    <asp:ListItem>Ríos, Àlex</asp:ListItem>
                                    <asp:ListItem>Segura, Consuelo</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <br />
                            <div class="etiquetas">
                                <asp:Label ID="LabelProfessorCursNou" runat="server" Text="Professor"></asp:Label>
                            </div>
                            <div class="boxesAndDropDownLists">
                                <asp:DropDownList ID="DropDownListProfessorCursNou" runat="server" Height="16px" Width="188px" AutoPostBack="True">
                                    <asp:ListItem>Domingo, Antonio</asp:ListItem>
                                    <asp:ListItem>Fernández, Francisco</asp:ListItem>
                                    <asp:ListItem>Galcerà, Xavier</asp:ListItem>
                                    <asp:ListItem>García, José Luís</asp:ListItem>
                                    <asp:ListItem>Méndez, Urbano</asp:ListItem>
                                    <asp:ListItem>Ríos, Àlex</asp:ListItem>
                                    <asp:ListItem>Segura, Consuelo</asp:ListItem>
                                    <asp:ListItem>Serrano, Joan</asp:ListItem>
                                    <asp:ListItem>Sotorra Miquel</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <br />
                            <br />
                        </article>
                    </section>

                    <asp:Button CssClass="botones" ID="ButtonAfegirResum" runat="server" Text="Afegir resum" OnClick="ButtonElimianrSeleccionats0_Click" />

                    <section id="resum">
                        <header>
                            Resum
                            <br />                            
                        </header>
                        <article>
                              <asp:Button cssClass="botones" ID="ButtonEliminarSeleccionats" runat="server" OnClick="ButtonEliminarSeleccionats_Click" Text="Eliminar Seleccionats" CausesValidation="False" />
                              <asp:Button cssClass="botones" ID="ButtonEliminarTots" runat="server" OnClick="ButtonEliminarTots_Click" Text="Eliminar Tots" CausesValidation="False" />
                            <asp:ListBox ID="ListBoxResum" runat="server" Height="76px" Width="838px"></asp:ListBox>
                        </article>
                    </section>
   
                 </div>

            </form>

</body>



</html>
