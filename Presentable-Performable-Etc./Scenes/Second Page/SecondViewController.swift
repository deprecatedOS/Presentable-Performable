//
//  SecondViewController.swift
//  Presentable-Performable-Etc.
//
//  Created by Sezgin Çiftci on 8.04.2024.
//

import UIKit

final class SecondViewController: UIViewController, SwipePerformable {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        addSwipeGesture()
    }
}
