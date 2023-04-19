//
//  NavigationConfigurator.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 19.04.23.
//

import SwiftUI

struct NavigationConfigurator: UIViewControllerRepresentable {
  func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    if let nc = uiViewController.navigationController {
      self.configure(nc)
    }
  }
  
  var configure: (UINavigationController) -> Void = { _ in }
  
  func makeUIViewController(context: Context) -> some UIViewController {
    UIViewController()
  }
}
