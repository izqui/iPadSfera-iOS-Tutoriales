//
//  WebViewController.h
//  NavegadoriPadSfera
//
//  Created by Jorge Izquierdo on 11/19/11.
//  Copyright (c) 2011 JIzqApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController
@property (nonatomic, strong) IBOutlet UIWebView *webView;
@property (nonatomic, strong) NSURLRequest *request;
@end
