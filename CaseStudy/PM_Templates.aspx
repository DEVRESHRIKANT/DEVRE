﻿<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="PM_Templates.aspx.cs" Inherits="DEVRE.PM_Templates" %>


<%@ Register TagPrefix="ShreeMain" TagName="ShreeMenu" Src="~/wfuc_MenuBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeTop" Src="/TopBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBanner" Src="/BannerBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeStatus" Src="/StatusBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeLeft" Src="~/LeftBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeRight" Src="~/RightBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBottom" Src="/BottomBar.ascx"%>

<asp:Content ID="MenuBar" ContentPlaceHolderID="cpl_MenuBar" runat="server">
    <ShreeMain:ShreeMenu runat="server" ID="ShreeMenu" />      
</asp:Content>
<asp:Content ID="TopBar" ContentPlaceHolderID="TopBar" runat="server">   
    <ShreeMain:ShreeTop runat="server" ID="ShreeTop" />              
</asp:Content>
<asp:Content ID="BannerBar" ContentPlaceHolderID="BannerBar" runat="server">  
    <ShreeMain:ShreeBanner runat="server" ID="ShreeBanner" />
</asp:Content>
<asp:Content ID="StatusBar" ContentPlaceHolderID="StatusBar" runat="server">   
    <ShreeMain:ShreeStatus runat="server" ID="ShreeStatus" />
</asp:Content>
<asp:Content ID="LeftBar" ContentPlaceHolderID="LeftBar_Shree_Web"  runat="server">
    <ShreeMain:ShreeLeft runat="server" ID="ShreeLeft" />              
</asp:Content>

<%--Middle Section Column --%>
    <asp:Content ID="MiddleBar" ContentPlaceHolderID="cpl_MainContentPlaceHolder"  runat="server">
    <table>
        <tr>
            <td>
                <div>
                    Funding Request
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                   Financial Details 
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                   Project Deliverables and Control Matrix 
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    Change Request
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    Project Closure
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                  Actual Cost Breakdown  
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    Projected Cost
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    Project Status Report
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    Project Proposal
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                  Project Charter
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                   Project Scope 
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    Risk Plan
                </div>
            </td>
        </tr>        
    </table>
</asp:Content>

<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
