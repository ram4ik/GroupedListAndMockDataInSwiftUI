//
//  MockService.swift
//  GroupedListAndMockDataInSwiftUI
//
//  Created by Ramill Ibragimov on 01.08.2022.
//

import Foundation

enum MockService {
    static var sampleData: [Person] {
        [
            Person(firstName: "Bob",
                   lastName: "Smith",
                   role: "Manager",
                   department: "Finance",
                   country: "Canada"),
            Person(firstName: "Mark",
                   lastName: "Reet",
                   role: "Engineer",
                   department: "Finance",
                   country: "Canada"),
            Person(firstName: "Margaret",
                   lastName: "Dolly",
                   role: "Worker",
                   department: "Finance",
                   country: "Canada"),
            Person(firstName: "Ed",
                   lastName: "Noch",
                   role: "Worker",
                   department: "Finance",
                   country: "Canada"),
        ]
    }
}
