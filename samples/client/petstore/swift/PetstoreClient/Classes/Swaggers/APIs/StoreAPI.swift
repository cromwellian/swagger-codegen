//
// StoreAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import PromiseKit

extension PetstoreClientAPI {
    
    public class StoreAPI: APIBase {
    
        /**
         
         Returns pet inventories by status
         
         - GET /store/inventory
         - Returns a map of status codes to quantities
         - API Key:
           - type: apiKey api_key 
           - name: api_key
         - examples: [{contentType=application/json, example={
  "key" : 123
}}, {contentType=application/xml, example=not implemented io.swagger.models.properties.MapProperty@d1e580af}]
         - examples: [{contentType=application/json, example={
  "key" : 123
}}, {contentType=application/xml, example=not implemented io.swagger.models.properties.MapProperty@d1e580af}]

         - returns: RequestBuilder<[String:Int]> 
         */
        public class func getInventory() -> RequestBuilder<[String:Int]> {
            let path = "/store/inventory"
            let URLString = PetstoreClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<[String:Int]>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Place an order for a pet
         
         - POST /store/order
         - 
         - examples: [{contentType=application/json, example={
  "petId" : 123456789,
  "quantity" : 123,
  "id" : 123456789,
  "shipDate" : "2016-02-07T13:55:23.709+0000",
  "complete" : true,
  "status" : "aeiou"
}}, {contentType=application/xml, example=<Order>
  <id>123456</id>
  <petId>123456</petId>
  <quantity>0</quantity>
  <shipDate>2016-02-07T05:55:23.712Z</shipDate>
  <status>string</status>
  <complete>true</complete>
</Order>}]
         - examples: [{contentType=application/json, example={
  "petId" : 123456789,
  "quantity" : 123,
  "id" : 123456789,
  "shipDate" : "2016-02-07T13:55:23.709+0000",
  "complete" : true,
  "status" : "aeiou"
}}, {contentType=application/xml, example=<Order>
  <id>123456</id>
  <petId>123456</petId>
  <quantity>0</quantity>
  <shipDate>2016-02-07T05:55:23.712Z</shipDate>
  <status>string</status>
  <complete>true</complete>
</Order>}]
         
         - parameter body: (body) order placed for purchasing the pet

         - returns: RequestBuilder<Order> 
         */
        public class func placeOrder(body body: Order?) -> RequestBuilder<Order> {
            let path = "/store/order"
            let URLString = PetstoreClientAPI.basePath + path
            
            let parameters = body?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<Order>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Find purchase order by ID
         
         - GET /store/order/{orderId}
         - For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions
         - examples: [{contentType=application/json, example={
  "petId" : 123456789,
  "quantity" : 123,
  "id" : 123456789,
  "shipDate" : "2016-02-07T13:55:23.713+0000",
  "complete" : true,
  "status" : "aeiou"
}}, {contentType=application/xml, example=<Order>
  <id>123456</id>
  <petId>123456</petId>
  <quantity>0</quantity>
  <shipDate>2016-02-07T05:55:23.713Z</shipDate>
  <status>string</status>
  <complete>true</complete>
</Order>}]
         - examples: [{contentType=application/json, example={
  "petId" : 123456789,
  "quantity" : 123,
  "id" : 123456789,
  "shipDate" : "2016-02-07T13:55:23.713+0000",
  "complete" : true,
  "status" : "aeiou"
}}, {contentType=application/xml, example=<Order>
  <id>123456</id>
  <petId>123456</petId>
  <quantity>0</quantity>
  <shipDate>2016-02-07T05:55:23.713Z</shipDate>
  <status>string</status>
  <complete>true</complete>
</Order>}]
         
         - parameter orderId: (path) ID of pet that needs to be fetched

         - returns: RequestBuilder<Order> 
         */
        public class func getOrderById(orderId orderId: String) -> RequestBuilder<Order> {
            var path = "/store/order/{orderId}"
            path = path.stringByReplacingOccurrencesOfString("{orderId}", withString: "\(orderId)", options: .LiteralSearch, range: nil)
            let URLString = PetstoreClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Order>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Delete purchase order by ID
         
         - DELETE /store/order/{orderId}
         - For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors
         
         - parameter orderId: (path) ID of the order that needs to be deleted

         - returns: RequestBuilder<Void> 
         */
        public class func deleteOrder(orderId orderId: String) -> RequestBuilder<Void> {
            var path = "/store/order/{orderId}"
            path = path.stringByReplacingOccurrencesOfString("{orderId}", withString: "\(orderId)", options: .LiteralSearch, range: nil)
            let URLString = PetstoreClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
        }
    
    }
}
