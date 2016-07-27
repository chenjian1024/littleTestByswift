//
//  testTableViewCell.swift
//  littleTestByswift
//
//  Created by chenjian on 16/7/27.
//  Copyright © 2016年 chenjian. All rights reserved.
//

import UIKit

class testTableViewCell: UITableViewCell {
    var model:testModel? {
    didSet{
    nameLabel.text = model?.name ?? "空"
        ageLabel.text = model?.age ?? "kong"
    }
    }
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
