//
//  ResultsListCell.swift
//  lastfm
//
//  Created by Joao Bastos on 12/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import UIKit

class ResultsListCell: UITableViewCell {
    
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var albumName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.selectionStyle = UITableViewCell.SelectionStyle.none;
    }
    static func nibName() -> String{
        
        return "ResultsListCell";
    }
}
