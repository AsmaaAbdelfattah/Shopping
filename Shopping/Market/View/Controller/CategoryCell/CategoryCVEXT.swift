//
//  CategoryTVEXT.swift
//  Market
//
//  Created by Asmaa_Abdelfattah on 14/07/1402 AP.
//
import UIKit
import Foundation
extension CategoryCVCell: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let categoryItem = collectionView.dequeueReusableCell(withReuseIdentifier: "\(CategoryItemCell.self)", for: indexPath) as? CategoryItemCell else{
            return UICollectionViewCell()}
        categoryItem.categoryLabel.text = categories[indexPath.row].name
        categoryItem.categoryImg.image = UIImage(named: categories[indexPath.row].img)
        if index == indexPath.row{
            categoryItem.categoryView.layer.borderWidth = 1
            categoryItem.categoryView.layer.borderColor = UIColor.orange.cgColor
        }
        else{
            categoryItem.categoryView.layer.borderWidth = 1
            categoryItem.categoryView.layer.borderColor = UIColor.clear.cgColor
        }
        return categoryItem
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 125, height: 50)
        //categories[indexPath.row].name.size(withAttributes: nil) ?? CGSize(width: 0, height: 0)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        index = indexPath.row
        selectDelegate?.selectCategory(categoryId: index)
        categoryCV.reloadData()
    }
}
