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
            return "🇺🇸"
        case "Canada":
            return "🇨🇦"
        case "France":
            return "🇫🇷"
        case "United Kingdom":
            return "🇬🇧"
        default:
            return "🏳"
        }
    }
    
    static func countryFlag(_ country: String) -> String {
        switch country {
        case "United States":
            return "🇺🇸 " + country
        case "Canada":
            return "🇨🇦 " + country
        case "France":
            return "🇫🇷 " + country
        case "United Kingdom":
            return "🇬🇧 " + country
        default:
            return "🏳" + country
        }
    }
}
