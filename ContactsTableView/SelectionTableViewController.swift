//
//  SelectionTableViewController.swift
//  ContactsTableView
//
//  Created by Никита on 08.12.2020.
//

import UIKit

class SelectionTableViewController: UITableViewController {
    
    var personList: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    //Использование метода для присваивания заголовка секции
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personList[section].fullName
    }

    
    // Использование метода для кастомизации секции с использованием кастомного класса
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "Head Cell") as! HeadCellTableViewCell
        
        headerCell.labelFullName.text = personList[section].fullName
        
        return headerCell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Details", for: indexPath)

        let person = personList[indexPath.section]
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = person.phoneNumber
            cell.imageView?.image = UIImage(systemName: "phone")
        default:
            cell.textLabel?.text = person.email
            cell.imageView?.image = UIImage(systemName: "tray")
        }


        return cell
    }
 

   
}
