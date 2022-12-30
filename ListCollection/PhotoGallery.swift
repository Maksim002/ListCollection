//
//  PhotoGallery.swift
//  ListCollection
//
//  Created by msagalov on 12/29/22.
//

import Foundation
import UIKit

class PhotoGallery{
    var images = [UIImage]()
    
    init(){
        setupGallery()
    }
	
    //Jopah
    func setupGallery(){
        for i in 0...5{
            let image = UIImage(named: "im\(i)")!
            images.append(image)
        }
    }
}
