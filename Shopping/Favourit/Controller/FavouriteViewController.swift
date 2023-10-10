//
//  FavouriteViewController.swift
//  Shopping
//
//  Created by Asmaa_Abdelfattah on 18/07/1402 AP.
//

import UIKit

class FavouriteViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var favouriteCv: UICollectionView!{
        didSet{
            favouriteCv.register(UINib(nibName: "\(MarketItemCell.self)", bundle: nil), forCellWithReuseIdentifier: "MarketItemCell")
        }}
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var favourites : [Market] = [Market(name: "bread", img: "bread", isFav: true),
                                 Market(name: "chease", img: "chease", isFav: true),
                                 Market(name: "milk", img: "milk", isFav: true),
                                 Market(name: "Egg", img: "egg", isFav: true)
                               ]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return favourites.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let marketItem = collectionView.dequeueReusableCell(withReuseIdentifier: "MarketItemCell", for: indexPath) as? MarketItemCell else{return UICollectionViewCell()}
     
            marketItem.marketName.text = favourites[indexPath.row].name
            marketItem.marketImg.image = UIImage(named: favourites[indexPath.row].img)
        if favourites[indexPath.row].isFav{
            marketItem.favImg.image = UIImage(systemName: "heart.fill")
        }
        return marketItem
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width - 45) / 2, height: 200)
    }
}
