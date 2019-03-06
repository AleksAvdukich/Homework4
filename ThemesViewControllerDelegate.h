//
//  ThemesViewControllerDelegate.h
//  Homework4
//
//  Created by Aleksandr Avdukich on 06/03/2019.
//  Copyright © 2019 Sanel Avdukich. All rights reserved.
//

@class ThemesViewController;

@protocol ThemesViewControllerDelegate <NSObject>

-(void)themesViewController:(ThemesViewController *)controller didSelectTheme:(UIColor *)selectedTheme didSelectTint:(UIColor *)selectedTint;

@end
