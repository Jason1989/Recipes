//
//  TableViewController.m
//  Recipes
//
//  Created by Jian Guo on 9/6/18.
//  Copyright © 2018 SMU. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "RecipeModel.h"
#import "SegmentedViewController.h"

@interface TableViewController ()

@property (strong, nonatomic)RecipeModel *recipeModel;
@property (strong, nonatomic)NSDictionary *recipe;

@end

@implementation TableViewController

@synthesize recipe;

-(RecipeModel *)recipeModel{
    
    if(!_recipeModel)
        _recipeModel =[RecipeModel sharedInstance];
    
    return _recipeModel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.contentInset = UIEdgeInsetsMake(20.0, 0.0, 0.0, 0.0);
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 150;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewAutomaticDimension;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.recipeModel getRecipeCount];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"recipeCell" forIndexPath:indexPath];
    recipe = self.recipeModel.recipes[indexPath.row];
    NSString *name = recipe[@"name"];
    NSString *type = recipe[@"type"];
    NSString *imageName = recipe[@"imageName"];
    
    cell.nameLabel.text = name;
    cell.typeLabel.text = type;
    cell.imageName = imageName;
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    BOOL isSC = [[segue destinationViewController] isKindOfClass:[SegmentedViewController class]];
    if(isSC) {
        SegmentedViewController* sc = [segue destinationViewController];
        TableViewCell* cell = (TableViewCell*)sender;
        sc.imageName = cell.imageName;
    }
}

@end
