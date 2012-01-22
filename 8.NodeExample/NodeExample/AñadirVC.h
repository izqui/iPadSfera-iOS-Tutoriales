//
//  AñadirVC.h
//  NodeExample
//
//  Created by Jorge Izquierdo on 1/22/12.
//  Copyright (c) 2012 JIzqApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface An_adirVC : UIViewController
@property (nonatomic, strong) IBOutlet UITextField *titleTF, *detailTF;
-(IBAction)send:(id)sender;
-(IBAction)cancel:(id)sender;
-(NSString*)correctStr:(NSString*)str;
@end
