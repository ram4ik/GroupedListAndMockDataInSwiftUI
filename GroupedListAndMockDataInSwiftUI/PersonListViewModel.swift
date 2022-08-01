//
//  PersonListViewModel.swift
//  GroupedListAndMockDataInSwiftUI
//
//  Created by Ramill Ibragimov on 01.08.2022.
//

import Foundation

class PersonListViewModel: ObservableObject {
    
    @Published var people: [Person] = []
    
    init(forPreview: Bool = false) {
        if forPreview {
            people = MockService.sampleData
        }
    }
}
