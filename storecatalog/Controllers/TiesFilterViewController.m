//
//  TiesFilterViewController.m
//  Storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import "TiesFilterViewController.h"
#import "DatasourceManager.h"
#import "ROUtils.h"
#import "ROFilterFieldSelection.h"
#import "ProductsDSItemKeys.h"
#import "ProductsDSItem.h"
#import "ProductsDS.h"

@implementation TiesFilterViewController

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"Ties"];

    self.title = NSLocalizedString(@"Ties", nil);

    self.fields = @[
                     [ROFilterFieldSelection fieldLabel:@"Price"
                                              fieldName:kProductsDSItemPrice
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"Rating"
                                              fieldName:kProductsDSItemRating
                                         formController:self
                                                 single:NO],
                     
    ];
}

#pragma mark - Filter actions

- (void)close {
  
    [super close];
}

- (void)cancel {
  
    [super cancel];
}

- (void)submit {

    [super submit];
}

- (void)reset {
  
    [super reset];
}

@end
