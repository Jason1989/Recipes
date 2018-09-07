//
//  ViewController.h
//  assignmentOne
//
//  Created by Danny on 9/5/18.
//  Copyright © 2018 Danny. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) IBOutlet UITextField *recipeName;
@property (strong, nonatomic) IBOutlet UITextField *ingredientsName;
@property (strong, nonatomic) IBOutlet UITextField *unitName;


@property (strong, nonatomic) NSMutableArray *typePicker;
@property (strong, nonatomic) IBOutlet UILabel *typeNameLabel;
//@property (strong, nonatomic) IBOutlet UITextField *typeName;


@property (strong, nonatomic) IBOutlet UILabel *difficultyLabel;
@property (strong, nonatomic) IBOutlet UISlider *difficultySlider;
- (IBAction)diffSliderAction:(id)sender;


@property (strong, nonatomic) IBOutlet UILabel *originLabel;
@property (strong, nonatomic) IBOutlet UISwitch *originSwitch;
- (IBAction)originSwitchAction:(id)sender;


@property (strong, nonatomic) IBOutlet UIStepper *qunStepper;
@property (strong, nonatomic) IBOutlet UILabel *qunLabel;
- (IBAction)qunStepperAction:(id)sender;

@property (strong, nonatomic) IBOutlet UITextView *stepText;


@end
