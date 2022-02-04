//
//  Contacts.swift
//  ContactListSwiftUI
//
//  Created by Vladislav Ryabtsev on 04.02.2022.
//

import SwiftUI

struct ContactsView: View {
    let contactList: [Person]
    
    var body: some View {
        
        NavigationView {
            List(contactList, id: \.self) { contact in
                NavigationLink(destination: DetailContactsView(contact: contact)) {
                    Text(contact.foulName)
                }
            }.listStyle(.plain)
                .navigationTitle("Contact List")
        }
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contactList: Person.getPersonList())
    }
}
