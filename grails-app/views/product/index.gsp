
<%@ page import="freshcart.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div id="page-body">	
            <a href="#list-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            
                <!--<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>-->
		<div id="list-product" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
                         
                       <div class="container-fluid">
                           <div class="row">
                               <div class="col-md-12">
                        <g:form url="[controller:'Product', action:'customSearch']" method="GET">
                          Search <g:textField id="mytext" class="input-xxlarge" placeholder="Describe the product" name="desc" value="${desc}"/>
                             <button class="btn btn-small btn-primary" type="submit">Search </button></g:form></div></div></div>
                       
                                <div class="container-fluid">
                                <div class="row">
                             <div class="col-md-12">
                        <g:form url="[controller:'Product', action:'search']" method="GET">
                        Know the Product? <g:textField id="mytext" class="input-xxlarge" name="name" placeholder="Name of Product" value="${name}"/>
                             <button class="btn btn-small btn-primary" type="submit">Search </button></g:form></div></div></div>
                       
                       <div class="container-fluid">
                           <div class="row">
                      <div class="col-md-12">
                        <g:form url="[controller:'Product', action:'priceRange']" method="GET">
                        Search Products by Price Range  From $<g:textField id="mytext" class="input-xxlarge" name="lowest" placeholder="0.00" value="${lowest}"/>
                       To $<g:textField id="mytext" class="input-xxlarge" name="highest" placeholder="30.00" value="${highest}"/>
                             <button id="submit-values" class="btn btn-small btn-primary" type="submit">
                                Search </button>
                     </g:form></div>
                      </div></div>
                       <div class="container">
                           <div class="row">
                    <div class="col-md-12">         
                   <div class="btn-group">
                       <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Sort by Price <span class="caret"></span></button>
                            <ul class="dropdown-menu" role="menu">
                                <li><g:link controller="Product" action="sortByPrice">Low-High</g:link></li>
                                <li><g:link controller="Product" action="sortByPriceDesc">High-Low</a></g:link></li>
                             </ul>
                    </div>
                   </div>
                    </div>
                        </div>
  
                       <br/>
<!--			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'product.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="expiryDate" title="${message(code: 'product.expiryDate.label', default: 'Expiry Date')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'product.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="packageDetails" title="${message(code: 'product.packageDetails.label', default: 'Package Details')}" />
					
						<g:sortableColumn property="imageURL" title="${message(code: 'product.imageURL.label', default: 'Image URL')}" />
					
						<th><g:message code="product.category.label" default="Category" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productInstanceList}" status="i" var="productInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productInstance.id}">${fieldValue(bean: productInstance, field: "name")}</g:link></td>
					
						<td><g:formatDate date="${productInstance.expiryDate}" /></td>
					
						<td>${fieldValue(bean: productInstance, field: "price")}</td>
					
						<td>${fieldValue(bean: productInstance, field: "packageDetails")}</td>
					
                                                <td><img src="${fieldValue(bean: productInstance, field: "imageURL")}"width="120" height="140"/></td>
					
						<td>${fieldValue(bean: productInstance, field: "category")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>-->
                        
                        <table>
<!--			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'product.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="expiryDate" title="${message(code: 'product.expiryDate.label', default: 'Expiry Date')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'product.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="packageDetails" title="${message(code: 'product.packageDetails.label', default: 'Package Details')}" />
					
						<g:sortableColumn property="imageURL" title="${message(code: 'product.imageURL.label', default: 'Image URL')}" />
					
						<th><g:message code="product.category.label" default="Category" /></th>
					
					</tr>
				</thead>-->
				<tbody>
                                    <tr>
                                        
				<g:each in="${productInstanceList}" status="i" var="productInstance">
  
					<g:if test="${(i%3==0 && i!=0)}">
                                    </tr><tr>
                                             <td class="container"><div class="row"><div class="col-md-12">
                                                    <div class="thumbnail">
                                                       <img src="${fieldValue(bean: productInstance, field: "imageURL")}"width="120" height="140"/>
                                                        <div class="caption">
						<g:link action="show" id="${productInstance.id}">${fieldValue(bean: productInstance, field: "name")}</g:link>
					<h4 class="pull-right">S$ ${fieldValue(bean: productInstance, field: "price")}</h4>
                                        <p><g:formatDate date="${productInstance.expiryDate}" /></p>
                            <p>${fieldValue(bean: productInstance, field: "packageDetails")}</p>
                                 </div></div></div></div></td>
                                            
                                               
                                          </g:if>
                                    
                                  <g:else>
                                       <td class="container"><div class="row"><div class="col-md-12">
                                                    <div class="thumbnail">
                                                       <img src="${fieldValue(bean: productInstance, field: "imageURL")}"width="220" height="240"/>
                                                        <div class="caption">
						<g:link action="show" id="${productInstance.id}">${fieldValue(bean: productInstance, field: "name")}</g:link>
					<h4 class="pull-right">S$ ${fieldValue(bean: productInstance, field: "price")}</h4>
                                        <p><g:formatDate date="${productInstance.expiryDate}" /></p>
                            <p>${fieldValue(bean: productInstance, field: "packageDetails")}</p>
                                 </div></div></div></div></td>
                        </g:else>

                                        
					</g:each>
					
				
				</tbody>
			</table>
                      
			<div class="pagination">
				<g:paginate total="${productInstanceCount ?: 0}" />
			</div>
                </div>
		</div>
                
                <script type="text/javascript">$('.dropdown-toggle').dropdown()</script>
	</body>
</html>
