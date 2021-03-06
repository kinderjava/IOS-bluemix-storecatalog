//
//  ROOptionsViewController.h
//  storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import "ROViewController.h"

@class ROFilterFieldSelection;

@interface ROOptionsViewController : ROViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) UISearchBar *searchBar;

@property (strong, nonatomic) UITableView *tableView;

@property (nonatomic, strong) ROFilterFieldSelection *formFieldSelection;

/**
 Configure constraints
 */
- (void)setupConstraints;

/**
 Load data
 */
- (void)loadData;

@end
