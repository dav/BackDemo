//
//  NonRootViewController.m
//  BackDemo
//
//  Created by dav on 1/24/11.
//  Copyright 2011 Lumos Labs, Inc. All rights reserved.
//

#import "NonRootViewController.h"
#import "BackDemoAppDelegate.h"

@implementation NonRootViewController

@synthesize index;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
  [super viewDidLoad];
  
  if (self.index < 10) {
    // The following line is a problem in iOS 4.2.1
    self.navigationItem.hidesBackButton = YES;
  }

  self.title = [NSString stringWithFormat:@"NonRoot %d", self.index];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

- (IBAction) buttonTapped:(id)sender {
  if (self.index < 10) {
    [((BackDemoAppDelegate*)([[UIApplication sharedApplication] delegate]) ) startNewNavStack];
  } else {
    NonRootViewController* controller = [[NonRootViewController alloc] initWithNibName:@"NonRootViewController" bundle:nil];
    controller.index = self.index + 1;
    [self.navigationController pushViewController:controller animated:YES];
    [controller release];
  }
}

@end



















