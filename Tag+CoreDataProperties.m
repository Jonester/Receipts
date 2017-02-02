//
//  Tag+CoreDataProperties.m
//  Receipts
//
//  Created by Chris Jones on 2017-02-02.
//  Copyright © 2017 Jonescr. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Tag+CoreDataProperties.h"

@implementation Tag (CoreDataProperties)

+ (NSFetchRequest<Tag *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Tag"];
}

@dynamic name;
@dynamic receipt;

@end
