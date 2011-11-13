//
//  ViewController.h
//  TwitteriPadSfera
//
//  Created by Jorge Izquierdo on 11/9/11.
//  Copyright (c) 2011 JIzqApps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Twitter/Twitter.h>

@interface ViewController : UIViewController
{
    UITextView *textView;
}
@property (nonatomic, strong) IBOutlet UITextView *textView;
-(IBAction)twittear:(id)sender;
@end
