//
//  ThemesViewController.m
//  Homework4
//
//  Created by Aleksandr Avdukich on 06/03/2019.
//  Copyright © 2019 Sanel Avdukich. All rights reserved.
//

#import "ThemesViewController.h"
#import "Themes.h"
#import "ThemesViewControllerDelegate.h"

@implementation ThemesViewController

-(id<ThemesViewControllerDelegate>)delegate {
  return _delegate;
}

-(Themes *)model {
  return _model;
}

- (IBAction)changeButton:(id)sender {
  
  UINavigationBar *bar = [self.navigationController navigationBar];
  
  switch ([sender tag])
  {
    case 1:
      [[self delegate] themesViewController:self didSelectTheme:[[self model] theme1] didSelectTint:[[self model] darkTint]]; // (lldb) po _delegate = _TtC10Homework_418RootViewController *    0x7f8c4fc13e10 0x00007f8c4fc13e10 или nil (0x0).
      [bar setBarTintColor: [[self model] theme1]];
      [bar setTintColor:[[self model] darkTint]];
      [bar setTitleTextAttributes:@{NSForegroundColorAttributeName:[[self model] darkTint]}];
      break;
    case 2:
      [[self delegate] themesViewController: self didSelectTheme:[[self model] theme2] didSelectTint:[[self model] whiteTint]];
      [bar setBarTintColor: [[self model] theme2]];
      [bar setTintColor:[[self model] whiteTint]];
      [bar setTitleTextAttributes:@{NSForegroundColorAttributeName:[[self model] whiteTint]}];
      break;
    case 3:
      [[self delegate] themesViewController: self didSelectTheme:[[self model] theme3] didSelectTint:[[self model] darkTint]];
      [bar setBarTintColor: [[self model] theme3]];
      [bar setTintColor:[[self model] darkTint]];
      [bar setTitleTextAttributes:@{NSForegroundColorAttributeName:[[self model] darkTint]}];
      break;
    default:
      break;
  }
  
}


- (IBAction)saveButton:(id)sender
{
  [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  
  [[UINavigationBar appearance] setTintColor:UIColor.blackColor];
  
  self.model = [[Themes alloc] init];
}

-(void)setDelegate:(id<ThemesViewControllerDelegate>)delegate {
  if (delegate != _delegate) {
    id<ThemesViewControllerDelegate> oldDelegate = _delegate;
    _delegate = [delegate retain];
    [oldDelegate release];
  }
}

-(void)setModel:(Themes *)model {
  @synchronized(self) {
    _model = model;
  }
}

-(void) dealloc
{
  [[self model] release];
  [[self delegate] release];
  [super dealloc];
}



@end



