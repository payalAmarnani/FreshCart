<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Fresh Cart</title>
	</head>
	<body>
<!--		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
			<h1>Application Status</h1>
			<ul>
				<li>App version: <g:meta name="app.version"/></li>
				<li>Grails version: <g:meta name="app.grails.version"/></li>
				<li>Groovy version: ${GroovySystem.getVersion()}</li>
				<li>JVM version: ${System.getProperty('java.version')}</li>
				<li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
				<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
				<li>Domains: ${grailsApplication.domainClasses.size()}</li>
				<li>Services: ${grailsApplication.serviceClasses.size()}</li>
				<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
			</ul>
			<h1>Installed Plugins</h1>
			<ul>
				<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
					<li>${plugin.name} - ${plugin.version}</li>
				</g:each>
			</ul>
		</div>-->
		<!--<div id="page-body" role="main">
			<!--<h1>Welcome to Grails</h1>
			<p>Congratulations, you have successfully started your first Grails application! At the moment
			   this is the default page, feel free to modify it to either redirect to a controller or display whatever
			   content you may choose. Below is a list of controllers that are currently deployed in this application,
			   click on each to execute its default action:</p>

			<div id="controller-list" role="navigation">
				<h2>Available Controllers:</h2>
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
					</g:each>
				</ul>
			</div>
		</div>-->
            <!--<div id="page-body" role="main">
                <!---<div class="row carousel-holder" style="width:100%; margin: 0 auto">

                   <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" width="750px" height="400px">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="../Assets/images/photos/banner8.png" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="../Assets/images/photos/banner6.png" alt="">
                                </div>
								<div class="item">
                                    <img class="slide-image" src="../Assets/images/photos/banner7.png" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
		</div>
<!--                <center>
                    <p> This is a simple application to manage Employees!! </p>
                    <br>
                    <br>
                    <div class="homeCell" >
                        <h3>Categories</h3>
                        <br>
                        <span class="buttons" >
                            <g:link controller="ProductCategory" action="index" >List of Categories</g:link>
                            </span>
                        </div>
                        <br>
                        <div class="homeCell" >
                            <h3>Department</h3>
                            <br>
                            <span class="buttons" >
                            <g:link controller="Product" action="index" >Product List</g:link>
                            </span>
                            <br>
                            <br>
                        </div>
                        <div class="homeCell" >
                            <h3>Search in the application</h3>
                            <br>
                            <span class="buttons" >
                            <g:link controller="searchable" action="index" >Search and Item</g:link>
                            </span>
                        </div>
                    </center>-->
<br/><br/><br/>
<div class="container">
                    <div class="row" style="width:100%; margin: 25 auto">
                      <div class="col-sm-4 col-md-4">
                
                            <g:img dir="images" file="Shopping-basket-filled-with-fresh-vegetables.jpg" width="180" height="120"/>
                                <!--<img src="../Assets/images/Shopping-basket-filled-with-fresh-vegetables.jpg">-->
                            
                                <h3>View All Categories</h3>
                                <span class="buttons" >
                            <g:link controller="ProductCategory" action="index" >Go!</g:link>
                            </span>
                

                        </div>

                      <div class="col-sm-4 col-md-4">
                       
                            <g:img dir="images" file="Shopping-basket-filled-with-fresh-vegetables.jpg" width="180" height="120"/>
                            <h3>View All Products</h3>
                                <span class="buttons" >
                            <g:link controller="Product" action="index" >Go!</g:link>
                            </span>
                        </div>
                      <br/><br/>
                      <div>
                            <g:img dir="images" file="Shopping-basket-filled-with-fresh-vegetables.jpg" width="180" height="120"/>
                            <h3>Search For Products/Categories</h3>
                                <span class="buttons" >
                            <g:link controller="searchable" action="index" >Go!</g:link>
                            </span>
                        </div>
                        

                    </div>
                </div>
            <!--</div>-->
	</body>
</html>
