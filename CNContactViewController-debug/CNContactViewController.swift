//
//  CNContactViewControllerRepresentable.swift
//  ContactTool
//
//  Created by Matteo Meluzzi on 11/2/20.
//

import SwiftUI
import ContactsUI

struct ContactView: UIViewControllerRepresentable {
    let contact: CNContact
    
    class Coordinator: NSObject, CNContactViewControllerDelegate {
        
        func contactViewController(_ viewController: CNContactViewController, didCompleteWith contact: CNContact?) {
        }
    }
    
    init (_ contact: CNContact) {
        self.contact = contact
    }

    func makeUIViewController(context: Context) -> CNContactViewController {
        let controller = CNContactViewController(for: contact)
        controller.allowsEditing = true
        controller.delegate = context.coordinator
        
        return controller
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }

    
    func updateUIViewController(_ uiViewController: CNContactViewController, context: Context) {
        
    }
}
