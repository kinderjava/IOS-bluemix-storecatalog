//
//  DatasourceManager.m
//  Storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import "DatasourceManager.h"
#import "ProductsDS.h"
#import "ContactScreen1DS.h"

@implementation DatasourceManager

+ (instancetype)sharedInstance {

    static id _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{

        _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;
}

#pragma mark - Properties init

- (ProductsDS *)productsDS {

    if (!_productsDS) {

        _productsDS = [ProductsDS new];
    }
    return _productsDS;
}

- (ContactScreen1DS *)contactScreen1DS {

    if (!_contactScreen1DS) {

        _contactScreen1DS = [ContactScreen1DS new];
    }
    return _contactScreen1DS;
}

#pragma mark - Public methods

- (void)sync {

    
}

@end
