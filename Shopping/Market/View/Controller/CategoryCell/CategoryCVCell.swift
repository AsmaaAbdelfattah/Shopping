//
//  CategoryTVCell.swift
//  Market
//
//  Created by Asmaa_Abdelfattah on 14/07/1402 AP.
//

import UIKit

class CategoryCVCell: UICollectionViewCell {

    
    @IBOutlet weak var categoryCV: UICollectionView!{
        didSet{
            categoryCV.delegate = self
            categoryCV.dataSource = self
            categoryCV.register(UINib(nibName: "\(CategoryItemCell.self)", bundle: nil), forCellWithReuseIdentifier: "CategoryItemCell")
        }
    }
 
    var categories :[Category] = [Category(img: "", name: "All"),
                                  Category( img: "burger", name: "Salted")
                                 ,Category( img: "Twinki", name: "Dessert")
                            ]
    
    var index = 0
    var selectDelegate: selectCategory?
    override func awakeFromNib() {
        super.awakeFromNib()
     //   marketVM.getCategories()
       // categories = marketVM.categories
    }

 
    
}
