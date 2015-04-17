package freshcart



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProductCategoryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 9, 100)
        respond ProductCategory.list(params), model:[productCategoryInstanceCount: ProductCategory.count()]
    }
    
    def search(String name) {
         params.name = params.name ?: "" 
         def productCategoryInstanceList = ProductCategory.findAllByNameLike(params.name)
          respond productCategoryInstanceList
    }
    
     def customSearch(String desc) {
           desc = desc ?: "XX"
           desc="%"+desc+"%"
           def productCategoryInstanceList=ProductCategory.executeQuery("""select cat from ProductCategory cat where cat.name Like :descParam OR cat.description LIKE :descParam """,[descParam :desc,max:10])
           respond productCategoryInstanceList
    }
    

    def show(ProductCategory productCategoryInstance) {
        respond productCategoryInstance
    }

    def create() {
        respond new ProductCategory(params)
    }

    @Transactional
    def save(ProductCategory productCategoryInstance) {
        if (productCategoryInstance == null) {
            notFound()
            return
        }

        if (productCategoryInstance.hasErrors()) {
            respond productCategoryInstance.errors, view:'create'
            return
        }

        productCategoryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'productCategory.label', default: 'ProductCategory'), productCategoryInstance.id])
                redirect productCategoryInstance
            }
            '*' { respond productCategoryInstance, [status: CREATED] }
        }
    }

    def edit(ProductCategory productCategoryInstance) {
        respond productCategoryInstance
    }

    @Transactional
    def update(ProductCategory productCategoryInstance) {
        if (productCategoryInstance == null) {
            notFound()
            return
        }

        if (productCategoryInstance.hasErrors()) {
            respond productCategoryInstance.errors, view:'edit'
            return
        }

        productCategoryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ProductCategory.label', default: 'ProductCategory'), productCategoryInstance.id])
                redirect productCategoryInstance
            }
            '*'{ respond productCategoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ProductCategory productCategoryInstance) {

        if (productCategoryInstance == null) {
            notFound()
            return
        }

        productCategoryInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ProductCategory.label', default: 'ProductCategory'), productCategoryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'productCategory.label', default: 'ProductCategory'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
