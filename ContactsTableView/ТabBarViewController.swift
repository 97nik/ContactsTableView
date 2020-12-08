//
//  ТabBarViewController.swift
//  ContactsTableView
//
//  Created by Никита on 08.12.2020.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let personList = Person.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewControllers(with: personList)
    }
    
    private func setupViewControllers(with persons: [Person]) {
        let contactListVC = viewControllers?.first as! ContactListViewController
        let sectionVC = viewControllers?.last as! SelectionTableViewController
        
        contactListVC.personList = personList
        sectionVC.personList = personList
    }
}
