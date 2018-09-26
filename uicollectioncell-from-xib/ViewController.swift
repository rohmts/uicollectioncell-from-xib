//
//  ViewController.swift
//  uicollectioncell-from-xib
//
//  Created by Rohmat Suseno on 26/09/18.
//  Copyright © 2018 Pesanmerpati. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let productCollectionViewCellId = "ProductCollectionViewCell"
    
    var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //register cell
        let nibCell = UINib(nibName: productCollectionViewCellId, bundle: nil)
        collectionView.register(nibCell, forCellWithReuseIdentifier: productCollectionViewCellId)
        
        // init data
        for _ in 1...25 {
            let product = Product()
            product?.name = "Headphone"
            product?.desc = "Lorem ipsum"
            products.append(product!)
        }
        collectionView.reloadData()
    }
}

// CollectionView
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let inset: CGFloat = 10
        return UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: productCollectionViewCellId, for: indexPath) as! ProductCollectionViewCell
        let product = products[indexPath.row]
        cell.imageView.image = UIImage(named: "WhatsNewSwift4-feature-1")
        cell.labelName.text = product.name!
        cell.labelDesc.text = product.desc!
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let product = products[indexPath.row]
        print("\(indexPath.row) - \(product.name!)")
    }
}

