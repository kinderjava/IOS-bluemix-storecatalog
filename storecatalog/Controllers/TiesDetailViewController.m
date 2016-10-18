//
//  TiesDetailViewController.m
//  Storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import "TiesDetailViewController.h"
#import "DatasourceManager.h"
#import "ROUtils.h"
#import "ROShareBehavior.h"
#import "ROTextStyle.h"
#import "ROImageCellDescriptor.h"
#import "ROTextCellDescriptor.h"
#import "ROHeaderCellDescriptor.h"
#import "ROOptionsFilter.h"
#import "ROSingleDataLoader.h"
#import "ProductsDSItem.h"
#import "ProductsDS.h"

@interface TiesDetailViewController ()

@property (nonatomic, strong) ROOptionsFilter *optionsFilter;

@end

@implementation TiesDetailViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.dataLoader = [[ROSingleDataLoader alloc] initWithDatasource:[[DatasourceManager sharedInstance] productsDS]
                                                           optionsFilter:self.optionsFilter];
    
        [self.behaviors addObject:[ROShareBehavior behaviorViewController:self]];
        
    }
    return self;
}

#pragma mark - Properties init

- (ROOptionsFilter *)optionsFilter {

    if (!_optionsFilter) {
        _optionsFilter = [ROOptionsFilter new];
    }
    return _optionsFilter;
}

- (void)viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"TiesDetail"];

    self.title = nil;
    
    self.customTableViewDelegate = self;

    if ([self.tableView respondsToSelector:@selector(setLayoutMargins:)]) {
        [self.tableView setLayoutMargins:UIEdgeInsetsZero];
    }
    if([self.tableView respondsToSelector:@selector(setCellLayoutMarginsFollowReadableWidth:)]) {
        self.tableView.cellLayoutMarginsFollowReadableWidth = NO;
    }

    [self updateViewConstraints];

    [self loadData];
}

#pragma mark - ROCustomTableViewDelegate

- (void)configureWithDataItem:(ProductsDSItem *)item {
    self.title = item.name;
    self.items = @[
                   [ROImageCellDescriptor imageString:[self.dataLoader.datasource imagePath:item.picture] action:nil],
                   [ROTextCellDescriptor text:[NSString stringWithFormat:@"%@%@%@%@", @"$", item.price, @" ", item.rating] action:nil textStyle:[ROTextStyle style:ROFontSizeStyleLarge bold:NO italic:NO textAligment:NSTextAlignmentLeft textColor:@"#ffc107"]],
                   [ROTextCellDescriptor text:item.descriptionProp action:nil textStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]]
                  ];
}

@end
