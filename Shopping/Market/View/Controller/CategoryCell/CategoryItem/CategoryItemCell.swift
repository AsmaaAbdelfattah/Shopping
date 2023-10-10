//
//  CategoryCVCell.swift
//  Market
//
//  Created by Asmaa_Abdelfattah on 14/07/1402 AP.
//

import UIKit

class CategoryItemCell: UICollectionViewCell {

    @IBOutlet weak var categoryView: UIView!{
        didSet{
            categoryView.layer.cornerRadius = 15
        }
    }
    
    @IBOutlet weak var categoryImg: UIImageView!
    
    @IBOutlet weak var categoryLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
