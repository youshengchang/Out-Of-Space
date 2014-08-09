//
//  ITIAddedSpaceObjectViewController.m
//  Out Of This World
//
//  Created by yousheng chang on 8/8/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import "ITIAddedSpaceObjectViewController.h"

@interface ITIAddedSpaceObjectViewController ()

@end

@implementation ITIAddedSpaceObjectViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *orionImage = [UIImage imageNamed:@"Orion.jpg"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:orionImage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)cancelButtonPressed:(UIButton *)sender {
    [self.delegate didCancel];
}

- (IBAction)addButtonPressed:(UIButton *)sender {
    ITISpaceObject *newSpaceObject = [self returnNewSpaceObject];
    
    [self.delegate addSpaceObject:newSpaceObject];
}

-(ITISpaceObject *)returnNewSpaceObject
{
    ITISpaceObject *addedSpaceObject = [[ITISpaceObject alloc]init];
    addedSpaceObject.name = self.nameTextField.text;
    addedSpaceObject.nickName = self.nickNameTextField.text;
    addedSpaceObject.diameter = [self.diameterTextField.text floatValue];
    addedSpaceObject.temperature = [self.temperatureTextField.text floatValue];
    addedSpaceObject.numberOfMoons = [self.numberOfMoonTextField.text intValue];
    addedSpaceObject.interestFact = self.interestingFactTextField.text;
    addedSpaceObject.spaceImage = [UIImage imageNamed:@"EinsteinRing.jpg"];
    return addedSpaceObject;
    
}
@end
