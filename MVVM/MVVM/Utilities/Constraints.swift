//
//  Constraints.swift
//  MVP
//

import UIKit

extension UIView {
    
    // Left
    
    @discardableResult
    func left(_ value: CGFloat, of view: UIView, priority: UILayoutPriority = .required) -> UIView {
        leftAnchor.constraint(equalTo: view.rightAnchor, constant: value).activate(with: priority)
        return self
    }
    
    @discardableResult
    func leftEdge(_ value: CGFloat, of view: UIView, priority: UILayoutPriority = .required) -> UIView {
        leftAnchor.constraint(equalTo: view.leftAnchor, constant: value).activate(with: priority)
        return self
    }
    
    // Right
    
    @discardableResult
    func rightEdge(_ value: CGFloat, of view: UIView, priority: UILayoutPriority = .required) -> UIView {
        rightAnchor.constraint(equalTo: view.rightAnchor, constant: -value).activate(with: priority)
        return self
    }
    
    // Top
    
    @discardableResult
    func top(_ value: CGFloat, of view: UIView, priority: UILayoutPriority = .required) -> UIView {
        topAnchor.constraint(equalTo: view.bottomAnchor, constant: value).activate(with: priority)
        return self
    }
    
    @discardableResult
    func topEdge(_ value: CGFloat, of view: UIView, priority: UILayoutPriority = .required) -> UIView {
        topAnchor.constraint(equalTo: view.topAnchor, constant: value).activate(with: priority)
        return self
    }
    
    @discardableResult
    func safeTopEdge(_ value: CGFloat, of view: UIView, priority: UILayoutPriority = .required) -> UIView {
        topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: value).activate(with: priority)
        return self
    }
    
    // Bottom
    
    @discardableResult
    func bottom(_ value: CGFloat, of view: UIView, priority: UILayoutPriority = .required) -> UIView {
        bottomAnchor.constraint(equalTo: view.topAnchor, constant: -value).activate(with: priority)
        return self
    }
    
    @discardableResult
    func bottomEdge(_ value: CGFloat, of view: UIView, priority: UILayoutPriority = .required) -> UIView {
        bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -value).activate(with: priority)
        return self
    }
    
    // Height
    
    @discardableResult
    func height(_ value: CGFloat, priority: UILayoutPriority = .required) -> UIView {
        heightAnchor.constraint(equalToConstant: value).activate(with: priority)
        return self
    }
    
    // Aspect Ratio
    
    @discardableResult
    func widthToHeight(aspectRatio value: CGFloat, priority: UILayoutPriority = .required) -> UIView {
        widthAnchor.constraint(equalTo: heightAnchor, multiplier: value).activate(with: priority)
        return self
    }
    
}

extension NSLayoutConstraint {
    
    // Activate
    
    @discardableResult
    func activate(with priority: UILayoutPriority) -> NSLayoutConstraint {
        self.priority = priority
        (firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        isActive = true
        return self
    }
    
}
