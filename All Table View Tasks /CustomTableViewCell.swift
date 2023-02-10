//
//  CustomTableViewCell.swift
//  47
//
//  Created by hamdi on 02/01/2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var addToFav: UIButton!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var fruitPhoto: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func passData(name:String ,price:Double ,description :String ,photo :UIImage){
        nameLbl.text = name
        priceLbl.text = "\(price)EGY"
        descriptionLbl.text = description
        fruitPhoto.image = photo
        
    }

    @IBAction func addToFav(_ sender: Any) {
        addToFav.tintColor = UIColor.red
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
