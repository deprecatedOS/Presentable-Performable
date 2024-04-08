//
//  BaseViewController.swift
//  Presentable-Performable-Etc.
//
//  Created by Sezgin Çiftci on 7.04.2024.
//

import UIKit
import MBProgressHUD

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    func showAlert(title: String = "Hata",
//                   message: String = "Bir şeyler ters gitti.",
//                   actions: [UIAlertAction] = []) {
//        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        actions.forEach { action in
//            alert.addAction(action)
//        }
//        if actions.isEmpty {
//            alert.addAction(UIAlertAction(title: "OK", style: .cancel))
//        }
//        present(alert, animated: true)
//    }
//    
//    func showHud() {
//        MBProgressHUD.showAdded(to: view, animated: true)
//    }
//    
//    func hideHud() {
//        MBProgressHUD.hide(for: view, animated: true)
//    }
//    
//    func addSwipeGesture() {
//        let gesture = UISwipeGestureRecognizer(target: self, action: #selector(popVC))
//        gesture.direction = .right
//        view.addGestureRecognizer(gesture)
//    }
//    
//    func removeSwipeGesure() {
//        view.gestureRecognizers?.forEach({ gesture in
//            view.removeGestureRecognizer(gesture)
//        })
//    }
//    
//    @objc private func popVC() {
//        dismiss(animated: true)
//    }
}




//protocol HudPresentable {
//    func showHud()
//    func hideHud()
//}
//
//fileprivate let indicator = UIActivityIndicatorView(frame: CGRect(x: 0.0,
//                                                                  y: 0.0,
//                                                                  width: UIScreen.main.bounds.size.width,
//                                                                  height: UIScreen.main.bounds.size.height))
//
//extension HudPresentable where Self: UIViewController {
//    func showHud() {
//        indicator.layer.cornerRadius = 0
//        indicator.color = UIColor.black
//        indicator.center = view.center
//        indicator.backgroundColor = UIColor(red: 1/255, green: 1/255, blue: 1/255, alpha: 0.5)
//        indicator.hidesWhenStopped = true
//        indicator.startAnimating()
//        view.addSubview(indicator)
//    }
//
//    func hideHud() {
//        indicator.stopAnimating()
//    }
//}
