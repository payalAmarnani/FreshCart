<%@ page import="freshcart.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="product.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${productInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'expiryDate', 'error')} ">
	<label for="expiryDate">
		<g:message code="product.expiryDate.label" default="Expiry Date" />
		
	</label>
	<g:datePicker name="expiryDate" precision="day"  value="${productInstance?.expiryDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="product.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="price" required="" value="${productInstance?.price}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'packageDetails', 'error')} ">
	<label for="packageDetails">
		<g:message code="product.packageDetails.label" default="Package Details" />
		
	</label>
	<g:textField name="packageDetails" value="${productInstance?.packageDetails}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'imageURL', 'error')} ">
	<label for="imageURL">
		<g:message code="product.imageURL.label" default="Image URL" />
		
	</label>
	<g:textField name="imageURL" value="${productInstance?.imageURL}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="product.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${freshcart.ProductCategory.list()}" optionKey="id" required="" value="${productInstance?.category?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="product.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${productInstance?.description}"/>

</div>

