//
//  MyPageVC.swift
//  PageControllerApp
//
//  Created by Mukul on 15/09/25.
//

import UIKit


class MyPageVC: UIPageViewController, UIPageViewControllerDataSource {
   
    var pages = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        
        //Crating pages
        
        let page1 = PageContentVC()
        page1.pageIndex = 0
        page1.titleText = "Welcome"
        
        let page2 = PageContentVC()
        page2.pageIndex = 1
        page2.titleText = "Learn Swift"
        
        let page3 = PageContentVC()
        page3.titleText = "Build App"
        
        pages = [page1, page2, page3]
        
        // Set initial Pass
        setViewControllers([pages[2]], direction: .forward, animated: true)
    }

   
    // MARK: - DataSource Methods
        
        func pageViewController(_ pageViewController: UIPageViewController,
                                viewControllerBefore viewController: UIViewController) -> UIViewController? {
            guard let index = pages.firstIndex(of: viewController), index > 0 else {
                return nil
            }
            return pages[index - 1]
        }
        
        func pageViewController(_ pageViewController: UIPageViewController,
                                viewControllerAfter viewController: UIViewController) -> UIViewController? {
            guard let index = pages.firstIndex(of: viewController), index < pages.count - 1 else {
                return nil
            }
            return pages[index + 1]
        }
    
}

extension MyPageVC: UIPageViewControllerDelegate {
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return pages.count
    }
    
    func presentationIndex(for pageViewCOntroller: UIPageViewController) -> Int {
        guard let currentVC = viewControllers?.first,
                let index = pages.firstIndex(of: currentVC) else {
            return 0
        }
        
        return index

    }
}
