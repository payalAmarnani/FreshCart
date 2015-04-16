<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
                <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
                <asset:stylesheet src="style.css"/>
                <asset:stylesheet src="main.css"/>
               <asset:stylesheet src="bootstrap.min.css"/>
                <asset:javascript src="jquery.js"/>
                <asset:javascript src="bootstrap.min.js"/>

		<g:layoutHead/>
	</head>
	<body>
<!--		<div id="grailsLogo" role="banner"><a href="http://grails.org"><asset:image src="freshcart_logo.jpg" alt="Fresh Cart"/></a>-->
    <div class="wrapper">
        <div class="navbar">
	<nav class="navbar navbar-default navbar-fixed-top green" role="navigation">
             
                      <ul class="clear">
                          <li id="grailsLogo" role="banner"><a href="/FreshCart/"><asset:image src="freshcart_logo.jpg"/></a></li>
                          <!--<li><g:textField name="siteSearch" value="${siteSearch}" /><g:link controller="Searchable" action="index"><span><g:submitButton name="search" value="search" /></span></g:link>-->
                          <li><g:link controller="StaticPages" action="contactUS"><h1><span class="glyphicon glyphicon-envelope"></span> Contact Us</h1></g:link></li>
                          <li><g:link controller="StaticPages" action="aboutUS"><h1><span class="glyphicon glyphicon-user"></span>About Us</h1></g:link></li>
                          <li><a href="#"><h1><span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart</h1></a></li>
                      </ul>
              </nav>
              </div>
            </div>
            <!--</div>-->
                <div class="menusubnav" role="complementary">
                    <ul>
<!--                        <li><g:link controller="ProductCategory" action="show" id="1" >Fresh Produce</g:link></li>
                        <li><g:link controller="ProductCategory" action="show" id="2" >Meat And Seafood</g:link></li>
                        <li><g:link controller="ProductCategory" action="show" id="3" >Dairy</g:link></li>
                        <li><g:link controller="ProductCategory" action="show" id="4" >Beverages</g:link></li>
                        <li><g:link controller="ProductCategory" action="show" id="5" >Frozen</g:link></li>
                        <li><g:link controller="ProductCategory" action="show" id="6" >Bakery</g:link></li>
                        <li><g:link controller="ProductCategory" action="show" id="7" >Herbs And Spices</g:link></li>
                        <li><g:link controller="ProductCategory" action="show" id="8" >Canned Foods</g:link></li>
                        <li><g:link controller="ProductCategory" action="show" id="9" >Snacks</g:link></li>
                        <li><g:link controller="ProductCategory" action="show" id="10" >Breakfast Needs</g:link></li>
                        <li><g:link controller="ProductCategory" action="show" id="11" >Rice,Pasta And Noodles</g:link></li>
                        <li><g:link controller="ProductCategory" action="show" id="12" >Grains, Beans And Pulses</g:link></li>
                        <li><g:link controller="ProductCategory" action="show" id="13" >Oil, Condiments And Sauces</g:link></li>-->
                         <li><g:link controller="ProductCategory" action="index">View Categories</g:link></li>
                        <li><g:link controller="Product" action="index">View Products</g:link></li>
                        <li><g:link controller="Searchable" action="index">Search The Site</g:link></li>
               </ul>
            </div> 
                
                 <!--<g:each var="cat" in="${ProductCategory}">
                 <g:link controller="ProductCategory" action="show" id="${cat.id}" >${cat.name}</g:link>
                </g:each>-->

                <g:layoutBody/>
		<div class="footer" role="contentinfo"><g:render template ="/common/footer"/></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	<g:javascript library="application"/>
        <r:layoutResources />

        </body>
</html>
