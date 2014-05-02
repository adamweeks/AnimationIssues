//
//  AVRAnimatedTableViewCell.m
//  AnimationIssues
//
//  Created by Adam Weeks on 5/2/14.
//  Copyright (c) 2014 AppsVersusRobots, LLC. All rights reserved.
//

#import "AVRAnimatedTableViewCell.h"

@implementation AVRAnimatedTableViewCell

- (void)prepareForReuse
{
    [self setNeedsDisplay];
}

@end
