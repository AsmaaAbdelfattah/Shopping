//
//  MarketsVCEXT.swift
//  Market
//
//  Created by Asmaa_Abdelfattah on 14/07/1402 AP.
//

import Foundation
import UIKit
extension MarketsViewController: UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.row{
        case 0:
            guard let categoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCVCell", for: indexPath) as? CategoryCVCell else {return UICollectionViewCell()}
            categoryCell.selectDelegate = self
            return categoryCell
        case 1 :
            guard let marketCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MarketCVCell", for: indexPath) as? MarketCVCell else {return UICollectionViewCell()}
            marketCell.categoryId = categoryId
            marketCell.marketCV.reloadData()
            return marketCell
        default:
            return UICollectionViewCell()
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch indexPath.row{
        case 0 :
            return CGSize(width: collectionView.frame.width, height: 70)
        case 1:
            return CGSize(width: collectionView.frame.width , height: collectionView.frame.height)
        default:
            return CGSize(width: 0, height: 0)
        }
    }
 
}
