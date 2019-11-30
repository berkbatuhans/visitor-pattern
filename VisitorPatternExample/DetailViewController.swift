//
//  ViewController.swift
//  VisitorPatternExample
//
//  Created by Berk Batuhan ŞAKAR on 30.11.2019.
//  Copyright © 2019 Berk Batuhan ŞAKAR. All rights reserved.
//

import UIKit.UIViewController

final class DetailViewController: UIViewController {
    var product: ProductModel = ProductModel()
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet final weak var productNameLabel: UILabel!
    @IBOutlet final weak var productPriceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        
        pageControl.numberOfPages = 4
        pageControl.
        
    }
    
    private func configure(){
        productPriceLabel.text = product.price
        productNameLabel.text = product.name
    }


}

