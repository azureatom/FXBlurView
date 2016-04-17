//
//  ViewController.m
//  FXBlurViewExample
//
//  Created by Nick Lockwood on 25/08/2013.
//  Copyright (c) 2013 Charcoal Design. All rights reserved.
//

#import "ViewController.h"
#import "FXBlurView.h"
#import <QuartzCore/QuartzCore.h>


@interface ViewController ()

@property (nonatomic, weak) IBOutlet FXBlurView *blurView;

@end


@implementation ViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    self.blurView.dynamic = NO;
    
    //default blurRadius is 40 if not specified. We set 0 here. 0 doesn't mean no blur, but blur a little.
    self.blurView.blurRadius = 0;
    self.blurView.alpha = 0; //even blurRadius 0 toggle blur effect a little. To show without blur, should make it transparent.
    
    //tintColor prefer [UIColor clearColor] or [UIColor blackColor].
    self.blurView.tintColor = [UIColor clearColor];
//    self.blurView.blurRadius = 0;
}

- (IBAction)toggleBlur
{
    if (self.blurView.blurRadius < 5)
    {
        [UIView animateWithDuration:0.5 animations:^{
            self.blurView.blurRadius = 40;
            self.blurView.alpha = 1;
        }];
    }
    else
    {
        [UIView animateWithDuration:0.5 animations:^{
            self.blurView.blurRadius = 0;
            self.blurView.alpha = 0;
            self.blurView.blurEnabled = NO;
        }];
    }
}

@end
