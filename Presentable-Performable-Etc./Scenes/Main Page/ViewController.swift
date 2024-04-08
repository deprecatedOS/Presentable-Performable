//
//  ViewController.swift
//  Presentable-Performable-Etc.
//
//  Created by Sezgin Çiftci on 7.04.2024.
//

import UIKit

final class ViewController: UIViewController, AlertPresentable, HudPresentable {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func showAlertTapped(_ sender: Any) {
        showAlert()
    }
    
    @IBAction func showLoader(_ sender: Any) {
        showHud()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.hideHud()
        }
    }
    
    @IBAction func routeTapped(_ sender: Any) {
        let navVC = UINavigationController(rootViewController: SecondViewController())
        navVC.modalPresentationStyle = .fullScreen
        navVC.modalTransitionStyle = .crossDissolve
        present(navVC, animated: true)
    }
    
}













//protocol AlertPresentable {
//    func showDefualtAlert(title: String, message: String, actions: [UIAlertAction])
//}
//
//
//extension AlertPresentable where Self: UIViewController {
//    func showDefualtAlert(title: String = "Hata",
//                          message: String = "Bir şeyler ters gitti.",
//                          actions: [UIAlertAction] = []) {
//        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        actions.forEach { action in
//            alert.addAction(action)
//        }
//        if actions.isEmpty {
//            alert.addAction(UIAlertAction(title: "OK", style: .cancel))
//        }
//        present(alert, animated: true)
//    }
//}


//protocol LoaderPresentable {
//    func showHud()
//    func hideHud()
//}
//
//extension LoaderPresentable where Self: UIViewController {
//    func showHud() {
//        MBProgressHUD.showAdded(to: view, animated: true)
//    }
//    
//    func hideHud() {
//        MBProgressHUD.hide(for: view, animated: true)
//    }
//}


//protocol LoaderPresentable {
//    func showLoader()
//    func dissmisLoader()
//}
//
//private let indicator = UIActivityIndicatorView(frame: CGRect(x: 0.0,
//                                                y: 0.0,
//                                                width: UIScreen.main.bounds.size.width,
//                                                height: UIScreen.main.bounds.size.height))
//
//extension LoaderPresentable where Self: UIViewController {
//    func showLoader() {
//        indicator.layer.cornerRadius = 0
//        indicator.color = UIColor.black
//        indicator.center = view.center
//        indicator.backgroundColor = UIColor(red: 1/255, green: 1/255, blue: 1/255, alpha: 0.5)
//        indicator.hidesWhenStopped = true
//        indicator.startAnimating()
//        view.addSubview(indicator)
//    }
//    
//    func dissmisLoader() {
//        indicator.stopAnimating()
//    }
//}

//
//
//final class ObjectAssociation<T: AnyObject> {
//
//    private let policy: objc_AssociationPolicy
//
//    /// - Parameter policy: An association policy that will be used when linking objects.
//    init(policy: objc_AssociationPolicy = .OBJC_ASSOCIATION_RETAIN_NONATOMIC) {
//
//        self.policy = policy
//    }
//
//    /// Accesses associated object.
//    /// - Parameter index: An object whose associated object is to be accessed.
//    subscript(index: AnyObject) -> T? {
//
//        get { return objc_getAssociatedObject(index, Unmanaged.passUnretained(self).toOpaque()) as! T? }
//        set { objc_setAssociatedObject(index, Unmanaged.passUnretained(self).toOpaque(), newValue, policy) }
//    }
//}
//
//extension UIViewController {
//    private static let association = ObjectAssociation<UIActivityIndicatorView>()
//    
//    var activityIndicator: UIActivityIndicatorView {
//        set { UIViewController.association[self] = newValue }
//        get {
//            if let indicator = UIViewController.association[self] {
//                return indicator
//            } else {
//                UIViewController.association[self] = UIActivityIndicatorView.customIndicator(at: self.view.center)
//                return UIViewController.association[self]!
//            }
//        }
//    }
//    
//    // MARK: - Acitivity Indicator
//    public func startIndicatingActivity() {
//        DispatchQueue.main.async {
//            self.view.addSubview(self.activityIndicator)
//            self.activityIndicator.startAnimating()
//        }
//    }
//    
//    public func stopIndicatingActivity() {
//        DispatchQueue.main.async {
//            self.activityIndicator.stopAnimating()
//        }
//    }
//}
//
//extension UIActivityIndicatorView {
//    public static func customIndicator(at center: CGPoint) -> UIActivityIndicatorView {
//        let indicator = UIActivityIndicatorView(frame: CGRect(x: 0.0, y: 0.0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
//        indicator.layer.cornerRadius = 0
//        indicator.color = UIColor.black
//        indicator.center = center
//        indicator.backgroundColor = UIColor(red: 1/255, green: 1/255, blue: 1/255, alpha: 0.5)
//        indicator.hidesWhenStopped = true
//        indicator.startAnimating()
//        return indicator
//    }
//}
