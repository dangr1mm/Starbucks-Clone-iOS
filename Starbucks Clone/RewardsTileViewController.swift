//
//  RewardTileViewController.swift
//  Starbucks Clone
//
//  Created by Dan Grimm on 10/11/21.
//

import UIKit

class RewardsTileViewController: UIViewController {
    
    let rewardsTileView = RewardsTileView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rewardsTileView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(rewardsTileView)
        
        NSLayoutConstraint.activate([
            rewardsTileView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            rewardsTileView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            rewardsTileView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            rewardsTileView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
