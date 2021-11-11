//
//  StarBucksViewController.swift
//  Starbucks Clone
//
//  Created by Dan Grimm on 02/11/21.
//

import UIKit

class StarBucksViewController: UIViewController {
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func commonInit() {
        
    }
    
    func setTabBarImage(imageName: String, title: String) {
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
    }
}


class ScanViewController: StarBucksViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemIndigo
        title = "Scan"
    }
    
    override func commonInit() {
        setTabBarImage(imageName: "qrcode", title: "Scan")
    }
}


class OrderViewController: StarBucksViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemOrange
        title = "Order"
    }
    
    override func commonInit() {
        setTabBarImage(imageName: "arrow.up.bin.fill", title: "Order")
    }
}


class GiftViewController: StarBucksViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemGreen
        title = "Gift"
    }
    
    override func commonInit() {
        setTabBarImage(imageName: "gift.fill", title: "Gift")
    }
}


class StoreViewController: StarBucksViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemTeal
        title = "Stores"
    }
    
    override func commonInit() {
        setTabBarImage(imageName: "location.fill", title: "Stores")
    }
}

