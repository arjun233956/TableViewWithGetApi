//
//  GetApiVM.swift
//  SwiftPractice
//
//  Created by Thakur Arjun Singh on 10/11/24.
//

import ObjectMapper
import Alamofire
class GetApiVM: NSObject {
    
     var userArray: [GetApiModel] = []
    
    // get Api
     func getMethodApi(completion: @escaping () -> Void) {
         AF.request("https://jsonplaceholder.typicode.com/users").validate(statusCode: 200 ..< 299).responseData { response in
             switch response.result {
                 case .success(let data):
                     do {
                         guard let jsonObject = try JSONSerialization.jsonObject(with: data) as? [[String: Any]] else {
                             print("Error: Cannot convert data to JSON object")
                             return
                         }
                         // Map the JSON array to an array of GetApiModel objects
                         let usersArray = Mapper<GetApiModel>().mapArray(JSONArray: jsonObject)
                         self.userArray = usersArray
                         completion()
                     } catch {
                         print("Error: Trying to convert JSON data to string")
                         return
                     }
                 case .failure(let error):
                     print(error)
             }
         }
     }
}
