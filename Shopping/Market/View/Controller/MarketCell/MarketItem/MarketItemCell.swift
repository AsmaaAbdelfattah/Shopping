//
//  MarketCVCell.swift
//  Market
//
//  Created by Asmaa_Abdelfattah on 15/07/1402 AP.
//

import UIKit

class MarketItemCell: UICollectionViewCell {

  
    @IBOutlet weak var marketImg: UIImageView!
    @IBOutlet weak var marketName: UILabel!
    @IBOutlet weak var cartBtn: UIButton!
    @IBOutlet weak var favBtn: UIButton!
    @IBOutlet weak var favImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
