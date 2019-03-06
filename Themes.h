//
//  Themes.h
//  Homework4
//
//  Created by Aleksandr Avdukich on 06/03/2019.
//  Copyright © 2019 Sanel Avdukich. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface Themes : NSObject
{
  UIColor *_theme1;
  UIColor *_theme2;
  UIColor *_theme3;
  UIColor *_darkTint;
  UIColor *_whiteTint;
}

@property (nonatomic, copy) UIColor *theme1;
@property (nonatomic, copy) UIColor *theme2;
@property (nonatomic, copy) UIColor *theme3;
@property (nonatomic, copy) UIColor *darkTint;
@property (nonatomic, copy) UIColor *whiteTint;

@end
