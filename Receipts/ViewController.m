//
//  ViewController.m
//  Receipts
//
//  Created by Chris Jones on 2017-02-02.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *categoryTable;

@property (strong, nonatomic) NSArray *categories;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.categoryTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    self.categories = @[@"Personal", @"Family", @"Business"];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Category";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.categories.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.userInteractionEnabled = YES;
    cell.textLabel.text = self.categories[indexPath.row];
    return cell;
}
- (IBAction)addReceipt:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
