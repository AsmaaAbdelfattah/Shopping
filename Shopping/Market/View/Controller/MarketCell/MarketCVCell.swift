//
//  MarketTVCell.swift
//  Market
//
//  Created by Asmaa_Abdelfattah on 15/07/1402 AP.
//

import UIKit

class MarketCVCell: UICollectionViewCell {

    
    @IBOutlet weak var marketCV: UICollectionView!{
        didSet{
    marketCV.delegate = self
            marketCV.dataSource = self
            marketCV.register(UINib(nibName: "\(MarketItemCell.self)", bundle: nil), forCellWithReuseIdentifier: "MarketItemCell")
        }
    }
    
    @IBOutlet weak var marketCVHeight: NSLayoutConstraint!
    var Markets = [Market(name: "bread", img: "bread", isFav: false),
                   Market(name: "chease", img: "chease", isFav: false),
                   Market(name: "milk", img: "milk", isFav: true),
                   Market(name: "Egg", img: "egg", isFav: true),
                   Market(name: "Twinki", img: "Twinki", isFav: false)]
    var dessert = [ Market(name: "Twinki", img: "Twinki", isFav: false)]
    var salted = [Market(name: "bread", img: "bread", isFav: false),
                  Market(name: "chease", img: "chease", isFav: false),
                  Market(name: "milk", img: "milk", isFav: true),
                  Market(name: "Egg", img: "egg", isFav: true)]
    var categoryId = 0
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        addObserver()
    }


    func addObserver(){
            marketCV.addObserver(self, forKeyPath: "contentSize", options: .new, context: nil)
        }
        override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
            
            guard let collectionView = object as? UICollectionView,
                  keyPath?.elementsEqual("contentSize") ?? false
            else {
                return
            }
    marketCVHeight.constant = collectionView.contentSize.height
            layoutIfNeeded()
        }
   
}
