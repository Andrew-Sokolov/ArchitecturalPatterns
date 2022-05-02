//
//  RoutableController.swift
//  VIPER
//

import UIKit

protocol RoutableController: AnyObject {
    func show(_ vc: UIViewController, sender: Any?)
}
