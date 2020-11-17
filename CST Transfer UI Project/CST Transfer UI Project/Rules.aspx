<%@ Page Title="Rules" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Rules.aspx.cs" Inherits="CST_Transfer_UI_Project.Rules" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Page_Name" runat="server">
Rules
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container text-center border border-dark px-0">

            <div class="container text-center border border-dark px-0">

            <!-- Container Header -->
            <div class="col-xs-12 border border-dark h3 m-0">
                Set Rules
            </div>

            <!-- Grace Period -->

            <div class="input-group justify-content-center my-5">

                <div class="input-group-prepend">
                    <span class="input-group-text" style="background-color: #FFF4F4">Student Grace Period: </span>
                </div>

                <asp:TextBox placeholder="14" runat="server" />

                <div class="input-group-append">
                    <span class="input-group-text" style="background-color: #FFF4F4">DAYS </span>
                </div>
            </div>


            <!-- FA Header -->
            <div class="col-xs-12 text-center h3">
                Associate Faculty Advisors     
            </div>


            <!-- FA Content -->
            <div class="col-10 offset-1 text-center border border-dark pb-3" style="background-color: #FFF4F4">

                <!-- BIO FAs -->
                <div class="row text-center mt-3">

                    <div class="col-5 text-right">
                        Bio FA TUID: 
                    </div>

                    <div class="d-inline">
                        <asp:TextBox ID="txtBio" placeholder="TUID" runat="server" />
                        <br />
                    </div>

                    <!-- Add Button -->
                    <div class="col text-left">
                        <asp:ImageButton ID="btnBioAdd" runat="server" ImageUrl="images/PlusSquare.png" Text="" Width="30px" OnClick="btnBioAdd_Click" />
                        <br />
                    </div>
                </div>

                <!-- Bio FA Repeater -->
                <asp:Repeater ID="rptBio" runat="server">
                    <ItemTemplate>

                        <!-- Wrapper -->
                        <div class="d-inline-flex justify-content-center offset-1 my-1">

                            <!-- Input Group -->
                            <div class="input-group">


                                <!-- FA TUID -->
                                <asp:TextBox Text="<%# Container.DataItem.ToString() %>" Width="65%" runat="server" Style="background-color: darkgray" ReadOnly="True" />

                                <!-- Remove Button -->
                                <div class="input-group-append">
                                    
                                        <asp:ImageButton type="button" ID="btnBioMinus" runat="server" ImageUrl="images/MinusSquare.png" Text="" Width="30px"
                                            CommandName="Bio"
                                            CommandArgument="<%# Container.DataItem.ToString() %>" />

                                </div>
                            </div>
                        </div>
                        <br />

                    </ItemTemplate>
                </asp:Repeater>
                <!-- End Repeater -->
                <!-- End BIO -->

                <!-- CHEM FAs -->
                <div class="row text-center mt-4">

                    <div class="col-5 text-right">
                        Chemistry FA TUID: 
                    </div>

                    <div class="d-inline">
                        <asp:TextBox ID="txtChem" placeholder="TUID" runat="server" />
                    </div>

                    <!-- Add Button -->
                    <div class="col text-left">
                        <asp:ImageButton ID="btnChemAdd" runat="server" ImageUrl="images/PlusSquare.png" Text="" Width="30px" OnClick="btnChemAdd_Click" />
                        <br />
                    </div>
                </div>


                <!-- Chem FA Repeater -->
                <asp:Repeater ID="rptChem" ItemType="System.string" runat="server">
                    <ItemTemplate>

                        <!-- Wrapper -->
                        <div class="d-inline-flex justify-content-center offset-1 my-1">

                            <!-- Input Group -->
                            <div class="input-group">

                                <!-- FA TUID -->
                                <asp:TextBox Text="<%# Container.DataItem.ToString() %>" runat="server" Width="65%" Style="background-color: darkgray" ReadOnly="True" />

                                <!-- Remove Button -->
                                <div class="input-group-append">
                                    <asp:ImageButton ID="btnChemMinus" runat="server" ImageUrl="images/MinusSquare.png" Text="" Width="30px"
                                        CommandName="Chem"
                                        CommandArgument="<%# Container.DataItem.ToString() %>" />
                                </div>
                            </div>
                        </div>
                        <br />
                    </ItemTemplate>
                </asp:Repeater>
                <!-- End Repeater -->
                <!-- End CHEM -->

                <!-- IST FAs -->
                <div class="row text-center mt-4">

                    <div class="col-5 text-right">
                        Computer Science FA TUID: 
                    </div>

                    <div class="d-inline">
                        <asp:TextBox ID="txtIST" placeholder="TUID" runat="server" />
                    </div>

                    <!-- Add Button -->
                    <div class="col text-left">
                        <asp:ImageButton ID="btnISTAdd" runat="server" ImageUrl="images/PlusSquare.png" Text="" Width="30px" OnClick="btnISTAdd_Click" />
                        <br />
                    </div>
                </div>

                <!-- IST FA Repeater -->
                <asp:Repeater ID="rptIST" ItemType="System.string" runat="server">
                    <ItemTemplate>

                        <!-- Wrapper -->
                        <div class="d-inline-flex justify-content-center offset-1 my-1">

                            <!-- Input Group -->
                            <div class="input-group">

                                <!-- FA TUID -->
                                <asp:TextBox Text="<%# Container.DataItem.ToString() %>" Width="65%" runat="server" Style="background-color: darkgray" ReadOnly="True" />

                                <!-- Remove Button -->
                                <div class="input-group-append">
                                    <asp:ImageButton ID="btnISTMinus" runat="server" ImageUrl="images/MinusSquare.png" Text="" Width="30px"
                                        CommandName="IST"
                                        CommandArgument="<%# Container.DataItem.ToString() %>" />
                                </div>
                            </div>
                        </div>
                        <br />
                    </ItemTemplate>
                </asp:Repeater>
                <!-- End Repeater -->
                <!-- End CST -->

                <!-- Earth Science FAs -->
                <div class="row text-center mt-4">

                    <div class="col-5 text-right">
                        Earth/Environment FA TUID: 
                    </div>

                    <div class="d-inline">
                        <asp:TextBox ID="txtEarth" placeholder="TUID" runat="server" />
                    </div>

                    <!-- Add Button -->
                    <div class="col text-left">
                        <asp:ImageButton ID="btnEarthAdd" OnClick="btnEarthAdd_Click" runat="server" ImageUrl="images/PlusSquare.png" Text="" Width="30px" />
                        <br />
                    </div>
                </div>
                <!-- Earth FA Repeater -->
                <asp:Repeater ID="rptEarth" ItemType="System.string" runat="server">
                    <ItemTemplate>

                        <!-- Wrapper -->
                        <div class="d-inline-flex justify-content-center offset-1 my-1">

                            <!-- Input Group -->
                            <div class="input-group">

                                <!-- FA TUID -->
                                <asp:TextBox Text="<%# Container.DataItem.ToString() %>" Width="65%" runat="server" Style="background-color: darkgray" ReadOnly="True" />


                                <!-- Remove Button -->
                                <div class="input-group-append">
                                    <asp:ImageButton ID="btnEarthMinus" runat="server" ImageUrl="images/MinusSquare.png" Text="" Width="30px"
                                        CommandName="Earth"
                                        CommandArgument="<%# Container.DataItem.ToString() %>" />
                                </div>
                            </div>
                        </div>
                        <br />
                    </ItemTemplate>
                </asp:Repeater>
                <!-- End Repeater -->
                <!-- End Earth Sciences -->

                <!-- Math FAs -->
                <div class="row text-center mt-4">

                    <div class="col-5 text-right">
                        Math FA TUID: 
                    </div>

                    <div class="d-inline">
                        <asp:TextBox ID="txtMath" placeholder="TUID" runat="server" />
                    </div>

                    <!-- Add Button -->
                    <div class="col text-left">
                        <asp:ImageButton ID="btnMathAdd" OnClick="btnMathAdd_Click" runat="server" ImageUrl="images/PlusSquare.png" Text="" Width="30px" />
                        <br />
                    </div>
                </div>

                <!-- Math FA Repeater -->
                <asp:Repeater ID="rptMath" ItemType="System.string" runat="server">
                    <ItemTemplate>

                        <!-- Wrapper -->
                        <div class="d-inline-flex justify-content-center offset-1 my-1">

                            <!-- Input Group -->
                            <div class="input-group">

                                <!-- FA TUID -->
                                <asp:TextBox Text="<%# Container.DataItem.ToString() %>" Width="65%" runat="server" Style="background-color: darkgray" ReadOnly="True" />


                                <!-- Remove Button -->
                                <div class="input-group-append">
                                    <asp:ImageButton ID="btnMathMinus" runat="server" ImageUrl="images/MinusSquare.png" Text="" Width="30px"
                                        CommandName="Math"
                                        CommandArgument="<%# Container.DataItem.ToString() %>" />
                                </div>
                            </div>
                        </div>
                        <br />
                    </ItemTemplate>
                </asp:Repeater>
                <!-- End Math -->

                <!-- Physics FAs -->
                <div class="row text-center mt-4">

                    <div class="col-5 text-right">
                        Physics FA TUID: 
                    </div>

                    <div class="d-inline">
                        <asp:TextBox ID="txtPhys" placeholder="TUID" runat="server" />
                    </div>

                    <!-- Add Button -->
                    <div class="col text-left">
                        <asp:ImageButton ID="btnPhysAdd" OnClick="btnPhysAdd_Click" runat="server" ImageUrl="images/PlusSquare.png" Text="" Width="30px" />
                        <br />
                    </div>
                </div>

                <!-- Phys FA Repeater -->
                <asp:Repeater ID="rptPhys" ItemType="System.string" runat="server">
                    <ItemTemplate>

                        <!-- Wrapper -->
                        <div class="d-inline-flex justify-content-center offset-1 my-1">

                            <!-- Input Group -->
                            <div class="input-group">

                                <!-- FA TUID -->
                                <asp:TextBox Text="<%# Container.DataItem.ToString() %>" Width="65%" runat="server" Style="background-color: darkgray" ReadOnly="True" />


                                <!-- Remove Button -->
                                <div class="input-group-append">
                                    <asp:ImageButton ID="btnPhysMinus" runat="server" ImageUrl="images/MinusSquare.png" Text="" Width="30px"
                                        CommandName="Phys"
                                        CommandArgument="<%# Container.DataItem.ToString() %>" />
                                </div>
                            </div>
                        </div>
                        <br />
                    </ItemTemplate>
                </asp:Repeater>
                <!-- End Physics -->
            </div>
            <!-- End FAs -->

            <!-- Save Changes Button -->
            <asp:Button Style="background-color: rgb(158,28,53); border-radius: 5px; color: white; margin: 15px" Text="Save Changes" runat="server" />

        </div>
        <!-- End Page Container -->

        </div>
</asp:Content>
