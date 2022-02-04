//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Vladislav Ryabtsev on 04.02.2022.
//

import SwiftUI

struct MainView: View {
    let contactList = Person.getPersonList()
    
    var body: some View {
        TabView {
            ContactsView(contactList: contactList)
                .tabItem {
                    Image(systemName: "person.3.sequence.fill")
                    Text("Contacts")
                }
            NumbersView(contactList: contactList)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
