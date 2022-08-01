//
//  PersonListView.swift
//  GroupedListAndMockDataInSwiftUI
//
//  Created by Ramill Ibragimov on 01.08.2022.
//

import SwiftUI

struct PersonListView: View {
    
    @StateObject private var viewModel = PersonListViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.people) { person in
                    Text(person.fullName)
                }
            }
            .navigationTitle("People")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.circle.fill")
                    }
                    .imageScale(.large)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListView()
    }
}
