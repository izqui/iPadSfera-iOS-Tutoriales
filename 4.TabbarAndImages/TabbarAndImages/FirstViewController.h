//
//  FirstViewController.h
//  TabbarAndImages
//
//  Created by Jorge Izquierdo on 11/13/11.
//  Copyright (c) 2011 JIzqApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) UIImage *image;

-(IBAction)ponerImagen:(id)sender;
-(IBAction)quitarImagen:(id)sender;
@end
