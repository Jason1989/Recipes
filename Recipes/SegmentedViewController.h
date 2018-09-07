//
//  SegmentedViewController.h
//  Recipes
//
//  Created by Jian Guo on 9/6/18.
//  Copyright © 2018 SMU. All rights reserved.
//  Code reference: https://codingwithsara.com/ios-how-to-create-a-stopwatch/#Sample_Code   for timer
//

#import "ViewController.h"

@interface SegmentedViewController : ViewController
{
    NSTimer* myTimer;
    BOOL running;
    int count;
}

@property (strong, nonatomic) IBOutlet UIView *photoView;

@property (strong, nonatomic) IBOutlet UIView *recipeView;

- (IBAction)segmentedControl:(UISegmentedControl *)sender;

@property (strong, nonatomic) IBOutlet UILabel *timerLabel;

@property (strong, nonatomic) IBOutlet UIButton *resetButton;

@property (strong, nonatomic) IBOutlet UIButton *startButton;

- (IBAction)resetPushed:(UIButton *)sender;

- (IBAction)startPushed:(UIButton *)sender;

- (void)updateTimer;

@property (strong, nonatomic) NSString* imageName;

@end
