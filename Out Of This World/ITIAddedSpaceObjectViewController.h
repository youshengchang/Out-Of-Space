//
//  ITIAddedSpaceObjectViewController.h
//  Out Of This World
//
//  Created by yousheng chang on 8/8/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ITISpaceObject.h"

@protocol ITIAddedSpaceObjectViewControllerDelegate <NSObject>
@required

-(void)addSpaceObject:(ITISpaceObject *)newSpaceObject;
-(void)didCancel;

@end

@interface ITIAddedSpaceObjectViewController : UIViewController

@property (weak, nonatomic) id <ITIAddedSpaceObjectViewControllerDelegate>delegate;

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *nickNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *temperatureTextField;
@property (strong, nonatomic) IBOutlet UITextField *diameterTextField;
@property (strong, nonatomic) IBOutlet UITextField *numberOfMoonTextField;
@property (strong, nonatomic) IBOutlet UITextField *interestingFactTextField;
- (IBAction)cancelButtonPressed:(UIButton *)sender;
- (IBAction)addButtonPressed:(UIButton *)sender;

@end
