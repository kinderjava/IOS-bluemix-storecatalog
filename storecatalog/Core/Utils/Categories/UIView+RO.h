//
//  UIView+RO.h
//  storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import <UIKit/UIKit.h>

/**
 Helper to UIView
 */
@interface UIView (RO)

/**
 Set a background image keeping the ratio aspet
 */
- (void)ro_setBackgroundImage:(UIImage *)image;

/**
 Set a background image pattern
 */
- (void)ro_setBackgroundPattern:(UIImage *)image;

/**
 Set a background color
 */
- (void)ro_setBackgroundColor:(UIColor *)color;

/*
 Add/retrieve toolbar bottom in view (only simple vertical layout).
 */
- (UIToolbar *)ro_addToolbarBottom;

- (UIToolbar *)ro_toolbarBottom;

@end
