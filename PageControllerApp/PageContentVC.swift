//
//  PageContentVC.swift
//  PageControllerApp
//
//  Created by Mukul on 15/09/25.
//

import UIKit

class PageContentVC: UIViewController {
    var pageIndex: Int = 0
    var titleText: String = "First Page"
    
    private let label = UILabel()    // Access Levels in swift (private , Public , File Private, Open)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = [.systemRed, .systemGreen, .systemBlue][pageIndex]
        
        label.text = titleText
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        
        label.textAlignment = .center
        label.frame = view.bounds
        view.addSubview(label)
        
    }
}
