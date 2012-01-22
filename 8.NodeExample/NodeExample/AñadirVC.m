//
//  AñadirVC.m
//  NodeExample
//
//  Created by Jorge Izquierdo on 1/22/12.
//  Copyright (c) 2012 JIzqApps. All rights reserved.
//

#import "AñadirVC.h"
#import "ASIHTTPRequest.h"
@implementation An_adirVC
@synthesize titleTF, detailTF;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

-(NSString*)correctStr:(NSString*)str{
    
    return [str stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
}
-(IBAction)send:(id)sender{
    NSLog(@"send");
    NSString *url = [NSString stringWithFormat:@"http://localhost:8080/new?title=%@&detail=%@", [self correctStr:self.titleTF.text], [self correctStr:self.detailTF.text]];
    __block __weak ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:[NSURL URLWithString:url]];
    [request setRequestMethod:@"POST"];
    
    [request setCompletionBlock:^{
        
        if ([request.responseString isEqualToString:@"ok"]){
            
            [self dismissModalViewControllerAnimated:YES];
        }
        
        else {
            
            NSLog(@"error posting");
        }
    }];
    
    [request startAsynchronous];
    
}
-(IBAction)cancel:(id)sender{
    
    [self dismissModalViewControllerAnimated:YES];
}
#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
