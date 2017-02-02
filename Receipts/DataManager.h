//
//  DataManager.h
//  Receipts
//
//  Created by Chris Jones on 2017-02-02.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tag+CoreDataClass.h"

@interface DataManager : NSObject

@property (readonly, strong) NSPersistentContainer *persistentContainer;

+(DataManager *)dataSingleton;
-(void)saveContext;
-(NSArray *)fetchData:(NSString *)tag;
-(NSArray *)fetchData:(NSString *)tag withPredicate:(NSPredicate *)predicate;

@end
