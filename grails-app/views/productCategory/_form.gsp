<%@ page import="freshcart.ProductCategory" %>



<div class="fieldcontain ${hasErrors(bean: productCategoryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="productCategory.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${productCategoryInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productCategoryInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="productCategory.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${productCategoryInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productCategoryInstance, field: 'imageURL', 'error')} required">
	<label for="imageURL">
		<g:message code="productCategory.imageURL.label" default="Image URL" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="imageURL" required="" value="${productCategoryInstance?.imageURL}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productCategoryInstance, field: 'product', 'error')} ">
	<label for="product">
		<g:message code="productCategory.product.label" default="Product" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${productCategoryInstance?.product?}" var="p">
    <li><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="product" action="create" params="['productCategory.id': productCategoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'product.label', default: 'Product')])}</g:link>
</li>
</ul>


</div>

