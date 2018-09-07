//
//  SegmentedViewController.m
//  Recipes
//
//  Created by Jian Guo on 9/6/18.
//  Copyright © 2018 SMU. All rights reserved.
//

#import "SegmentedViewController.h"

@interface SegmentedViewController ()

@property (strong, nonatomic) UIImageView* imageView;

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation SegmentedViewController

@synthesize photoView, recipeView, timerLabel, startButton, resetButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.scrollView addSubview:self.imageView];
    self.scrollView.contentSize = self.imageView.image.size;
    self.scrollView.minimumZoomScale = 0.1;
    self.scrollView.delegate = self;
    running = NO;
    count = 0;
    timerLabel.text = @"00:00.00";
    startButton.layer.cornerRadius = 45;
    resetButton.layer.cornerRadius = 45;
}

- (NSString *)imageName {
    if(!_imageName) {
        _imageName = @"food1";
    }
    return _imageName;
}

-(UIImageView*)imageView{
    
    if(!_imageView){
        UIImage* image = [UIImage imageNamed:self.imageName];
        _imageView = [[UIImageView alloc] initWithImage:image];
    }
    return _imageView;
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.imageView;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)segmentedControl:(UISegmentedControl *)sender {
    switch (sender.selectedSegmentIndex) {
        case 0:
            self.photoView.hidden = false;
            self.recipeView.hidden = true;
            break;
        case 1:
            self.photoView.hidden = true;
            self.recipeView.hidden = false;
            break;
        default:
            break;
    }
}

- (IBAction)resetPushed:(UIButton *)sender {
    running = NO;
    [myTimer invalidate];
    myTimer = nil;
    [startButton setTitle:@"Start" forState:(UIControlStateNormal)];
    count = 0;
    timerLabel.text = @"00:00.00";

}

- (IBAction)startPushed:(UIButton *)sender {
    if (running == NO) {
        running = YES;
        [startButton setTitle:@"Stop" forState:(UIControlStateNormal)];
        if (myTimer == nil) {
            myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        }
    } else {
        running = NO;
        [myTimer invalidate];
        myTimer = nil;
        [startButton setTitle:@"Start" forState:(UIControlStateNormal)];
    }
}

- (void)updateTimer {
    count++;
    int min = floor(count/100/60);
    int sec = (int)floor(count/100) % 60;
    int msec = count%100;
    timerLabel.text = [NSString stringWithFormat:@"%02d:%02d.%02d", min, sec, msec];
}
@end
