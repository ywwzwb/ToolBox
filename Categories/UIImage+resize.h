//
//  UIImage+resize.h
//  L17Table
//
//  Created by 曾文斌 on 15/8/26.
//  Copyright (c) 2015年 曾文斌. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImage+drawWithContentModel.h"
@interface UIImage (resize)

- (UIImage *) resizeToSize:(CGSize) size withContentModel:(UIViewContentMode) contentModel;
- (UIImage *) resizeToSize:(CGSize)size withContentModel:(UIViewContentMode)contentModel andMargin:(CGFloat) margin;

- (UIImage *) resizeToSize:(CGSize)size withContentModel:(UIViewContentMode)contentModel andMargin:(CGFloat) margin andCornerRadius:(CGFloat) cornerRadius;
@end
