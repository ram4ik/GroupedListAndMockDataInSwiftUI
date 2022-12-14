//
//  Person.swift
//  GroupedListAndMockDataInSwiftUI
//
//  Created by Ramill Ibragimov on 01.08.2022.
//

import Foundation

struct Person: Identifiable, Codable {
    var id = UUID().uuidString
    var firstName: String
    var lastName: String
    var role: String
    var department: String
    var country: String
    
    var fullName: String {
        lastName + " " + firstName
    }
    
    var flag: String {
        switch country {
        case "United States":
            return "πΊπΈ"
        case "Canada":
            return "π¨π¦"
        case "France":
            return "π«π·"
        case "United Kingdom":
            return "π¬π§"
        default:
            return "π³"
        }
    }
    
    static func countryFlag(_ country: String) -> String {
        switch country {
        case "United States":
            return "πΊπΈ " + country
        case "Canada":
            return "π¨π¦ " + country
        case "France":
            return "π«π· " + country
        case "United Kingdom":
            return "π¬π§ " + country
        default:
            return "π³" + country
        }
    }
}
