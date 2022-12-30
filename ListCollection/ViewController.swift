//
//  ViewController.swift
//  ListCollection
//
//  Created by msagalov on 12/29/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let identifire = "PhotoCollectionViewCell"
    let photoGallery = PhotoGallery()
    let countCells = 2
    let offset: CGFloat = 2.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        var s = UICollectionViewFlowLayout()
        s.minimumInteritemSpacing = 0
        s.minimumLineSpacing = 0
        collectionView.collectionViewLayout = s
        collectionView.register(UINib(nibName: "PhotoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: identifire)
    }
}

extension ViewController: UICollectionViewDataSource, UIScrollViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoGallery.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifire, for: indexPath) as! PhotoCollectionViewCell
        cell.f.image = photoGallery.images[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let frameCv = collectionView.frame
        let widthCell = frameCv.width / CGFloat(countCells)
        let heigCell = widthCell
        return CGSize(width: widthCell , height: heigCell)
    }
}

