//
//  UIView.swift
//  CleanSwift
//

import UIKit

extension UIView {
    
    func addedTo<T>(_ view: UIView) -> T {
        view.addSubview(self)
        return self as! T
    }
    
}
