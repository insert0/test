//
//  RWTViewController.m
//  SpriteKitSimpleGame
//
//  Created by Dong-Jun Kim on 4/25/14.
//  Copyright (c) 2014 djkim. All rights reserved.
//

@import AVFoundation;
#import "RWTViewController.h"
#import "RWTMyScene.h"

@interface RWTViewController()
@property (nonatomic) AVAudioPlayer *backgroundMusicPlayer;
@end

@implementation RWTViewController

//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//
//    // Configure the view.
//    SKView * skView = (SKView *)self.view;
//    skView.showsFPS = YES;
//    skView.showsNodeCount = YES;
//    
//    // Create and configure the scene.
//    SKScene * scene = [RWTMyScene sceneWithSize:skView.bounds.size];
//    scene.scaleMode = SKSceneScaleModeAspectFill;
//    
//    // Present the scene.
//    [skView presentScene:scene];
//}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];

    // play background music
//    NSError *error;
//    NSURL *backgroundMusicURL = [[NSBundle mainBundle] URLForResource:@"background-music-aac" withExtension:@"caf"];
//    self.backgroundMusicPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:backgroundMusicURL error:&error];
//    self.backgroundMusicPlayer.numberOfLoops = -1;
//    [self.backgroundMusicPlayer prepareToPlay];
//    [self.backgroundMusicPlayer play];
    
    SKView *skView = (SKView *)self.view;
    if (!skView.scene) {
        skView.showsFPS = YES;
        skView.showsNodeCount = YES;
        
        SKScene *scene = [RWTMyScene sceneWithSize:skView.bounds.size];
        scene.scaleMode = SKSceneScaleModeAspectFill;
        
        [skView presentScene:scene];
    }
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
