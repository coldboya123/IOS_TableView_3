//
//  Food_TableViewCell.swift
//  TableView_3
//
//  Created by Nguyen Duc Huy on 5/31/21.
//  Copyright © 2021 Nguyen Duc Huy. All rights reserved.
//

import UIKit

class Food_TableViewCell: UITableViewCell {

    @IBOutlet weak var img_food: UIImageView!
    @IBOutlet weak var lbl_name: UILabel!
    @IBOutlet weak var lbl_price: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
