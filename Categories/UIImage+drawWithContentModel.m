//
//  UIImage+drawWithContentModel.m
//  L13SuperCard
//
//  Created by 曾文斌 on 15/8/22.
//  Copyright (c) 2015年 zengwenbin. All rights reserved.
//

#import "UIImage+drawWithContentModel.h"

@implementation UIImage (drawWithContentModel)


-(void)drawInRect:(CGRect)rect withContentMode:(UIViewContentMode)contentMode{
    CGRect drawRect=CGRectZero;
    switch (contentMode) {
        case UIViewContentModeCenter:
            drawRect.size=self.size;
            drawRect.origin.x=(rect.size.width-self.size.width)*0.5;
            drawRect.origin.y=(rect.size.height-self.size.height)*0.5;
            break;
        case UIViewContentModeTop:
            drawRect.size=self.size;
            drawRect.origin.x=(rect.size.width-self.size.width)*0.5;
            drawRect.origin.y=0;
            break;
        case UIViewContentModeBottom:
            drawRect.size=self.size;
            drawRect.origin.x=(rect.size.width-self.size.width)*0.5;
            drawRect.origin.y=rect.size.height-self.size.height;
            break;
        case UIViewContentModeLeft:
            drawRect.size=self.size;
            drawRect.origin.x=0;
            drawRect.origin.y=(rect.size.height-self.size.height)*0.5;
            break;
        case UIViewContentModeRight:
            drawRect.size=self.size;
            drawRect.origin.x=rect.size.width-self.size.width;
            drawRect.origin.y=(rect.size.height-self.size.height)*0.5;
            break;
        case UIViewContentModeTopLeft:
            drawRect.size=self.size;
            drawRect.origin.x=0;
            drawRect.origin.y=0;
            break;
        case UIViewContentModeTopRight:
            drawRect.size=self.size;
            drawRect.origin.x=rect.size.width-self.size.width;
            drawRect.origin.y=0;
            break;
        case UIViewContentModeBottomLeft:
            drawRect.size=self.size;
            drawRect.origin.x=0;
            drawRect.origin.y=rect.size.height-self.size.height;
            break;
        case UIViewContentModeBottomRight:
            drawRect.size=self.size;
            drawRect.origin.x=rect.size.width-self.size.width;
            drawRect.origin.y=rect.size.height-self.size.height;
            break;
        case UIViewContentModeScaleAspectFill:{
            CGFloat scale=MAX(rect.size.width/self.size.width, rect.size.height/self.size.height);
            drawRect.size.width=self.size.width*scale;
            drawRect.size.height=self.size.height*scale;
            drawRect.origin.x=(rect.size.width-drawRect.size.width)*0.5;
            drawRect.origin.y=(rect.size.height-drawRect.size.height)*0.5;
        }
            break;
        case UIViewContentModeScaleAspectFit:{
            CGFloat scale=MIN(rect.size.width/self.size.width, rect.size.height/self.size.height);
            drawRect.size.width=self.size.width*scale;
            drawRect.size.height=self.size.height*scale;
            drawRect.origin.x=(rect.size.width-drawRect.size.width)*0.5;
            drawRect.origin.y=(rect.size.height-drawRect.size.height)*0.5;
        }
            break;
        default:
            drawRect=rect;
            break;
    }
    [[UIBezierPath bezierPathWithRect:rect] addClip];
    [self drawInRect:drawRect];
    
}

@end