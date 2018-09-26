//
//  ProductCollectionViewCell.swift
//  uicollectioncell-from-xib
//
//  Created by Rohmat Suseno on 26/09/18.
//  Copyright © 2018 Pesanmerpati. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
