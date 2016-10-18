//
//  ROErrorManager.h
//  storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import <Foundation/Foundation.h>

@class ROError;

@interface ROErrorManager : NSObject

@property (nonatomic, strong) NSMutableArray *errors;

+ (instancetype)sharedInstance;

- (void)addError:(ROError *)error;

- (void)processError:(ROError *)error;

@end
