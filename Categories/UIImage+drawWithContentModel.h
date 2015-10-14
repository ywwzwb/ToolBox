//
//  UIImage+drawWithContentModel.h
//  L13SuperCard
//
//  Created by ywwzwb on 15/8/22.
//  Copyright (c) 2015年 zengwenbin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (drawWithContentModel)
-(void)drawInRect:(CGRect)rect withContentMode:(UIViewContentMode)contentMode;
-(void)drawInRect:(CGRect)rect withContentMode:(UIViewContentMode)contentMode andCornerRadius:(CGFloat) cornerRadius;
@end
