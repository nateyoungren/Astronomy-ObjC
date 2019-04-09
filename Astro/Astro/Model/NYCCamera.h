//
//  NYCCamera.h
//  Astro
//
//  Created by Nathanael Youngren on 4/9/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NYCCamera : NSObject

- (instancetype)initWithIdentifer:(int)identifier name:(NSString *)name roverId:(int)roverId fullName:(NSString *)fullName;

@property (nonatomic, readonly) int identifier;
@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) int roverId;
@property (nonatomic, readonly) NSString *fullName;

@end

NS_ASSUME_NONNULL_END
