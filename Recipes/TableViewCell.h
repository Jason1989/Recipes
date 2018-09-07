//
//  TableViewCell.h
//  Recipes
//
//  Created by Jian Guo on 9/6/18.
//  Copyright © 2018 SMU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *typeLabel;

@property (weak, nonatomic) NSString *imageName;

@end
