//
//  ROBehavior.h
//  storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import <Foundation/Foundation.h>

@protocol ROBehavior <NSObject>

- (void)viewDidLoad;

- (UIViewController *)viewController;

@optional

- (void)viewDidAppear:(BOOL)animated;

- (void)viewDidDisappear:(BOOL)animated;

- (void)onDataSuccess:(id)dataObject;

@end
