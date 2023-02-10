//
//  CitiesViewController.swift
//  47
//
//  Created by hamdi on 05/01/2023.
//

import UIKit

class CitiesViewController: UIViewController {
    var arrs = [UIImage(named:"img_amman")!,
                UIImage(named:"img_cairo")!,
                UIImage(named:"img_dubai")!,
                UIImage(named:"img_riyadh")!]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    

  
}
extension CitiesViewController :UITableViewDelegate {
    
}
extension CitiesViewController :UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cel = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CitiesTableViewCell
        
            cel.cityImage.image = arrs[indexPath.row]
            return cel
        
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let image = arrs[indexPath.row]
        let imgRatio = image.size.width / image.size.height
        
        return tableView.frame.width / imgRatio 
    }
    
    
}
