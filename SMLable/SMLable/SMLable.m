//
//  SMLable.m
//  SMLable
//
//  Created by Sumit Mundra on 02/06/14.
//  Copyright (c) 2014 Sumit Mundra. All rights reserved.
//

#import "SMLable.h"

@implementation SMLable

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if ( self = [super initWithCoder:aDecoder])
    {
        self.backgroundColor          = [UIColor redColor];
        self.userInteractionEnabled   = YES;
    }
    return self;
}






- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    CGPoint pos    = [touch locationInView:self];
	
    int sizes[self.text.length];
    for ( int i=0; i<self .text.length; i++ )
    {
        char letter         = [self.text characterAtIndex:i];
        NSString *letterStr = [NSString stringWithFormat:@"%c", letter];
        
        CGSize letterSize = [letterStr sizeWithAttributes:
                             @{NSFontAttributeName:
                                   self.font}];
        
        sizes[i]            = letterSize.width;
    }
	
    int textWidht = 0;
    for ( int i=0; i<self.text.length; i++)
    {
        textWidht += sizes[i];
        
        
    }
    int remingspace = 0;
    if(self.textAlignment==0)
    {
        for ( int i=0; i<self.text.length; i++)
        {
            remingspace += sizes[i];
            
            if ( remingspace >= pos.x )
            {
                [ _delegate didLetterFound:[ self.text characterAtIndex:i] ];
                return;
            }
        }
    }
    else if(self.textAlignment==1)
    {
        
        int  aligmentSpace =(self.frame.size.width - textWidht)/2;
        for ( int i=0; i<self.text.length; i++)
        {
            remingspace += sizes[i];
           
            if ( remingspace+aligmentSpace >=pos.x)
            {
                [ _delegate didLetterFound:[ self.text characterAtIndex:i] ];
                return;
            }
        }
        
    }else
    {
        int  aligmentSpace =(self.frame.size.width - textWidht);
        for ( int i=0; i<self.text.length; i++)
        {
            remingspace += sizes[i];
            
            if ( remingspace+aligmentSpace >= pos.x )
            {
                [ _delegate didLetterFound:[ self.text characterAtIndex:i] ];
                return;
            }
        }
        
    }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
