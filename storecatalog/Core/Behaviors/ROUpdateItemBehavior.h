//
//  ROUpdateItemBehavior.h
//  storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import <Foundation/Foundation.h>

@protocol RODataDelegate;

@interface ROUpdateItemBehavior : NSObject

@property (nonatomic, strong) Class crudControllerClass;

@property (nonatomic, strong) UIViewController<RODataDelegate> *viewController;

- (instancetype)initWithViewController:(UIViewController<RODataDelegate> *)viewController crudControllerClass:(__unsafe_unretained Class)crudControllerClass;

+ (instancetype)behaviorViewController:(UIViewController<RODataDelegate> *)viewController crudControllerClass:(__unsafe_unretained Class)crudControllerClass;

@end
