<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Rules.aspx.cs" Inherits="CST_Transfer_UI_Project.Rules" %>

<asp:Content ID="Content2" ContentPlaceHolderID="PageTitle" runat="server">
    Set Rules
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PageHeader" runat="server">
    Rules    
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container text-center border border-dark px-0">

            <!-- Container Header -->
            <div class="col-xs-12 border border-dark h3 m-0">
                Set Rules
            </div>

            <!-- Grace Period -->
            <div class="col-xs-12 text-center m-5">
                Student Grace Period: 
                <asp:TextBox placeholder="10 Days" runat="server" />
                <div class="d-inline bg-light border border-dark">
                    DAYS
                </div>
            </div>


            <!-- FA Header -->
            <div class="col-xs-12 text-center h3">
                Associate Faculty Advisors     
            </div>


            <!-- FA Content -->
            <div class="col-10 offset-1 text-center border border-dark" style="background-color: #FFF4F4">

                <!-- BIO FAs -->
                <div class="row text-center m-3">

                    <div class="col-5 text-right">
                        Bio FA TUID: 
                    </div>

                    <div class="d-inline">
                        <asp:TextBox ID="txt1" placeholder="TUID" runat="server"/> <br />
                    </div>

                    <div class="col text-left">
                        <asp:Image ID="btnAdd" src="pics/PlusSquare.png" Style="width: 30px" runat="server" /> <br />
                    </div>
                </div>

                <!-- BIO FA 1 -->
                <div class="row text-center m-3 ">
                    
                    <div class="col-6 text-right"></div>

                    <div class="d-inline">
                            <asp:TextBox Text="Bio Advisor 1" runat="server" Style="background-color: darkgray" ReadOnly="True" /> <br />
                    </div>

                    <div class="col text-left">
                        <asp:Image id="btnMinus" src="pics/MinusSquare.png" style="width: 30px" runat="server" />
                    </div>
                </div>
                <!-- End BIO -->

                <!-- CHEM FAs -->
                <div class="row text-center m-3">

                    <div class="col-5 text-right">
                        Chemistry FA TUID: 
                    </div>

                    <div class="d-inline">
                        <asp:TextBox placeholder="TUID" runat="server" />
                    </div>

                    <div class="col text-left">
                        <img src="pics/PlusSquare.png" style="width: 30px" />
                    </div>
                </div>

                <!-- CHEM FA 1 -->
                <div class="row text-center m-3 ">
                    
                    <div class="col-6 text-right"></div>

                    <div class="d-inline">
                            <asp:TextBox Text="Chem Advisor 1" runat="server" Style="background-color: darkgray" ReadOnly="True" /> <br />
                    </div>

                    <div class="col text-left">
                        <asp:Image id="Image1" src="pics/MinusSquare.png" style="width: 30px" runat="server" />
                    </div>
                </div>

                <!-- CHEM FA 2 -->
                <div class="row text-center m-3 ">
                    
                    <div class="col-6 text-right"></div>

                    <div class="d-inline">
                            <asp:TextBox Text="Chem Advisor 1" runat="server" Style="background-color: darkgray" ReadOnly="True" /> <br />
                    </div>

                    <div class="col text-left">
                        <asp:Image id="Image2" src="pics/MinusSquare.png" style="width: 30px" runat="server" />
                    </div>
                </div>
                <!-- End CHEM -->

                <!-- CST FAs -->
                <div class="row text-center m-3">

                    <div class="col-5 text-right">
                        Computer Science FA TUID: 
                    </div>

                    <div class="d-inline">
                        <asp:TextBox placeholder="TUID" runat="server" />
                    </div>

                    <div class="col text-left">
                        <img src="pics/PlusSquare.png" style="width: 30px" />
                    </div>
                </div>
                <!-- End CST -->

                <!-- Eart Science FAs -->
                <div class="row text-center m-3">

                    <div class="col-5 text-right">
                        Earth/Environment FA TUID: 
                    </div>

                    <div class="d-inline">
                        <asp:TextBox placeholder="TUID" runat="server" />
                    </div>

                    <div class="col text-left">
                        <img src="pics/PlusSquare.png" style="width: 30px" />
                    </div>

                </div>
                <!-- End Earth Sciences -->

                <!-- Math FAs -->
                <div class="row text-center m-3">

                    <div class="col-5 text-right">
                        Math FA TUID: 
                    </div>

                    <div class="d-inline">
                        <asp:TextBox placeholder="TUID" runat="server" />
                    </div>

                    <div class="col text-left">
                        <img src="pics/PlusSquare.png" style="width: 30px" />
                    </div>
                </div>
                <!-- End Math -->

                <!-- Physics FAs -->
                <div class="row text-center m-3">

                    <div class="col-5 text-right">
                        Physics FA TUID: 
                    </div>

                    <div class="d-inline">
                        <asp:TextBox placeholder="TUID" runat="server" />
                    </div>

                    <div class="col text-left">
                        <img src="pics/PlusSquare.png" style="width: 30px" />
                    </div>

                </div>
                <!-- End Physics -->

            </div>
            <!-- End FAs -->

            <!-- Save Changes Button -->
            <asp:Button Style="background-color: rgb(158,28,53); border-radius: 5px; color: white; margin: 15px" Text="Save Changes" runat="server" />

        </div>
        <!-- End Page Container -->

</asp:Content>
