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

@synthesize photoView, recipeView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.scrollView addSubview:self.imageView];
    self.scrollView.contentSize = self.imageView.image.size;
    self.scrollView.minimumZoomScale = 0.1;
    self.scrollView.delegate = self;
}

-(UIImageView*)imageView{
    
    if(!_imageView){
        UIImage* image = [UIImage imageNamed:@"food1"];
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

@end
