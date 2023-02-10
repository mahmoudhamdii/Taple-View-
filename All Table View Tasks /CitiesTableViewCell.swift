//
//  CitiesTableViewCell.swift
//  47
//
//  Created by hamdi on 05/01/2023.
//

import UIKit

class CitiesTableViewCell: UITableViewCell {

//    @IBOutlet weak var citiesImageView: UIImageView!
    
    @IBOutlet weak var cityImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
