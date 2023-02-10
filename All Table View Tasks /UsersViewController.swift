//
//  UsersViewController.swift
//  47
//
//  Created by hamdi on 02/01/2023.
//

import UIKit

class UsersViewController: UIViewController {
   var arrs = [String]()
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var txtUserName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
       
    }
    
    @IBAction func btnEdit(_ sender: Any) {
        tableView.isEditing = !tableView.isEditing
    }
    
    @IBAction func btnAddd(_ sender: Any) {
         if let text = txtUserName.text {
             arrs.append(text)
             let index = IndexPath(row: arrs.count-1, section: 0)
             tableView.beginUpdates()
             tableView.insertRows(at: [index], with: .automatic)
             tableView.endUpdates()
             txtUserName.text=""
        }
    }
    
    

}
extension  UsersViewController : UITableViewDelegate {
    
}
extension UsersViewController :UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cel = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cel.textLabel?.text = arrs[indexPath.row]
        return cel
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        arrs.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deletionAction = UIContextualAction(style: .destructive, title: "") {( action, view, completionHandler)in
            self.arrs.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
            completionHandler(true)
        }
        let favAction = UIContextualAction(style:.normal, title: "") {( _, _, _) in
         print("fav")
            
        }
        favAction.image = UIImage(systemName: "heart")
        deletionAction.image = UIImage(systemName: "trash")
        return UISwipeActionsConfiguration(actions: [deletionAction,favAction])
    }
}
    
    
    
