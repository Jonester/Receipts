//
//  Receipt+CoreDataProperties.h
//  Receipts
//
//  Created by Chris Jones on 2017-02-02.
//  Copyright © 2017 Jonescr. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Receipt+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Receipt (CoreDataProperties)

+ (NSFetchRequest<Receipt *> *)fetchRequest;

@property (nonatomic) float amount;
@property (nullable, nonatomic, copy) NSString *note;
@property (nullable, nonatomic, copy) NSDate *timeStamp;
@property (nullable, nonatomic, retain) NSSet<Tag *> *tag;

@end

@interface Receipt (CoreDataGeneratedAccessors)

- (void)addTagObject:(Tag *)value;
- (void)removeTagObject:(Tag *)value;
- (void)addTag:(NSSet<Tag *> *)values;
- (void)removeTag:(NSSet<Tag *> *)values;

@end

NS_ASSUME_NONNULL_END
