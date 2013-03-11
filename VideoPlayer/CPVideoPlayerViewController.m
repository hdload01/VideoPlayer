//
//  CPVideoControllerViewController.m
//  VideoPlayer
//
//  Created by Cameron Palmer on 10.03.13.
//  Copyright (c) 2013 Bird and Bear Studios. All rights reserved.
//

#import "CPVideoPlayerViewController.h"

#import <MediaPlayer/MediaPlayer.h>



@interface CPVideoPlayerViewController ()
@property (nonatomic, retain) MPMoviePlayerController *player;
@end



@implementation CPVideoPlayerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc {
    
    [super dealloc];
}

- (void)viewDidLoad
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"sample_iTunes" ofType:@"mov"];
    NSURL *url = [NSURL fileURLWithPath:path];
    
    MPMoviePlayerController *player = [[MPMoviePlayerController alloc] initWithContentURL:url];
    player.view.frame = self.view.bounds;
    [self.view addSubview:player.view];
    player.repeatMode = MPMovieRepeatModeOne;
    
    self.player = player;
    [player release];
    
    [player play];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
