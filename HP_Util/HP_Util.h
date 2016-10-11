//
//  HP_Util.h
//  HP_UtilExample
//
//  Created by 马海平 on 16/5/9.
//  Copyright © 2016年 MHP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HP_Util : NSObject

/**
 *  把16进制的字符串转换为颜色
 *  @param stringToConvert 16进制的字符串（6位）
 *  @return 颜色UIColor
 */
+ (UIColor *) hexStringToColor: (NSString *) stringToConvert;
/**
 *  UIColor转换为纯色UIImage
 *  @param color UIColor
 *  @return 纯色的UIImage
 */
+ (UIImage *) createImageWithColor: (UIColor *)color;
/**
 *  获取随机颜色
 *
 *  @return UIColor
 */
+ (UIColor *) randomColor;
/**
 *  将View完全圆角化
 *
 *  @param view 需要圆角化的view
 */
+ (void) corneredViewTotally: (UIView *)view;
/**
 *  给view添加圆角
 *
 *  @param view   传入的view
 *  @param radius 圆角的角度
 */
+ (void) corneredView: (UIView *)view byRadius:(CGFloat)radius;

@end
