//
//  TableViewCell.swift
//  Meme Me
//
//  Created by Tigran Tshorokhyan on 5/7/17.
//  Copyright © 2017 Tigran Tshorokhyan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var tableImage: UIImageView!
    
    @IBOutlet weak var tableLable: UILabel!
    
    
    func pushCell(_ meme: Meme) {
        tableImage.image = meme.memedImage
    }

}
