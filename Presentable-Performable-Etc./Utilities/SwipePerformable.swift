//
//  SwipePerformable.swift
//  Presentable-Performable-Etc.
//
//  Created by Sezgin Çiftci on 8.04.2024.
//

import UIKit

protocol SwipePerformable {
    func addSwipeGesture()
    func removeSwipeGesure()
}

extension SwipePerformable where Self: UIViewController {
    func addSwipeGesture() {
        let gesture = UISwipeGestureRecognizer(target: self, action: #selector(popVC))
        gesture.direction = .right
        view.addGestureRecognizer(gesture)
    }
    
    func removeSwipeGesure() {
        view.gestureRecognizers?.forEach({ gesture in
            view.removeGestureRecognizer(gesture)
        })
    }
}

fileprivate extension UIViewController {
    @objc func popVC() {
        dismiss(animated: true)
    }
}
