//
//  ProductPageViewController.swift
//  VisitorPatternExample
//
//  Created by Berk Batuhan ŞAKAR on 30.11.2019.
//  Copyright © 2019 Berk Batuhan ŞAKAR. All rights reserved.
//

import UIKit.UIPageViewController

final class ProductPageViewController: UIPageViewController {
    
    lazy private var viewControllerList: [UIViewController] = {
        let storyboard = self.storyboard
        return [storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController,
        storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController,storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController]
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        
        if let firstVC = viewControllerList.first
        {
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
    
    }
    
    private func configure(){
        delegate = self
        dataSource = self
    }

}

extension ProductPageViewController: UIPageViewControllerDelegate {
    
}

extension ProductPageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
      
        guard let viewControllerIndex = viewControllerList.firstIndex(of: viewController) else { return nil }
        
        
        let previousIndex = viewControllerIndex - 1
        guard previousIndex >= 0 else { return nil }
        
        guard viewControllerList.count > previousIndex else {
            return nil
        }
        
        return viewControllerList[previousIndex]
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
         guard let viewControllerIndex = viewControllerList.firstIndex(of: viewController) else { return nil }

        
        let nextIndex = viewControllerIndex + 1
        guard nextIndex >= 0 else { return nil }
        
        guard viewControllerList.count != nextIndex else {
            return nil
        }
        
        guard viewControllerList.count > nextIndex else {
            return nil
        }
        
        return viewControllerList[nextIndex]
    }
    
    
}
