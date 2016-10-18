//
//  RODeleteItemBehavior.h
//  storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import <Foundation/Foundation.h>
#import "ROBehavior.h"

@protocol RODataItemDelegate;
@protocol RODataDelegate;

@interface RODeleteItemBehavior : NSObject <ROBehavior, UIActionSheetDelegate>

@property (nonatomic, strong) UIViewController<RODataDelegate, RODataItemDelegate> *viewController;

- (instancetype)initWithViewController:(UIViewController<RODataDelegate, RODataItemDelegate> *)viewController;

+ (instancetype)behaviorViewController:(UIViewController<RODataDelegate, RODataItemDelegate> *)viewController;

@end
