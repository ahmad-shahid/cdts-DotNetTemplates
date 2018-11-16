﻿<%@ Page Title="" Language="C#" MasterPageFile="~/GoC.WebTemplate/GoCWebTemplate.Master" AutoEventWireup="true" CodeBehind="FooterLinksSample.aspx.cs" Inherits="GoC.WebTemplate.WebForm.Sample.Pages.FooterLinksSample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">   
    <h1>GoC Web Template Samples - Footer Links</h1>
<p><a href="http://www.gcpedia.gc.ca/wiki/Content_Delivery_Network/GoC_.NET_template_guide">Web Template Documentation (GCPedia)</a></p>

<p>This sample page demonstrates how your application can add custom footer links via the GoC Web Template.</p>

<h2>Footer References</h2>
<p>Will you need a custom header/footer? Keep in mind this is different than removing or adding certain elements that are allowed as per the C&IA specifications document. 
    Any element that can be implemented using the C&IA specifications document does not require a custom header/footer and is available in the default version of the CDTS. 
    Currently it is advisable to not implement a custom header/footer unless you have permission to do so from your department, TBS or Principal Publisher. 
    If you have permission to do so then follow the instructions for the "Application templates" in the menu on the right.</p>

<h2>Contact Link</h2>
<p>The "Contact Us" link located at the bottom of the page can be customized by populating the <code class="wb-prettify">ContactLinks</code>.
<p>Set programmatically via the <code class="wb-prettify">"ContactLinks"</code> property of the Web Template.</p>
<p> <code class="wb-prettify">"ContactLinks"</code> is a List of Links and each link has three properties:</p>
<ul>
    <li><code class="wb-prettify">"href"</code>: the url of the link.</li>
    <li><code class="wb-prettify">"text"</code>: the text of the link that is displayed.</li>
    <li><code class="wb-prettify">"acronym"</code>: if your text has an acronym, you can use this property to provide the full text of the title.  it will be displayed when the user hovers over the link.</li>
</ul>
<p>A footerlink can be used instead of a link, which has the following fourth property:</p>
<ul>
    <li><code class="wb-prettify">"newWindow"</code>: If you would like the link to open in a new window.</li>
</ul>
<p>There are limitations as to when the <code class="wb-prettify">"text"</code> and <code class="wb-prettify">"href"</code> of <code class="wb-prettify">"ContactLinks"</code> can be updated.</p>
<p>The <code class="wb-prettify">"href"</code> can only be updated when environment is "AKAMAI" or for only "Transactional" and "Layout" templates when the environment is not "AKAMAI".</p>
<p>The <code class="wb-prettify">"text"</code> can only be updated in the "Transactional" and "Layout" templates provided that the environment is not "AKAMAI".</p>
<p>Multiple links can only be set if you are not using the application template and the environment is not "AKAMAI."</p>

<h2>Custom Footer Links</h2>
<div class="wb-prettify all-pre lang-c# linenums">
<pre>
    public ActionResult FooterLinksSample()
    {
        //Contact Links
        WebTemplateCore.ContactLinks = new List&lt;Link&gt; { new Link { Href = "http://travel.gc.ca/" } };

        //The code snippet below displays an example of multiple links that have text and href being updated. 
        /*
            WebTemplateCore.ContactLinks = new List&lt;Link&gt; 
            { 
                new Link { Href = "http://travel.gc.ca/", Text = "Contact Now"}, 
                new Link { Href = "http://travel.gc.ca/", Text = "Contact Info"} 
            };
        */    
        //Note: For your solution, the values should be coming from your culture sensitive source ex: resource files, db etc...)
        return View();
    }
</pre>
</div>
    <!-- #include virtual="SamplesNavigation.html" -->
</asp:Content> 