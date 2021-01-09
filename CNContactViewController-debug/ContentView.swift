//
//  ContentView.swift
//  CNContactViewController-debug
//
//  Created by Matteo Meluzzi on 1/9/21.
//

import SwiftUI
import Contacts
import ContactsUI

struct ContentView: View {
    var body: some View {
        List {
            Text("Hello, world!")
                .padding()
            Section {
                NavigationLink(destination: ContactView(CNContact()), label: {
                    Text("Show me a contact")
                })
            }
        }.listStyle(GroupedListStyle())
    }
}
