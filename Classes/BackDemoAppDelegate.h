//
//  BackDemoAppDelegate.h
//  BackDemo
//
//  Created by dav on 1/24/11.
//  Copyright 2011 Lumos Labs, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BackDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

- (void) startNewNavStack;

@end

