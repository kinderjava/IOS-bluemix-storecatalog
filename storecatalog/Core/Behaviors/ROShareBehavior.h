//
//  ROShareBehavior.h
//  storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import <Foundation/Foundation.h>
#import "ROBehavior.h"

@interface ROShareBehavior : NSObject <ROBehavior>

@property (nonatomic, strong) UIViewController *viewController;

- (instancetype)initWithViewController:(UIViewController *)viewController;

+ (instancetype)behaviorViewController:(UIViewController *)viewController;

@end
