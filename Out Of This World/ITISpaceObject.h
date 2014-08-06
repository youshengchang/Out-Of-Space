//
//  ITISpaceObject.h
//  Out Of This World
//
//  Created by yousheng chang on 8/6/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ITISpaceObject : NSObject
@property (strong, nonatomic)NSString *name;
@property (nonatomic) float gravitationalForce;
@property (nonatomic) float diameter;
@property (nonatomic) float yearLength;
@property (nonatomic) float dayLength;
@property (nonatomic) float temperature;
@property (nonatomic) int numberOfMoons;
@property (nonatomic) NSString *nickName;
@property (nonatomic) NSString *interestFact;

@property (strong, nonatomic)UIImage *spaceImage;

           
-(id)initWithData:(NSDictionary *)data andImage:(UIImage *)image;

@end
