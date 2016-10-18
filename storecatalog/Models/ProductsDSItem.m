//
//  ProductsDSItem.m
//  Storecatalog
//
//  This App has been generated using IBM Mobile App Builder
//

#import "ProductsDSItem.h"
#import "NSDictionary+RO.h"

@implementation ProductsDSItem

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

	self = [super init];
	if (self) {
		[self updateWithDictionary:dictionary];
	}
	return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.name = [dictionary ro_stringForKey:kProductsDSItemName];
    
    self.descriptionProp = [dictionary ro_stringForKey:kProductsDSItemDescription];
    
    self.category = [dictionary ro_stringForKey:kProductsDSItemCategory];
    
    self.price = [dictionary ro_stringForKey:kProductsDSItemPrice];
    
    self.rating = [dictionary ro_stringForKey:kProductsDSItemRating];
    
    self.picture = [dictionary ro_stringForKey:kProductsDSItemPicture];
    
    self.thumbnail = [dictionary ro_stringForKey:kProductsDSItemThumbnail];
    
    self.idProp = [dictionary ro_stringForKey:kProductsDSItemId];
}

- (id)identifier {
	
	return self.idProp;
}

@end
