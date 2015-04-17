
<%@ page import="freshcart.ProductCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productCategory.label', default: 'Product Categories')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-productCategory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="page-body">
               <!-- <div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<!--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>-->
			<!--</ul>
		</div>-->
             
		<div id="list-productCategory" class="content scaffold-list" role="main">
               
                    <g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
                        
                        <h1>Select a Category</h1>
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6">
                     <g:form url="[controller:'ProductCategory', action:'search']" method="GET">
                          <g:textField id="mytext" class="input-xxlarge" name="name" placeholder="Know the Exact Name?" value="${name}"/>
                             <button id="submit-values" class="btn btn-small btn-primary" type="submit">
                                 <i class="icon-ok"></i>Search </button>
                     </g:form></div>
                     <div class="col-lg-6">
                     <g:form url="[controller:'ProductCategory', action:'customSearch']" method="GET">
                          <g:textField id="mytext" class="input-xxlarge" name="desc" placeholder="Something Like...." value="${desc}"/>
                             <button id="submit-values" class="btn btn-small btn-primary" type="submit">
                                 <i class="icon-ok"></i>Search </button>
                     </g:form>
                     </div></div></div>
                     
<!--			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'productCategory.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'productCategory.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="imageURL" title="${message(code: 'productCategory.imageURL.label', default: 'Picture')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productCategoryInstanceList}" status="i" var="productCategoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productCategoryInstance.id}">${fieldValue(bean: productCategoryInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: productCategoryInstance, field: "description")}</td>
					
						<td><img src="${fieldValue(bean: productCategoryInstance, field: "imageURL")}"/></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>-->
                        <table>
                            <tbody>
                                <tr>
                                    <g:each in="${productCategoryInstanceList}" status="i" var="productCategoryInstance">
                                        <g:if test="${(i%3==0 && i!=0)}">
                                    </tr><tr>
                                      <td class="container"><div class="row"><div class="col-md-12">
                                                    <div class="thumbnail">
                                                        <img src="${fieldValue(bean: productCategoryInstance, field: "imageURL")}" width="120" height="100"/>
                                                        <div class="caption">
                                 <g:link action="show" id="${productCategoryInstance.id}">${fieldValue(bean: productCategoryInstance, field: "name")}</g:link><br/>
                                                        ${fieldValue(bean: productCategoryInstance, field: "description")}
                                                            </div></div></div></div></td>
                                              </g:if>   
                                            <g:else>
                                                            <td class="container"><div class="row"><div class="col-md-12">
                                                    <div class="thumbnail">
                                                        <img src="${fieldValue(bean: productCategoryInstance, field: "imageURL")}" width="220" height="240"/>
                                                        <div class="caption">
                                 <g:link action="show" id="${productCategoryInstance.id}">${fieldValue(bean: productCategoryInstance, field: "name")}</g:link><br/>
                                                        ${fieldValue(bean: productCategoryInstance, field: "description")}
                                                            </div></div></div></div></td>
                                                     </g:else>       
                                        </g:each> 
</tbody></table>
<!--                                 <table>
                                    <tbody>
                                    <g:each in="${productCategoryInstanceList}" var="productCategoryInstance">
                                        <tr>
                                            <td class="container"><div class="row"><div class="col-md-12">
                                                        <img src="${fieldValue(bean: productCategoryInstance, field: "imageURL")}" width="120" height="100"/>
                                                        <g:link action="show" id="${productCategoryInstance.id}">${fieldValue(bean: productCategoryInstance, field: "name")}</g:link>
                                                        ${fieldValue(bean: productCategoryInstance, field: "description")}
                                                    </div></div></td>
                                        </tr>
                                    </g:each>
                                    
                                    </tbody>
                                </table>-->
                                

			<div class="pagination">
				<g:paginate total="${productCategoryInstanceCount ?: 0}" />
			</div>
                        </div>
		</div>
	</body>
</html>
