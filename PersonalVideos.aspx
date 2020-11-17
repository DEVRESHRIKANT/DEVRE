﻿<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="PersonalVideos.aspx.cs" Inherits="DEVRE.PersonalVideos" %>

<%@ Register TagPrefix="ShreeMain" TagName="ShreeMenu" Src="~/wfuc_MenuBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeTop" Src="/TopBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBanner" Src="/BannerBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeStatus" Src="/StatusBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeLeft" Src="~/LeftBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeRight" Src="~/RightBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBottom" Src="/BottomBar.ascx"%>
<%@ Register Assembly="ASPNetVideo.NET2.AJAX" Namespace="ASPNetVideo" TagPrefix="ASPNetVideo" %>
<%@ Register Assembly="ASPNetFlashVideo.NET2.AJAX" Namespace="ASPNetFlashVideo" TagPrefix="ASPNetFlashVideo" %>

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
    <div id="divResult" runat="server"></div>
	<div id="divError" runat="server"></div>
</asp:Content>

<%--Middle Section Column --%>
    <asp:Content ID="MiddleBar" ContentPlaceHolderID="cpl_MainContentPlaceHolder"  runat="server">
<table>
    <tr>
        <td>
            <p></p>
           
                <video id="WindowsMedia1" runat="server" videourl="~/Videos/boating.mp4"></video>
                <asp:LinkButton ID="LinkButton33" BackColor="#ffffcc" Runat="server" PostBackUrl="~/Videos/boating.mp4">Shubham34</asp:LinkButton>&nbsp;
            <p></p>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="btnImageUpload" Text="Upload Image" runat="server" OnClick="btnImageUpload_Click" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Image ID="imgPicture" Height="160" Width="120" ImageAlign="Middle" runat="server" ImageUrl="Images/Ohm1.jpg" />
        </td>
    </tr>    
    <tr>
        <td>
            <input id="filUpload" type="file" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblOutput" runat="server"></asp:Label>
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
