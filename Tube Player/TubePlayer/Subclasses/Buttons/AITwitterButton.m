//
//  TwitterButton.m
//  App Installer
//
//  Created by Justin Proulx on 2017-06-29. Based on work by AppleBetas.
//  Copyright © 2017 Low Budget Animation Studios. All rights reserved.
//

#import "AITwitterButton.h"

@implementation AITwitterButton

-(void)didMoveToWindow {
    [super didMoveToWindow];
    [self setColours];
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    [self setupShadow];
    [self setColours];
}

-(void)setColours
{
    self.backgroundColor = self.tintColor;
    self.titleLabel.textColor = [UIColor whiteColor];
}

-(void)doCircleRadius
{
    [super doCircleRadius];
    self.layer.cornerRadius /= 1.5;
    self.layer.shadowPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:self.layer.cornerRadius].CGPath;
}

- (void)setupShadow
{
    //give a drop shadow to buttons
    self.layer.masksToBounds = NO;
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOffset = CGSizeMake(0.0f, 5.0f);
    self.layer.shadowOpacity = 0.2f;
}

@end
