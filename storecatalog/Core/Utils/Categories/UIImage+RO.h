//
//  UIImage+RO.h
//  storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import <UIKit/UIKit.h>

/**
 Helper to UIImage
 */
@interface UIImage (RO)

+ (UIImage *)imageWithColor:(UIColor *)color;

+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

+ (UIImage *)ro_fixRotation:(UIImage *)image;

@end
