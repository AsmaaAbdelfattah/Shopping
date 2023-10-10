//
//  ViewController.swift
//  Shopping
//
//  Created by Asmaa_Abdelfattah on 18/07/1402 AP.
//

import UIKit

class CartViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var cartCV: UICollectionView!{
        didSet{
            cartCV.register(UINib(nibName: "\(MarketItemCell.self)", bundle: nil), forCellWithReuseIdentifier: "MarketItemCell")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    var cart : [Market] = [Market(name: "bread", img: "bread", isFav: false),
                           Market(name: "chease", img: "chease", isFav: false),
                           Market(name: "milk", img: "milk", isFav: true),
                           Market(name: "Egg", img: "egg", isFav: true),
                           Market(name: "Twinki", img: "Twinki", isFav: false)]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cart.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let marketItem = collectionView.dequeueReusableCell(withReuseIdentifier: "MarketItemCell", for: indexPath) as? MarketItemCell else{return UICollectionViewCell()}
     
            marketItem.marketName.text = cart[indexPath.row].name
            marketItem.marketImg.image = UIImage(named: cart[indexPath.row].img)
        return marketItem
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width - 45) / 2, height: 200)
    }
}

