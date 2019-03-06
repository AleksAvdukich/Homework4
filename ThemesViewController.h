//
//  ThemesViewController.h
//  Homework4
//
//  Created by Aleksandr Avdukich on 06/03/2019.
//  Copyright © 2019 Sanel Avdukich. All rights reserved.
//

@import UIKit;
@class Themes;
@protocol ThemesViewControllerDelegate;

@interface ThemesViewController : UIViewController
{
  id<ThemesViewControllerDelegate> _delegate;
  Themes *_model;
}

@property (nonatomic, retain) id<ThemesViewControllerDelegate> delegate;

@property (nonatomic, assign) Themes *model;

@end
