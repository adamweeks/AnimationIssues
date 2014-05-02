//
//  AVRViewController.m
//  AnimationIssues
//
//  Created by Adam Weeks on 5/2/14.
//  Copyright (c) 2014 AppsVersusRobots, LLC. All rights reserved.
//

#import "AVRViewController.h"

#define DEGREES_TO_RADIANS(angle) ((angle) / 180.0 * M_PI)

@interface AVRViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *loadingImageView;

@end

@implementation AVRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    //Spin
    [self animateImageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)animateImageView
{
    [UIView animateWithDuration:1.25 delay:0.0 options:(UIViewAnimationOptionAllowUserInteraction | UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse) animations:^{
        self.loadingImageView.transform = CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(179));
    } completion:^(BOOL finished) {
        NSLog(@"complete");
    }];
}

@end
