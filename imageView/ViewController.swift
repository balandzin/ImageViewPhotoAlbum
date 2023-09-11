//
//  ViewController.swift
//  imageView
//
//  Created by Антон Баландин on 7.09.23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = 10
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        
        //        let imageUrl = URL(string: "https://ic.pics.livejournal.com/liqht_in_mind/60442656/2473250/2473250_1000.jpg")!
        //        let data = try! Data(contentsOf: imageUrl)
        //        let image = UIImage(data: data)!
        
        //let image = UIImage(named: "2")!
        
        imageView.animationDuration = 12
        imageView.animationImages=[UIImage(named: "1")!,UIImage(named: "2")!, UIImage (named: "3")!]
        imageView.startAnimating()
        animation()
        //imageView.image = image
    }
        func animation ( ) {
            UIView.animate(withDuration: 2, delay: 2, options: [.repeat, .autoreverse, .curveEaseIn], animations: {
                self.imageView.alpha = 0
        })
    }
    
    
}

