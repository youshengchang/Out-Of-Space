//
//  ITISpaceImageViewController.h
//  Out Of This World
//
//  Created by yousheng chang on 8/6/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ITISpaceImageViewController : UIViewController <UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *scrView;
@property (strong, nonatomic) UIImageView *imageView;

@end
