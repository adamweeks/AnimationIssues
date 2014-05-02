//
//  AVRAnimatedTableViewController.m
//  AnimationIssues
//
//  Created by Adam Weeks on 5/2/14.
//  Copyright (c) 2014 AppsVersusRobots, LLC. All rights reserved.
//

#import "AVRAnimatedTableViewController.h"
#import "AVRAnimatedTableViewCell.h"
@import QuartzCore;

#define DEGREES_TO_RADIANS(angle) ((angle) / 180.0 * M_PI)

@interface AVRAnimatedTableViewController ()

@end

@implementation AVRAnimatedTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AVRAnimatedTableViewCell *cell = (AVRAnimatedTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"animatedCell" forIndexPath:indexPath];
    cell.label.text = [NSString stringWithFormat:@"%d",indexPath.row];
  
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
  AVRAnimatedTableViewCell *aCell = (AVRAnimatedTableViewCell *)cell;
  NSLog(@"will display cell %d",indexPath.row);
  if(aCell.layer.animationKeys.count > 0) {
    [aCell.loadingImageView.layer removeAllAnimations];
  }
  [UIView animateWithDuration:0.75 delay:1.0 options:(UIViewAnimationOptionAllowUserInteraction | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionRepeat) animations:^{
    NSLog(@"in here %d",indexPath.row);
    aCell.loadingImageView.transform = CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(90));
    NSLog(@"%d keys %@",indexPath.row,aCell.loadingImageView.layer.animationKeys);
  } completion:^(BOOL finished) {
  }];
}

- (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSLog(@"end display cell  %d",indexPath.row);
}

@end
