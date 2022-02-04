//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Vladislav Ryabtsev on 04.02.2022.
//

import SwiftUI

struct NumbersView: View {
    let contactList: [Person]
    
    var body: some View {
        
        NavigationView{
            List(contactList, id: \.self) { contact in
                Section(header: Text("\(contact.foulName)")) {
                    HStack {
                        Image(systemName: "phone").foregroundColor(.blue)
                        Text("\(contact.phone)")
                    }
                    HStack{
                        Image(systemName: "mail").foregroundColor(.blue)
                        Text("\(contact.email)")
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contactList: Person.getPersonList())
    }
}
