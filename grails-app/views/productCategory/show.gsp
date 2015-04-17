
<%@ page import="freshcart.ProductCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productCategory.label', default: 'ProductCategory')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-productCategory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<!--		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>-->
                <div id="page-body">
		<div id="show-productCategory" class="content scaffold-show" role="main">
			<!--<h1><g:message code="default.show.label" args="[entityName]" /></h1>-->
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                        <div class="container"><div class="row"><div class="col-lg-6">
                                    <g:if test="${productCategoryInstance?.imageURL}">
<!--				<li class="fieldcontain">-->
<!--					<span id="imageURL-label" class="property-label"><g:message code="productCategory.imageURL.label" default="Image URL" /></span>-->
					<img src="${fieldValue(bean: productCategoryInstance, field: "imageURL")}" width="420" height="240"/>
						<!--<span class="property-value" aria-labelledby="imageURL-label"><g:fieldValue bean="${productCategoryInstance}" field="imageURL"/></span>-->
					
<!--				</li>-->
                                    </g:if></div>
                            <div class="col-lg-6">
                                <g:if test="${productCategoryInstance?.name}">
<!--				<li class="fieldcontain">-->
		
					
                                    <h1><g:fieldValue bean="${productCategoryInstance}" field="name"/></h1>
					
<!--				</li>--></g:if>
                                    
                                    <g:if test="${productCategoryInstance?.description}">
				<!--<li class="fieldcontain">-->
					<!--<span id="description-label" class="property-label"><g:message code="productCategory.description.label" default="Description" /></span>-->
					
						<h2><g:fieldValue bean="${productCategoryInstance}" field="description"/></h2>
					
				<!--</li>-->
				</g:if>
				
                            
                            </div></div>
                            <br/>
                            <g:if test="${productCategoryInstance?.product}">
                            <table><tbody>
                                <tr>
                                    <g:each in="${productCategoryInstance.product}" var="p" status="i">
						
						
					
                                <g:if test="${(i%3==0 && i!=0)}">
                                    </tr><tr> 
                                 <td class="container"><div class="row"><div class="col-md-12"><div class="thumbnail">
                                                 <img src="${fieldValue(bean: p, field: "imageURL")}"width="120" height="140"/>
                                                 <div class="caption">
                                                  <g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link>  
 <h4 class="pull-right">S$ ${fieldValue(bean: p, field: "price")}</h4>
                                        <p><g:formatDate date="${p.expiryDate}" /></p>
                            <p>${fieldValue(bean: p, field: "packageDetails")}</p>
                                </div>
                                                 </div></div></div></td>
                                </g:if>
                                    <g:else>
                                        <td class="container"><div class="row"><div class="col-md-12"><div class="thumbnail">
                                                 <img src="${fieldValue(bean: p, field: "imageURL")}"width="120" height="140"/>
                                                 <div class="caption">
                                                  <g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link>
                                                <h4 class="pull-right">S$ ${fieldValue(bean: p, field: "price")}</h4>
                                        <p><g:formatDate date="${p.expiryDate}" /></p>
                            <p>${fieldValue(bean: p, field: "packageDetails")}</p>
                                </div>
                                                 </div></div></div></td>
                                        
                                        </g:else>
                                    </g:each>
                                </tbody></table></g:if>
                           
                            
				
<!--			<ol class="property-list productCategory">
			
				<g:if test="${productCategoryInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="productCategory.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${productCategoryInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productCategoryInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="productCategory.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${productCategoryInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productCategoryInstance?.imageURL}">
				<li class="fieldcontain">
					<span id="imageURL-label" class="property-label"><g:message code="productCategory.imageURL.label" default="Image URL" /></span>
					
						<span class="property-value" aria-labelledby="imageURL-label"><g:fieldValue bean="${productCategoryInstance}" field="imageURL"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productCategoryInstance?.product}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="productCategory.product.label" default="Product" /></span>
					
						<g:each in="${productCategoryInstance.product}" var="p">
						<span class="property-value" aria-labelledby="product-label"><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>-->
			<!--<g:form url="[resource:productCategoryInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${productCategoryInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>-->
		</div>
                </div>
	</body>
</html>
