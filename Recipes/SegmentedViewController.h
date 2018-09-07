//
//  SegmentedViewController.h
//  Recipes
//
//  Created by Jian Guo on 9/6/18.
//  Copyright © 2018 SMU. All rights reserved.
//

#import "ViewController.h"

@interface SegmentedViewController : ViewController

@property (strong, nonatomic) IBOutlet UIView *photoView;

@property (strong, nonatomic) IBOutlet UIView *recipeView;

- (IBAction)segmentedControl:(UISegmentedControl *)sender;

@end
