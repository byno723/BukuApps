//
//  ExampleTableViewCell.swift
//  BookApps
//
//  Created by Gorbyno S on 15/06/22.
//

import UIKit

class ExampleTableViewCell: UITableViewCell {

    @IBOutlet weak var lableTitle: UILabel!
    
    @IBOutlet weak var lableAuthor: UILabel!
    
    @IBOutlet weak var lableYear: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
