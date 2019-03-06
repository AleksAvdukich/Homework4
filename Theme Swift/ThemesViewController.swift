//
//  ThemesViewController.swift
//  Homework4
//
//  Created by Aleksandr Avdukich on 06/03/2019.
//  Copyright © 2019 Sanel Avdukich. All rights reserved.
//

import UIKit

class ThemesViewController: UIViewController {
  
  private var model: ThemesSwift?
  var delegate: ThemesViewControllerDeleateSwift?
  var closure: (() -> ())?
  
  
  @IBAction func changeButton(_ sender: UIButton) {
    
    switch sender.tag {
    case 1:
      let theme = self.model?.theme1 ?? UIColor.black
      let tint = self.model?.darkTint ?? UIColor.black
      delegate?.themesViewController(didSelectTheme: theme, didSelectTint: tint)
      closure!()
      navigationController?.navigationBar.barTintColor = theme
      navigationController?.navigationBar.tintColor = tint
      navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: tint]
      break
    case 2:
      let theme = self.model?.theme2 ?? UIColor.black
      let tint = self.model?.whiteTint ?? UIColor.white
      delegate?.themesViewController(didSelectTheme: theme, didSelectTint: tint)
      closure!()
      navigationController?.navigationBar.barTintColor = theme
      navigationController?.navigationBar.tintColor = tint
      navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: tint]
      break
    case 3:
      let theme = self.model?.theme3 ?? UIColor.black
      let tint = self.model?.darkTint ?? UIColor.black
      delegate?.themesViewController(didSelectTheme: theme, didSelectTint: tint)
      closure!()
      navigationController?.navigationBar.barTintColor = theme
      navigationController?.navigationBar.tintColor = tint
      navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: tint]
      break
    default:
      print("Wrong tag!")
    }
  }
  
  @IBAction func saveButton(_ sender: UIBarButtonItem) {
    self.dismiss(animated: true, completion: nil)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationController?.navigationBar.tintColor = .black
    model = ThemesSwift()
    
  }

}
