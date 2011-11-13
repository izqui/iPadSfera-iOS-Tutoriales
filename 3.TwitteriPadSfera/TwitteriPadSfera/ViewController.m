//
//  ViewController.m
//  TwitteriPadSfera
//
//  Created by Jorge Izquierdo on 11/9/11.
//  Copyright (c) 2011 JIzqApps. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize textView;
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)twittear:(id)sender{
    
    [self.textView resignFirstResponder];
    NSString *mensaje = [NSString stringWithFormat:@"%@ Enviado desde #twitteriPadSfera", self.textView.text];
    
    TWTweetComposeViewController *tweet = [[TWTweetComposeViewController alloc] init];
    [tweet setInitialText:mensaje];
    [self presentModalViewController:tweet animated:YES];
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
