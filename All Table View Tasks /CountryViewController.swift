//
//  CountryViewController.swift
//  47
//
//  Created by hamdi on 05/01/2023.
//

import UIKit

class CountryViewController: UIViewController {
    var arrs = ["EGYPT","Saudi Arabia","Oman","Jordan","Yamen","Qutar"]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        arrs.removeAll()
        tableView.delegate = self
        tableView.dataSource = self
        if arrs.count == 0 {
            tableView.isHidden = true
            let img  = UIImageView(frame: CGRect(x: 50, y: 100, width: self.view.frame.width-100, height: 200))
            img.image = UIImage(systemName: "icloud.slash")
            img.tintColor = UIColor.blue
            view.addSubview(img)
            
            
        }
    }
    
    

  

}
extension CountryViewController :UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cel = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cel.backgroundColor = UIColor.gray
        cel.textLabel?.text = arrs[indexPath.row]
        return cel
    }
    
    
}
extension CountryViewController :UITableViewDelegate {
    
}
