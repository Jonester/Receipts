//
//  DataManager.m
//  Receipts
//
//  Created by Chris Jones on 2017-02-02.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

@synthesize persistentContainer = _persistentContainer;

+(DataManager *)dataSingleton {
    static DataManager *_dataSingleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dataSingleton = [DataManager new];
    });
    return _dataSingleton;
}

- (NSPersistentContainer *)persistentContainer {
    // The persistent container for the application. This implementation creates and returns a container, having loaded the store for the application to it.
    @synchronized (self) {
        if (_persistentContainer == nil) {
            _persistentContainer = [[NSPersistentContainer alloc] initWithName:@"Receipts"];
            [_persistentContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *storeDescription, NSError *error) {
                if (error != nil) {
                    NSLog(@"Unresolved error %@, %@", error, error.userInfo);
                    abort();
                }
            }];
        }
    }
    
    return _persistentContainer;
}

-(NSArray *)fetchData:(NSString *)tag {
    NSFetchRequest *fetch = [NSFetchRequest new];
    NSEntityDescription *entity = [NSEntityDescription entityForName:tag inManagedObjectContext:self.persistentContainer.viewContext];
    [fetch setEntity:entity];
    
    NSError *error;
    NSArray *fetchedObjects = [self.persistentContainer.viewContext executeFetchRequest:fetch error:&error];
    return fetchedObjects;
}

-(NSArray *)fetchData:(NSString *)tag withPredicate:(NSPredicate *)predicate {
    NSFetchRequest *fetch = [NSFetchRequest new];
    NSEntityDescription *entity = [NSEntityDescription entityForName:tag inManagedObjectContext:self.persistentContainer.viewContext];
    [fetch setEntity:entity];
    
    NSError *error;
    NSArray *fetchedObjects = [self.persistentContainer.viewContext executeFetchRequest:fetch error:&error];
    
    fetchedObjects = [fetchedObjects filteredArrayUsingPredicate:predicate];
    return fetchedObjects;
}

- (void)saveContext {
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSError *error = nil;
    if ([context hasChanges] && ![context save:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
}




@end
