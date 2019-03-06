//
//  Themes.m
//  Homework4
//
//  Created by Aleksandr Avdukich on 06/03/2019.
//  Copyright © 2019 Sanel Avdukich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Themes.h"

@implementation Themes

-(id)init
{
  [super init];
  
  self.theme1 = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; // Белый фон.
  self.darkTint = [UIColor colorWithRed:0 green:0 blue:0 alpha:1]; // Темный шрифт.
  self.theme2 = [UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1]; // Cерый фон.
  self.whiteTint = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; // Белый шрифт.
  self.theme3 = [UIColor colorWithRed:0.96 green:0.9 blue:0.77 alpha:1]; // Шампань.
  
  return self;
}

-(void)setTheme1:(UIColor *)theme1
{
  id oldTheme1 = _theme1;
  _theme1 = [theme1 copy];
  [oldTheme1 release];
}

-(UIColor *)theme1
{
  return _theme1;
}

-(void)setTheme2:(UIColor *)theme2
{
  id oldTheme2 = _theme2;
  _theme2 = [theme2 copy];
  [oldTheme2 release];
}

-(UIColor *)theme2
{
  return _theme2;
}

-(void)setTheme3:(UIColor *)theme3
{
  id oldTheme3 = _theme3;
  _theme3 = [theme3 copy];
  [oldTheme3 release];
}

-(UIColor *)theme3
{
  return _theme3;
}

-(void)setBlackTint:(UIColor *)blackTint
{
  id oldValue = _darkTint;
  _darkTint = [_darkTint copy];
  [oldValue release];
}

-(UIColor *)darkTint {
  return _darkTint;
}

-(void)setWhiteTint:(UIColor *)whiteTint
{
  id oldValue = _whiteTint;
  _whiteTint = [whiteTint copy];
  [oldValue release];
}

-(UIColor *)whiteTint {
  return _whiteTint;
}

-(void)dealloc
{
  [[self theme1] release];
  [[self darkTint] release];
  [[self theme2] release];
  [[self whiteTint] release];
  [[self theme3] release];
  [super dealloc];
}

@end
