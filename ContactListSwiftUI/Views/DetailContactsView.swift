//
//  DetailContactsView.swift
//  ContactListSwiftUI
//
//  Created by Vladislav Ryabtsev on 04.02.2022.
//

import SwiftUI

struct DetailContactsView: View {    
    let contact: Person
    
    var body: some View {
        Form {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .padding()
                    .frame(width: 150, height: 150, alignment: .center)
                Spacer()
            }
            Label(contact.phone, systemImage: "phone")
            Label(contact.email, systemImage: "mail")
        }
        .navigationTitle(contact.foulName)
        .frame(width: 440)
    }
}

struct DetailContactsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactsView(contact: Person.getPersonList().first!)
    }
}
