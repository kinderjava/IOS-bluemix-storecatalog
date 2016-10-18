//
//  ROMapViewDelegate.h
//  storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@protocol ROMapViewDelegate <NSObject>

- (id <MKAnnotation>)annotationWithItem:(id)item;

@optional

- (void)calloutTapped:(MKAnnotationView *)view;

@end
