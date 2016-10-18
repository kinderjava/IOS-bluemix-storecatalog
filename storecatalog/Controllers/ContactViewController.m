//
//  ContactViewController.m
//  Storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import "ContactViewController.h"
#import "DatasourceManager.h"
#import "ROUtils.h"
#import "ROMailAction.h"
#import "ROPhoneAction.h"
#import "ROMapSearchAction.h"
#import "ROTextStyle.h"
#import "ROImageCellDescriptor.h"
#import "ROTextCellDescriptor.h"
#import "ROHeaderCellDescriptor.h"
#import "ROOptionsFilter.h"
#import "ROSingleDataLoader.h"
#import "ContactScreen1DSItem.h"
#import "ContactScreen1DS.h"

@interface ContactViewController ()

@property (nonatomic, strong) ROOptionsFilter *optionsFilter;

@end

@implementation ContactViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.dataLoader = [[ROSingleDataLoader alloc] initWithDatasource:[ContactScreen1DS new]
                                                           optionsFilter:self.optionsFilter];

    }
    return self;
}

- (void)viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"Contact"];

    self.title = NSLocalizedString(@"Contact", nil);

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

#pragma mark - Properties init

- (ROOptionsFilter *)optionsFilter {

    if (!_optionsFilter) {

        _optionsFilter = [ROOptionsFilter new];
        
    }
    return _optionsFilter;
}

#pragma mark - ROCustomTableViewDelegate

- (void)configureWithDataItem:(ContactScreen1DSItem *)item {
    self.items = @[
                   [ROImageCellDescriptor imageString:[self.dataLoader.datasource imagePath:item.picture] action:nil],
                   [ROHeaderCellDescriptor text:@"ADDRESS"],
                   [ROTextCellDescriptor text:item.address action:[[ROMapSearchAction alloc] initWithValue:item.address] textStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]],
                   [ROHeaderCellDescriptor text:@"PHONE"],
                   [ROTextCellDescriptor text:item.phone action:[[ROPhoneAction alloc] initWithValue:item.phone] textStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]],
                   [ROHeaderCellDescriptor text:@"EMAIL"],
                   [ROTextCellDescriptor text:item.email action:[[ROMailAction alloc] initWithValue:item.email] textStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]]
                  ];
}

@end
