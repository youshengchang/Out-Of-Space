//
//  ITISpaceImageViewController.m
//  Out Of This World
//
//  Created by yousheng chang on 8/6/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import "ITISpaceImageViewController.h"

@interface ITISpaceImageViewController ()

@end

@implementation ITISpaceImageViewController

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
    self.imageView = [[UIImageView alloc] initWithImage:self.spaceObject.spaceImage];
    self.scrView.contentSize = self.imageView.frame.size;
    [self.scrView addSubview:self.imageView];
    self.scrView.delegate = self;
    self.scrView.maximumZoomScale = 2.0;
    self.scrView.minimumZoomScale = 0.5;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
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
