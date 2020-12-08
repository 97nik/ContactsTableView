//
//  PhoneandEmailViewController.swift
//  ContactsTableView
//
//  Created by Никита on 08.12.2020.
//

import UIKit

class PhoneandEmailViewController: UIViewController {
    
    var person: Person!

    @IBOutlet var phone: UILabel!
    @IBOutlet var email: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phone.text = person.phoneNumber
        email.text = person.email
        
    }
    

}
