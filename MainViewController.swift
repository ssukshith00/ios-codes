//
//  MainViewController.swift
//  rideapp2
//
//  Created by Sukshith Shetty on 02/03/20.
//  Copyright © 2020 Sukshith Shetty. All rights reserved.
//


import UIKit

class MainViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    
    //var pageControl = UIPageControl()
    

    
    lazy var orderedViewControllers: [UIViewController] = {
        return [self.newVc(viewController: "One"),
                self.newVc(viewController: "Two"), self.newVc(viewController: "Three")]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self

        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
        
        //configurePageControl()
 
    }
    
   /* func configurePageControl() {
        // The total number of pages that are available is based on how many available colors we have.
        pageControl = UIPageControl(frame: CGRect(x: 0,y: UIScreen.main.bounds.maxY - 50,width: UIScreen.main.bounds.width,height: 50))
        //self.pageControl.numberOfPages = 3
        //self.pageControl.transform = CGAffineTransform(scaleX: 2, y: 2);
        pageControl.subviews.forEach {
            $0.transform = CGAffineTransform(scaleX: 1, y: 1)
        }
        //pageControl.subviews[pageControl.currentPage].transform = CGAffineTransform(scaleX: 2, y: 2)
        //self.pageControl.currentPage = 0
        self.pageControl.numberOfPages = orderedViewControllers.count
        self.pageControl.tintColor = UIColor.orange
        self.pageControl.pageIndicatorTintColor = UIColor.black
        self.pageControl.currentPageIndicatorTintColor = UIColor.orange
        self.pageControl.subviews[self.pageControl.currentPage].transform = CGAffineTransform(scaleX: 2, y: 2)
        self.view.addSubview(pageControl)
    }*/
    
    func newVc(viewController: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: viewController)
        
    }
    
    

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1

        guard previousIndex >= 0 else {

            return nil
        }
        
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        
        return orderedViewControllers[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = orderedViewControllers.count
        
      
        guard orderedViewControllersCount != nextIndex else {
       
            return nil
        }
        
        guard orderedViewControllersCount > nextIndex else {
            return nil
        }
        
        return orderedViewControllers[nextIndex]
    }
    
    
}
