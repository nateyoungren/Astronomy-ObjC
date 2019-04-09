//
//  NYCNetworking.h
//  Astro
//
//  Created by Nathanael Youngren on 4/8/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^NYCFetchCompletionBlock)(NSDictionary *_Nullable dictionary, NSError *_Nullable error);

NS_ASSUME_NONNULL_BEGIN

@interface NYCNetworking : NSObject

- (void)fetchMarsRoverWithName:(NSString *)name sol:(int)sol completionBlock:(NYCFetchCompletionBlock)completion;

@end

NS_ASSUME_NONNULL_END
