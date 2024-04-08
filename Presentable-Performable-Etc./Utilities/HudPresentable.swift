//
//  HudPresentable.swift
//  Presentable-Performable-Etc.
//
//  Created by Sezgin Çiftci on 8.04.2024.
//

import UIKit
import MBProgressHUD

protocol HudPresentable {
    func showHud()
    func hideHud()
}

extension HudPresentable where Self: UIViewController {
    func showHud() {
        MBProgressHUD.showAdded(to: view, animated: true)
    }
    
    func hideHud() {
        MBProgressHUD.hide(for: view, animated: true)
    }
}
