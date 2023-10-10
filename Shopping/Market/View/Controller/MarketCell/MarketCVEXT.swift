//
//  MarketTVEXT.swift
//  Market
//
//  Created by Asmaa_Abdelfattah on 15/07/1402 AP.
//

import Foundation
import UIKit
extension MarketCVCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch categoryId{
        case 0:
            return Markets.count
        case 1:
            return salted.count
        default:
            return dessert.count
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let marketItem = collectionView.dequeueReusableCell(withReuseIdentifier: "MarketItemCell", for: indexPath) as? MarketItemCell else{return UICollectionViewCell()}
        switch categoryId{
        case 0:
            marketItem.marketName.text = Markets[indexPath.row].name
            marketItem.marketImg.image = UIImage(named: Markets[indexPath.row].img)
            if Markets[indexPath.row].isFav{
                marketItem.favImg.image = UIImage(systemName: "heart.fill")
            }
        case 1:
            marketItem.marketName.text = salted[indexPath.row].name
            marketItem.marketImg.image = UIImage(named: salted[indexPath.row].img)
            if salted[indexPath.row].isFav{
                marketItem.favImg.image = UIImage(systemName: "heart.fill")
            }
        default:
            marketItem.marketName.text = dessert[indexPath.row].name
            marketItem.marketImg.image = UIImage(named: dessert[indexPath.row].img)
            if dessert[indexPath.row].isFav{
                marketItem.favImg.image = UIImage(systemName: "heart.fill")
            }
        }
        
        return marketItem
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width - 45) / 2, height: 200)
    }
   
}
