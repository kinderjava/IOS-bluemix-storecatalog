//
//  StoreCatalogScreen1ViewController.m
//  Storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import "StoreCatalogScreen1ViewController.h"
#import "DatasourceManager.h"
#import "ROUtils.h"
#import "RORefreshBehavior.h"
#import "UIImageView+RO.h"
#import "ROPhotoTitleCollectionViewCell.h"
#import "TiesViewController.h"
#import "ShirtsViewController.h"
#import "TrousersViewController.h"
#import "JacketsViewController.h"
#import "RONavigationAction.h"
#import "ROStyle.h"
#import "ROItemCell.h"

@interface StoreCatalogScreen1ViewController ()

- (void)configureCell:(UICollectionViewCell *)cell atIndexPath:(NSIndexPath *)indexPath;

@end

@implementation StoreCatalogScreen1ViewController

static NSString * const kReuseIdentifier    = @"Cell";

static CGFloat const kMargin                = 8.0f;

- (instancetype)init {

    self = [super init];
    if (self) {

        self.numberOfColumns = 2;
    }
    return self;
}

- (void)viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"StoreCatalogScreen1"];

    self.title = NSLocalizedString(@"Store Catalog", nil);
    self.items = @[                       
                       [[ROItemCell alloc] initWithText1:@"JACKETS"
                                         atImageResource:@"store1692.png"
                                                atAction:[[RONavigationAction alloc] initWithRootViewController:self destinationValue:[JacketsViewController class]]],
                       [[ROItemCell alloc] initWithText1:@"TROUSERS"
                                         atImageResource:@"store4197.png"
                                                atAction:[[RONavigationAction alloc] initWithRootViewController:self destinationValue:[TrousersViewController class]]],
                       [[ROItemCell alloc] initWithText1:@"SHIRTS"
                                         atImageResource:@"store2362.png"
                                                atAction:[[RONavigationAction alloc] initWithRootViewController:self destinationValue:[ShirtsViewController class]]],
                       [[ROItemCell alloc] initWithText1:@"TIES"
                                         atImageResource:@"store340.png"
                                                atAction:[[RONavigationAction alloc] initWithRootViewController:self destinationValue:[TiesViewController class]]]
                  ];

    [self.collectionView registerClass:[ROPhotoTitleCollectionViewCell class]
            forCellWithReuseIdentifier:kReuseIdentifier];

    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    
    [self updateViewConstraints];
}

#pragma mark - Private methods

- (void)configureCell:(ROPhotoTitleCollectionViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {

    ROItemCell *item = self.items[(NSUInteger)indexPath.row];
    cell.titleLabel.text = item.text1;
    [cell.photoImageView ro_setImage:item.imageResource imageError:[[ROStyle sharedInstance] noPhotoImage]];
    if (item.action && [item.action canDoAction]) {

        cell.userInteractionEnabled = YES;

    } else {

        cell.userInteractionEnabled = NO;
    }
}

#pragma mark <UICollectionViewDelegateFlowLayout>

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CGFloat minimumInteritemSpacing = [self collectionView:collectionView
                                                    layout:collectionViewLayout
                  minimumInteritemSpacingForSectionAtIndex:indexPath.section];
    
    CGFloat with = collectionView.frame.size.width - kMargin * 2;
    CGFloat cellWidth = floorf(with / self.numberOfColumns) - (self.numberOfColumns - 1) * minimumInteritemSpacing;
    return CGSizeMake(cellWidth, cellWidth);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    
    return UIEdgeInsetsMake(kMargin, kMargin, kMargin, kMargin); // top, left, bottom, right
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    
    return kMargin;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    
    return kMargin / self.numberOfColumns;
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return [self.items count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kReuseIdentifier
                                                                           forIndexPath:indexPath];
    [self configureCell:cell atIndexPath:indexPath];

    return cell;
}

#pragma mark - <UICollectionViewDelegate>

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {

    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
    ROItemCell *item = self.items[(NSUInteger)indexPath.row];
    if (item.action && [item.action canDoAction]) {
    
        [item.action doAction];
    }
}

@end
