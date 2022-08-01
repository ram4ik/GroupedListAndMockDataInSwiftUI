//
//  PersonListView.swift
//  GroupedListAndMockDataInSwiftUI
//
//  Created by Ramill Ibragimov on 01.08.2022.
//

import SwiftUI

struct PersonListView: View {
    
    @StateObject var viewModel = PersonListViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.people) { person in
                    PersonRowView(person: person)
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
        PersonListView(viewModel: PersonListViewModel(forPreview: true))
    }
}

struct PersonRowView: View {
    let person: Person
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(person.flag + " " + person.fullName)
                .font(.largeTitle)
            Text(person.department)
                .font(.title2)
            Text(person.role)
                .fontWeight(.bold)
        }
    }
}
