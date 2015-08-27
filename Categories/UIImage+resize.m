//
//  UIImage+resize.m
//  L17Table
//
//  Created by 曾文斌 on 15/8/26.
//  Copyright (c) 2015年 曾文斌. All rights reserved.
//

#import "UIImage+resize.h"

@implementation UIImage (resize)

-(UIImage *)resizeToSize:(CGSize)size withContentModel:(UIViewContentMode)contentModel{
    return [self resizeToSize:size withContentModel:contentModel andMargin:0];
}
-(UIImage *)resizeToSize:(CGSize)size withContentModel:(UIViewContentMode)contentModel andMargin:(CGFloat)margin{
    return [self resizeToSize:size withContentModel:contentModel andMargin:margin andCornerRadius:0];
}
-(UIImage *)resizeToSize:(CGSize)size withContentModel:(UIViewContentMode)contentModel andMargin:(CGFloat)margin andCornerRadius:(CGFloat)cornerRadius{
    UIImage *newImage=nil;
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    CGRect drawRect=CGRectZero;
    drawRect.origin=CGPointMake(margin, margin);
    drawRect.size.width=size.width-2*margin;
    drawRect.size.height=size.height-2*margin;
    
    [self drawInRect:drawRect withContentMode:contentModel andCornerRadius:cornerRadius];
    newImage=UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

@end
