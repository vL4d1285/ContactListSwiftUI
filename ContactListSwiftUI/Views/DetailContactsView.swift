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
            HStack {
                Image(systemName: "phone").foregroundColor(.blue)
                Text(contact.phone)
            }
            HStack {
                Image(systemName: "mail").foregroundColor(.blue)
                Text(contact.email)
            }
        }
        .navigationTitle(contact.foulName)
        .frame(width: 440)
    }
}

struct DetailContactsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactsView(contact: Person(name: "", surname: "", phone: "", email: ""))
    }
}
