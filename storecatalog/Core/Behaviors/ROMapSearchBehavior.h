//
//  ROMapSearchBehavior.h
//  storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import "ROSearchBehavior.h"

@class RONearFilter;

@interface ROMapSearchBehavior : ROSearchBehavior

- (RONearFilter *)nearFilterWithFieldName:(NSString *)fieldName;

@end
