//
//  DetalleVC.h
//  NodeExample
//
//  Created by Jorge Izquierdo on 1/22/12.
//  Copyright (c) 2012 JIzqApps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Item.h"
@interface DetalleVC : UIViewController
@property (nonatomic, strong) Item *item;
@property (nonatomic, strong) IBOutlet UILabel *titleLb, *detailLb;
@end
