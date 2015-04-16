
<%@ page import="freshcart.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
              <div id="page-body">
		<a href="#show-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<!--		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>-->
              
		<div id="show-product" class="content scaffold-show" role="main">
			<!--<h1><g:message code="default.show.label" args="[entityName]" /></h1>-->
                <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="thumbnail">
                        <g:if test="${productInstance?.imageURL}">
                        <!--<div class="fieldcontain">-->
<!--<span id="imageURL-label" class="property-label"><g:message code="product.imageURL.label" default="Image URL" /></span>-->
					<img src="${fieldValue(bean: productInstance, field: "imageURL")}" width="220" height="240"/>
                                        
						<!--<span class="property-value" aria-labelledby="imageURL-label"><g:fieldValue bean="${productInstance}" field="imageURL"/></span>-->
					
				<!--</div>-->
				</g:if>
                                <div class="caption">
                                <g:if test="${productInstance?.name}">
				<div class="fieldcontain centre-block">
                                  <!--  <span id="name-label" class="property-label"><g:message code="product.name.label" default="Name" /></span>-->
					
                                    <h2><span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${productInstance}" field="name"/></span></h2>
					
				</div>
				</g:if>
                    
                      <g:if test="${productInstance?.description}">
				<div class="fieldcontain centre-block">
					<!--<span id="description-label" class="property-label"><g:message code="product.description.label" default="Description" /></span>-->
					
                                   <h3><span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${productInstance}" field="description"/></span></h3>
					
				</div>
				</g:if>
                                <g:if test="${productInstance?.price}">
				<div class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="product.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${productInstance}" field="price"/></span>
					
				</div>
				</g:if>
                        <g:if test="${productInstance?.expiryDate}">
				<div class="fieldcontain">
					<span id="expiryDate-label" class="property-label"><g:message code="product.expiryDate.label" default="Expiry Date" /></span>
					
						<span class="property-value" aria-labelledby="expiryDate-label"><g:formatDate date="${productInstance?.expiryDate}" /></span>
					
				</div>
				</g:if>
                                <g:if test="${productInstance?.packageDetails}">
				<div class="fieldcontain">
					<span id="packageDetails-label" class="property-label"><g:message code="product.packageDetails.label" default="Package Details" /></span>
					
						<span class="property-value" aria-labelledby="packageDetails-label"><g:fieldValue bean="${productInstance}" field="packageDetails"/></span>
					
				</div>
				</g:if>
                                
                                <g:if test="${productInstance?.category}">
				<div class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="product.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="productCategory" action="show" id="${productInstance?.category?.id}">${productInstance?.category?.encodeAsHTML()}</g:link></span>
					
				</div>
				</g:if>
                                </div>
                                
                                        </div></div></div>
			
			<!--<ol class="property-list product">
			
				<g:if test="${productInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="product.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${productInstance}" field="name"/></span>
					
				</li>
				</g:if>
                                <g:if test="${productInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="product.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${productInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.expiryDate}">
				<li class="fieldcontain">
					<span id="expiryDate-label" class="property-label"><g:message code="product.expiryDate.label" default="Expiry Date" /></span>
					
						<span class="property-value" aria-labelledby="expiryDate-label"><g:formatDate date="${productInstance?.expiryDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="product.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label">$<g:fieldValue bean="${productInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.packageDetails}">
				<li class="fieldcontain">
					<span id="packageDetails-label" class="property-label"><g:message code="product.packageDetails.label" default="Package Details" /></span>
					
						<span class="property-value" aria-labelledby="packageDetails-label"><g:fieldValue bean="${productInstance}" field="packageDetails"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.imageURL}">
				<li class="fieldcontain">
					<span id="imageURL-label" class="property-label"><g:message code="product.imageURL.label" default="Image URL" /></span>
					
						<span class="property-value" aria-labelledby="imageURL-label"><g:fieldValue bean="${productInstance}" field="imageURL"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="product.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="productCategory" action="show" id="${productInstance?.category?.id}">${productInstance?.category?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				
			
			</ol>-->
			<!--<g:form url="[resource:productInstance, action:'delete']" method="DELETE">				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${productInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>-->
		</div>
                </div>
	</body>
</html>
