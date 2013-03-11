//
//  CPAppDelegate.h
//  VideoPlayer
//
//  Created by Cameron Palmer on 10.03.13.
//  Copyright (c) 2013 Bird and Bear Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CPVideoPlayerViewController.h"



@interface CPAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) CPVideoPlayerViewController *videoPlayerViewController;

@end
