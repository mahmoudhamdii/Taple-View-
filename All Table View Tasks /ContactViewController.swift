//
//  ContactViewController.swift
//  47
//
//  Created by hamdi on 03/01/2023.
//

import UIKit

class ContactViewController: UIViewController {
    var arrSection = ["A","H","M"]
    var arrRows = [["Ahmed","Ali","Adel"],["Hamdi","Hager","Hamed"],["Mahmoud","Mohamed"]]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
}
extension ContactViewController :UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        arrSection.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrRows[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cel = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cel.textLabel?.text = arrRows[indexPath.section][indexPath.row]
        return cel
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        arrSection[section]
        
    }
    
         
    }
    extension ContactViewController :UITableViewDelegate {
        
    }

    



