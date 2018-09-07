//
//  ViewController.m
//  assignmentOne
//
//  Created by Danny on 9/5/18.
//  Copyright © 2018 Danny. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize typePicker, recipeName, ingredientsName, unitName, stepText;

// ************ keyboard start *********************
- (IBAction)backgroundTapped:(id)sender {
    [self.view endEditing:YES];
}// Touch to cancel the keyboard

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [recipeName resignFirstResponder];
    [ingredientsName resignFirstResponder];
    [unitName resignFirstResponder];
    return YES;
}//keyboard should return
//************** keyboard over **********************

- (void)viewDidLoad {
    [super viewDidLoad];
    typePicker = [[NSMutableArray alloc]initWithObjects:@"Meat", @"Vegeteble", @"Bake", nil]; // init picker view mutable array
    // Do any additional setup after loading the view, typically from a nib.
}

//************** type picker view start ********************
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return typePicker.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [typePicker objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if (component == 0) {
        //self.typeName.text = [typePicker objectAtIndex:row];
        self.typeNameLabel.text = [typePicker objectAtIndex:row];
    }
    
}
//************* type picker view over ********************


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// ************** difficulty slider start *****************
- (IBAction)diffSliderAction:(id)sender {
    self.difficultyLabel.text = [NSString stringWithFormat:@"%0.0f", _difficultySlider.value];
}
// ************* diff slider over ****************
// ******** origin switch start ***********
- (IBAction)originSwitchAction:(id)sender {
    if (self.originSwitch.isOn) {
        self.originLabel.text = @"YES";
    } else {
        self.originLabel.text = @"NO";
    }
}
// ********** origin switch over ******************
// *********** stepper action start ****************
- (IBAction)qunStepperAction:(id)sender {
    self.qunLabel.text = [NSString stringWithFormat:@"%0.0f", _qunStepper.value];
}
// *********** stepper action over *****************

// *********** step text start *************

// *********** step text over **************

- (IBAction)recipeName:(UITextField *)sender {
}
@end
