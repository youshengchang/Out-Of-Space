//
//  ITISpaceDataViewController.m
//  Out Of This World
//
//  Created by yousheng chang on 8/6/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import "ITISpaceDataViewController.h"

@interface ITISpaceDataViewController ()

@end

@implementation ITISpaceDataViewController

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
    self.view.backgroundColor = [UIColor blackColor];
    self.tableView.backgroundColor = [UIColor clearColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"DataCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    //cell.textLabel.text = @"Data";
    switch(indexPath.row){
        case 0:
            cell.textLabel.text = @"NickName :";
            cell.detailTextLabel.text = self.spaceObject.nickName;
            break;
            
        case 1:
            cell.textLabel.text = @"Diameter (km) :";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject.diameter];
            break;
        case 2:
            cell.textLabel.text = @"Gravitational Force :";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject.gravitationalForce];
            break;
        case 3:
            cell.textLabel.text = @"Length of a Year (days) : ";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject.yearLength];
            break;
        case 4:
            cell.textLabel.text = @"Length of a Day (hours) :";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject.dayLength];
            break;
        case 5:
            cell.textLabel.text = @"Temperature (c) :";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f",self.spaceObject.temperature];
            break;
        case 6:
            cell.textLabel.text = @"Number of Moons :";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", self.spaceObject.numberOfMoons];
            break;
        case 7:
            cell.textLabel.text = @"Interesting Fact :";
            cell.detailTextLabel.text = self.spaceObject.interestFact;
            break;
        default:
            break;
            
    }
    return cell;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
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

@end
