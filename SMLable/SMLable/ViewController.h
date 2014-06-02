//
//  ViewController.h
//  SMLable
//
//  Created by Sumit Mundra on 02/06/14.
//  Copyright (c) 2014 Sumit Mundra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SMLable.h"
@interface ViewController : UIViewController<SMLableDeleage>

@property (nonatomic, strong) IBOutlet SMLable *lbl;

@end
