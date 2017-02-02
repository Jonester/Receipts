//
//  ViewController.h
//  Receipts
//
//  Created by Chris Jones on 2017-02-02.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Receipt+CoreDataClass.h"

@protocol NewReceiptDelegate <NSObject>

-(void)displayNewReceipt: (Receipt *)newReceipt;

@end

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSManagedObjectContext *receiptContext;
@property (strong, nonatomic) Receipt *receipt;
@property (strong, nonatomic) id<NewReceiptDelegate>delegate;


@end

