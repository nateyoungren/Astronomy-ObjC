//
//  NYCMarsPhoto.m
//  Astro
//
//  Created by Nathanael Youngren on 4/9/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCMarsPhoto.h"
#import "NYCCamera.h"

@implementation NYCMarsPhoto

- (instancetype)initWithIdentifier:(int)identifier sol:(int)sol camera:(NYCCamera *)camera earthDate:(NSDate *)earthDate {
    self = [super init];
    if (self) {
        _identifier = identifier;
        _sol = sol;
        _camera = camera;
        _earthDate = earthDate;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    int identifier = [dictionary[@"id"] intValue];
    int sol = [dictionary[@"sol"] intValue];
    
    NSDictionary *cameraDict = dictionary[@"camera"];
    int camId = [cameraDict[@"id"] intValue];
    NSString *camName = cameraDict[@"name"];
    int camRoverId = [cameraDict[@"rover_id"] intValue];
    NSString *camFullName = cameraDict[@"full_name"];
    NYCCamera *camera = [[NYCCamera alloc] initWithIdentifer:camId name:camName roverId:camRoverId fullName:camFullName];
    
    NSString *earthDateString = dictionary[@"earth_date"];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyy-MM-dd";
    NSDate *earthDate = [formatter dateFromString:earthDateString];
    
    return [self initWithIdentifier:identifier sol:sol camera:camera earthDate:earthDate];
}

@end
