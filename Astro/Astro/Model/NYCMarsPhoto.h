//
//  NYCMarsPhoto.h
//  Astro
//
//  Created by Nathanael Youngren on 4/9/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NYCCamera;

NS_ASSUME_NONNULL_BEGIN

@interface NYCMarsPhoto : NSObject

- (instancetype)initWithIdentifier:(int)identifier sol:(int)sol camera:(NYCCamera *)camera earthDate:(NSDate *)earthDate;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@property (nonatomic, readonly) int identifier;
@property (nonatomic, readonly) int sol;
@property (nonatomic, readonly) NYCCamera *camera;
@property (nonatomic, readonly) NSDate *earthDate;

@end

NS_ASSUME_NONNULL_END
