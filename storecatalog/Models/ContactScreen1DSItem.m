//
//  ContactScreen1DSItem.m
//  Storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import "ContactScreen1DSItem.h"
#import "NSDictionary+RO.h"

@implementation ContactScreen1DSItem

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

	self = [super init];
	if (self) {
		[self updateWithDictionary:dictionary];
	}
	return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.address = [dictionary ro_stringForKey:kContactScreen1DSItemAddress];
    
    self.phone = [dictionary ro_stringForKey:kContactScreen1DSItemPhone];
    
    self.picture = [dictionary ro_stringForKey:kContactScreen1DSItemPicture];
    
    self.email = [dictionary ro_stringForKey:kContactScreen1DSItemEmail];
    
    self.idProp = [dictionary ro_stringForKey:kContactScreen1DSItemId];
}

- (id)identifier {
	
	return self.idProp;
}

@end
