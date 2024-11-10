//
//  Untitled.swift
//  SwiftPractice
//
//  Created by Thakur Arjun Singh on 10/11/24.
//

import ObjectMapper

struct GetApiModel : Mappable {
    var id : Int?
    var name : String?
    var username : String?
    var email : String?
    var address : Address?
    var phone : String?
    var website : String?
    var company : Company?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        id <- map["id"]
        name <- map["name"]
        username <- map["username"]
        email <- map["email"]
        address <- map["address"]
        phone <- map["phone"]
        website <- map["website"]
        company <- map["company"]
    }

}
struct Address : Mappable {
    var street : String?
    var suite : String?
    var city : String?
    var zipcode : String?
   // var geo : Geo?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        street <- map["street"]
        suite <- map["suite"]
        city <- map["city"]
        zipcode <- map["zipcode"]
      //  geo <- map["geo"]
    }

}
struct Company : Mappable {
    var name : String?
    var catchPhrase : String?
    var bs : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        name <- map["name"]
        catchPhrase <- map["catchPhrase"]
        bs <- map["bs"]
    }

}
