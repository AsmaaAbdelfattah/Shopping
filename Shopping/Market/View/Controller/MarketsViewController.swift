//
//  MarketsViewController.swift
//  Market
//
//  Created by Asmaa_Abdelfattah on 14/07/1402 AP.
//

import UIKit

class MarketsViewController: UIViewController ,selectCategory{
   
    
    @IBOutlet weak var marketCV: UICollectionView!{
        didSet{
            marketCV.delegate = self
            marketCV.dataSource = self

        }
    }
    
    
    @IBOutlet weak var searchTF: UITextField!{
        didSet{
            
            let leftImage = UIImageView()
            
            let image1 = UIImage(named: "search")
            leftImage.image = image1
            
            let contentView = UIView()
            contentView.addSubview(leftImage)
            
            contentView.frame = CGRectMake(0, 0, 30, 15)
            leftImage.frame = CGRectMake(10, 0, 16, 16)
            
            searchTF.leftView = contentView
            searchTF.leftViewMode = UITextField.ViewMode.always
            searchTF.layer.cornerRadius = 10
        }
    }
    
     var categoryId = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
  
    func selectCategory(categoryId: Int) {
        self.categoryId = categoryId
        self.marketCV.reloadData()
    }
    
    
}
