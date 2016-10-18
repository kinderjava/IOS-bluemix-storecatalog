//
//  ROAction.h
//  storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import <Foundation/Foundation.h>

/**
  Generic protocol to handle actions
 */
@protocol ROAction <NSObject>

/**
 Action to do
 */
- (void)doAction;

/**
 Can do action
 */
- (BOOL)canDoAction;

/*
 Action icon
 */
- (UIImage *)actionIcon;

@end
