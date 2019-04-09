//
//  NYCCamera.m
//  Astro
//
//  Created by Nathanael Youngren on 4/9/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCCamera.h"

@implementation NYCCamera

- (instancetype)initWithIdentifer:(int)identifier name:(NSString *)name roverId:(int)roverId fullName:(NSString *)fullName {
    self = [super init];
    if (self) {
        _identifier = identifier;
        _name = name;
        _roverId = roverId;
        _fullName = fullName;
    }
    return self;
}

@end
