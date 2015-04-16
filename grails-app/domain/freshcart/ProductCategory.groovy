package freshcart

class ProductCategory {

    static searchable=true
    static hasMany = [product: Product]
     
    int id
    String name
    String description
    String imageURL
   
    static constraints = {
        name(blank:false,unique:true)
        description(nullable:true)
    }
    
    String toString()
    {
        name
    }
}
