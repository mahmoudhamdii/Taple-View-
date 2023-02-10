//
//  NumbersViewController.swift
//  47
//
//  Created by hamdi on 05/01/2023.
//

import UIKit

class NumbersViewController: UIViewController {
    var arr  = [String]()
    let refreshControl = UIRefreshControl()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        refreshControl.tintColor = UIColor.red
        refreshControl.addTarget(self, action: #selector(getData), for: .valueChanged)
        tableView.addSubview(refreshControl)
    
        
        
    }
    @objc  func getData(){
        arr.append("Num: \(arr.count)")
        refreshControl.endRefreshing()
        tableView.reloadData()
    }
}
extension NumbersViewController :UITableViewDelegate  {
     
}
extension NumbersViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cel = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cel.textLabel?.text = arr[indexPath.row]
        return cel
            
        
    }
    
  
    
   
}
