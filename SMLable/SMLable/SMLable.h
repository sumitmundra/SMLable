//
//  SMLable.h
//  SMLable
//
//  Created by Sumit Mundra on 02/06/14.
//  Copyright (c) 2014 Sumit Mundra. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SMLable;

@protocol SMLableDeleage <NSObject>

@required

-(void)didLetterFound :(char)letter;

@end

@interface SMLable : UILabel

@property (nonatomic, assign) id <SMLableDeleage> delegate;

@end
