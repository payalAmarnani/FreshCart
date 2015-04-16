package freshcart



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProductController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 9, 100)
        respond Product.list(params), model:[productInstanceCount: Product.count()]
    }
    
    def search(String name) {
         params.name = params.name ?: "" 
         def productInstanceList = Product.findAllByNameLike(params.name)
          respond productInstanceList
    }
    
    /*def customSearch2(String name, String desc){
          name = name ?: ""
          desc = desc ?: "%XX%"
          def productInstanceList=Product.executeQuery("""select pdt from Product pdt where pdt.name=:nameParam OR pdt.description LIKE :descParam """,[nameParam :name,descParam :desc,max:10])
          respond productInstanceList
    }*/
    
    def customSearch(String desc){
          desc = desc ?: "XX"
          desc="%"+desc+"%"
          def productInstanceList=Product.executeQuery("""select pdt from Product pdt where pdt.name LIKE :descParam or pdt.description LIKE :descParam """,[descParam :desc,max:10])
          respond productInstanceList
    }
    

    def priceRange(String lowest, String highest){
          lowest = lowest ?: ""
          highest = highest ?: ""
          def lowestv1=lowest as Double;
          def highestv1=highest as Double;
//          println lowestv1;
//          println highestv1;
//          println lowest;
//          println highest;

def productInstanceList=Product.executeQuery("""select pdt from Product pdt where pdt.price BETWEEN :lowestParam  and :highestParam""",[lowestParam :lowestv1,highestParam :highestv1,max:152])
        
          respond productInstanceList
    }
    
    
    def sortByPrice() {
         def productInstanceList = Product.listOrderByPrice()
          respond productInstanceList
//        def productInstanceList=Product.executeQuery("""select pdt from Product pdt order by pdt.price""")
//        respond productInstanceList
    } 
    
    def sortByPriceDesc() {
         def productInstanceList = Product.listOrderByPrice(order:"desc")
          respond productInstanceList
    }
    
    
    def show(Product productInstance) {
        respond productInstance
    }

    def create() {
        respond new Product(params)
    }

    @Transactional
    def save(Product productInstance) {
        if (productInstance == null) {
            notFound()
            return
        }

        if (productInstance.hasErrors()) {
            respond productInstance.errors, view:'create'
            return
        }

        productInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'product.label', default: 'Product'), productInstance.id])
                redirect productInstance
            }
            '*' { respond productInstance, [status: CREATED] }
        }
    }

    def edit(Product productInstance) {
        respond productInstance
    }

    @Transactional
    def update(Product productInstance) {
        if (productInstance == null) {
            notFound()
            return
        }

        if (productInstance.hasErrors()) {
            respond productInstance.errors, view:'edit'
            return
        }

        productInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Product.label', default: 'Product'), productInstance.id])
                redirect productInstance
            }
            '*'{ respond productInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Product productInstance) {

        if (productInstance == null) {
            notFound()
            return
        }

        productInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Product.label', default: 'Product'), productInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
