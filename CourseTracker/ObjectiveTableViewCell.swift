//
//  ObjectiveTableViewCell.swift
//  CourseTracker
//
//  Created by Parker Donat on 2/12/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

// class prevents a retain cycle
protocol ObjectiveTableViewCellDelegate: class {
    func masterySwitchValueChangedOnCell(cell: ObjectiveTableViewCell)
}

class ObjectiveTableViewCell: UITableViewCell {

    @IBOutlet weak var objectiveLabel: UILabel!
    @IBOutlet weak var masterySwitch: UISwitch!
    weak var delagate: ObjectiveTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func masterySwitchValueChanged(sender: UISwitch) {
        delagate?.masterySwitchValueChangedOnCell(self)
    }
}
