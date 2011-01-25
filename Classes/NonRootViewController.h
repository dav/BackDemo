//
//  NonRootViewController.h
//  BackDemo
//
//  Created by dav on 1/24/11.
//  Copyright 2011 Lumos Labs, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface NonRootViewController : UIViewController {
  IBOutlet UIButton* button;
  NSUInteger index;
}

@property (nonatomic) NSUInteger index;

- (IBAction) buttonTapped:(id)sender;

@end
