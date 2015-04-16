package freshcart

class Product {
    
    static searchable=true;
    ProductCategory category
    static belongsTo=ProductCategory
    
    int id
    String name
    Date expiryDate
    String description
    Double price
    String packageDetails
    String imageURL
    
    
    static constraints = {
        name(blank:false,unique:true)
        expiryDate(nullable:true)
        price(blank:false)
        packageDetails(nullable:true) 
        imageURL(nullable:true)
    }
    String toString()
    {
        name
    }
}
