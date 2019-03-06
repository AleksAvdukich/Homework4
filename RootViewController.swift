//
//  RootViewController.swift
//  Homework4
//
//  Created by Aleksandr Avdukich on 06/03/2019.
//  Copyright © 2019 Sanel Avdukich. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationController?.navigationBar.tintColor = .black
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    #if OBJC
    if let themesViewController = (segue.destination as! UINavigationController).viewControllers.first as? ThemesViewController {
      themesViewController.delegate = self
    }
    #endif
    #if SWIFT
    if let themesViewController = (segue.destination as! UINavigationController).viewControllers.first as? ThemesViewController {
      themesViewController.delegate = self
      themesViewController.closure = {
        self.logThemeChanging()
      }
    }
    #endif
  }
}

// Для сборки Homework_4
#if OBJC
extension RootViewController: ThemesViewControllerDelegate {
  func themesViewController(_ controller: ThemesViewController!, didSelectTheme selectedTheme: UIColor!, didSelectTint selectedTint: UIColor!) {
    // Меняется navigationBar и view.backgroundColor у Root View Controller'а.
    self.navigationController?.navigationBar.barTintColor = selectedTheme
    self.navigationController?.navigationBar.tintColor = selectedTint
    self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: selectedTint]
    self.view.backgroundColor = selectedTheme
    logThemeChanging()
  }
  
  func logThemeChanging() {
    print("Установлена новая тема")
  }
}
#endif

// Для сборки Homework_4.swift
#if SWIFT
extension RootViewController: ThemesViewControllerDeleateSwift {
  func themesViewController(didSelectTheme: UIColor, didSelectTint: UIColor) {
    self.navigationController?.navigationBar.barTintColor = didSelectTheme
    self.navigationController?.navigationBar.tintColor = didSelectTint
    self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: didSelectTint]
    self.view.backgroundColor = didSelectTheme
  }
  
  func logThemeChanging() {
    print("Установлена новая тема")
  }
}
#endif

