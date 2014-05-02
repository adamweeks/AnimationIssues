//
//  AVRAnimatedTableViewCell.m
//  AnimationIssues
//
//  Created by Adam Weeks on 5/2/14.
//  Copyright (c) 2014 AppsVersusRobots, LLC. All rights reserved.
//

#import "AVRAnimatedTableViewCell.h"
@import QuartzCore;

#define DEGREES_TO_RADIANS(angle) ((angle) / 180.0 * M_PI)

@interface AVRAnimatedTableViewCell ()

@property (strong, nonatomic) IBOutlet UIImageView *loadingImageView;

@end

@implementation AVRAnimatedTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)animateCell
{
    [self.loadingImageView.layer removeAllAnimations];
    [UIView animateWithDuration:0.75 delay:1.0 options:(UIViewAnimationOptionAllowUserInteraction | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionRepeat) animations:^{
        self.loadingImageView.transform = CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(90));
    } completion:^(BOOL finished) {
        
    }];
}

@end
