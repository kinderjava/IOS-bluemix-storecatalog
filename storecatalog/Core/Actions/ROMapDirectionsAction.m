//
//  ROMapDirectionsAction.m
//  storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import "ROMapDirectionsAction.h"

@implementation ROMapDirectionsAction

- (id)initWithStart:(NSString *)start atEnd:(NSString *)end
{
    if (start == nil) {
        start = @"";
    }
    if (end == nil) {
        end = @"";
    }
    self = [super initWithValue:[NSString stringWithFormat:@"saddr=%@&daddr=%@", start, end]];
    if (self) {
        _start = start;
        _end = end;
    }
    return self;
}

- (id)initWithValue:(NSString *)address
{
    return [self initWithStart:@"" atEnd:address];
}

@end