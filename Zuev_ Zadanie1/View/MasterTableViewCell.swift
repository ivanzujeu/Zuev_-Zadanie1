//
//  MasterTableViewCell.swift
//  Zuev_ Zadanie1
//
//  Created by Ivan on 2/13/20.
//  Copyright © 2020 Ivan Zuev. All rights reserved.
//

import UIKit

class MasterTableViewCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
