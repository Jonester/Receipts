//
//  ViewController.h
//  Receipts
//
//  Created by Chris Jones on 2017-02-02.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSManagedObjectContext *receiptContext;

@end

