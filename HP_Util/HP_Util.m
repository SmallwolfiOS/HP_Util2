//
//  HP_Util.m
//  HP_UtilExample
//
//  Created by 马海平 on 16/5/9.
//  Copyright © 2016年 MHP. All rights reserved.
//

#import "HP_Util.h"

@implementation HP_Util
/**
 *  把16进制的字符串转换为颜色
 *  @param stringToConvert 16进制的字符串（6位）
 *  @return 颜色UIColor
 */
+ (UIColor *) hexStringToColor: (NSString *) stringToConvert

{
    NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) return [UIColor blackColor];
    
    // strip 0X if it appears
    
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    
    if ([cString length] != 6) return [UIColor blackColor];
    
    // Separate into r, g, b substrings
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
            
                           green:((float) g / 255.0f)
            
                            blue:((float) b / 255.0f)
            
                           alpha:1.0f];
    
    
}
/**
 *  UIColor转换为纯色UIImage
 *  @param color UIColor
 *  @return 纯色的UIImage
 */
+ (UIImage *) createImageWithColor: (UIColor *)color{
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}
/**
 *  获取随机颜色
 *
 *  @return UIColor
 */
+(UIColor *) randomColor
{
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
}

/**
 *  将View完全圆角化
 *
 *  @param view 需要圆角化的view
 */
+ (void) corneredViewTotally: (UIView *)view{
    view.layer.cornerRadius = view.frame.size.height/2;
    view.layer.masksToBounds = YES;
}
/**
 *  给view添加圆角
 *
 *  @param view   传入的view
 *  @param radius 圆角的角度
 */
+ (void) corneredView: (UIView *)view byRadius:(CGFloat)radius{
    view.layer.cornerRadius = radius;
    view.layer.masksToBounds = YES;
}

@end
