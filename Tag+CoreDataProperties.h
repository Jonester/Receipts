//
//  Tag+CoreDataProperties.h
//  Receipts
//
//  Created by Chris Jones on 2017-02-02.
//  Copyright © 2017 Jonescr. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Tag+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Tag (CoreDataProperties)

+ (NSFetchRequest<Tag *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, retain) NSSet<Receipt *> *receipt;

@end

@interface Tag (CoreDataGeneratedAccessors)

- (void)addReceiptObject:(Receipt *)value;
- (void)removeReceiptObject:(Receipt *)value;
- (void)addReceipt:(NSSet<Receipt *> *)values;
- (void)removeReceipt:(NSSet<Receipt *> *)values;

@end

NS_ASSUME_NONNULL_END
