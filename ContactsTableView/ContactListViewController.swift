//
//  ContactListViewController.swift
//  ContactsTableView
//
//  Created by Никита on 08.12.2020.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var personList: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let person = personList[indexPath.row]
        cell.textLabel?.text = person.fullName


        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let person = personList[indexPath.row]
        performSegue(withIdentifier: "showPhone", sender: person)
    }

  

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? PhoneandEmailViewController else { return }
        detailsVC.person = sender as? Person
    }

}
