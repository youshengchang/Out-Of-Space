//
//  ITIOuterSpaceTableViewController.h
//  Out Of This World
//
//  Created by yousheng chang on 8/4/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ITIAddedSpaceObjectViewController.h"

@interface ITIOuterSpaceTableViewController : UITableViewController <ITIAddedSpaceObjectViewControllerDelegate>
@property (strong, nonatomic) NSMutableArray *planets;
@property (strong, nonatomic) NSMutableArray *addedSpaceObjects;

@end
