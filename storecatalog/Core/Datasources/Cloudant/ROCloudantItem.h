//
//  ROCloudantItem.h
//  storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import <Foundation/Foundation.h>

@class CDTDocumentRevision;

@protocol ROCloudantItem <NSObject>

/**
 Initialise an existing task from a document revision.
 */
- (instancetype)initWithDocumentRevision:(CDTDocumentRevision *)rev;

/**
 Uptodate version of the CDTDocumentRevision associated with the item.
 */
- (CDTDocumentRevision *)rev;

@end
