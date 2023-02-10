//
//  HomeTableViewCell.swift
//  47
//
//  Created by hamdi on 27/12/2022.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
 
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var loveButton: UIButton!
    
    @IBOutlet weak var fruitPhoto: UIImageView!
    func passData(name:String ,price:Double ,description :String ,photo :UIImage){
        nameLbl.text = name
        priceLbl.text = "\(price)EGY"
        descriptionLbl.text = description
        fruitPhoto.image = photo
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
