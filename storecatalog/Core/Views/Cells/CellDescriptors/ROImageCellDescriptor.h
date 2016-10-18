//
//  ROImageCellDescriptor.h
//  storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import <Foundation/Foundation.h>
#import "ROCellDescriptor.h"
#import "ROAction.h"

@interface ROImageCellDescriptor : NSObject <ROCellDescriptor>

@property (nonatomic, strong) NSString *imageString;

@property (nonatomic, strong) NSObject<ROAction> *action;

- (instancetype)initWithImageString:(NSString *)imageString action:(NSObject<ROAction> *)action;

+ (instancetype)imageString:(NSString *)imageString action:(NSObject<ROAction> *)action;

- (void)configureCell:(UITableViewCell *)cell;

@end
