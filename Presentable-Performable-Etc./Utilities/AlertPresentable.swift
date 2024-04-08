//
//  AlertPresentable.swift
//  Presentable-Performable-Etc.
//
//  Created by Sezgin Çiftci on 8.04.2024.
//

import UIKit

protocol AlertPresentable {
    func showAlert(title: String,
                   message: String,
                   actions: [UIAlertAction])
}

extension AlertPresentable where Self: UIViewController {
    func showAlert(title: String = "Hata",
                   message: String = "Bir şeyler ters gitti.",
                   actions: [UIAlertAction] = []) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        actions.forEach { action in
            alert.addAction(action)
        }
        if actions.isEmpty {
            alert.addAction(UIAlertAction(title: "OK", style: .cancel))
        }
        present(alert, animated: true)
    }
}
