//
//  ViewController.h
//  TextfieldsYBotones
//
//  Created by Jorge Izquierdo on 11/6/11.
//  Copyright (c) 2011 JIzqApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
    UILabel *label;
    UITextField *textField;
}
@property (nonatomic, strong) IBOutlet UILabel *label;
@property (nonatomic, strong) IBOutlet UITextField *textField;
-(IBAction)cambiaTexto:(id)sender;
-(IBAction)ponTextoPersonalizado:(id)sender;
@end
