//
//  SV_TableViewCell.swift
//  TableView_3
//
//  Created by Nguyen Duc Huy on 5/31/21.
//  Copyright © 2021 Nguyen Duc Huy. All rights reserved.
//

import UIKit

class SV_TableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_SVname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
