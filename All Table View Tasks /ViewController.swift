//
//  ViewController.swift
//  47
//
//  Created by hamdi on 27/12/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableVC: UITableView!
    var arrFruits : [Fruit] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableVC.register(UINib(nibName: "CustomTableViewCell", bundle:nil), forCellReuseIdentifier: "CustomTableViewCell")
        tableVC.dataSource = self
        tableVC.delegate = self
      arrFruits.append(Fruit.init(name:"Apple", price: 10, description: "greate TEST", photo:UIImage(named: "test1")!))
        arrFruits.append(Fruit.init(name:"Banana", price: 12, description: "greate TEST", photo:UIImage(named: "test2")!))
        arrFruits.append(Fruit.init(name:"Lemon", price: 13, description: "greate TEST", photo:UIImage(named: "test3")!))
        arrFruits.append(Fruit.init(name:"Mango", price: 14, description: "greate TEST", photo:UIImage(named: "test4")!))
        arrFruits.append(Fruit.init(name:"Orange", price: 15, description: "greate TEST", photo:UIImage(named: "test5")!))
        arrFruits.append(Fruit.init(name:"Papaya", price: 16, description: "greate TEST", photo:UIImage(named: "test6")!))
    
        
    }


}
extension ViewController : UITableViewDelegate {
    
}
extension ViewController :UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
     100
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    arrFruits.count
      
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
      let passTest = arrFruits[indexPath.row]
        cell.passData(name: passTest.name, price: passTest.price,
        description: passTest.description, photo: passTest.photo)
    
        return cell
       
    }
    
    
}
struct Fruit {
    var name : String
    var price : Double
    var description : String
    var photo :UIImage
}

