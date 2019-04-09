//
//  NYCNetworking.m
//  Astro
//
//  Created by Nathanael Youngren on 4/8/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCNetworking.h"

@interface NYCNetworking ()

//+ (void)fetchWithURL:(NSURL *)url session:(NSURLSession *)session completionBlock:(NYCFetchCompletionBlock)block;

@end

@implementation NYCNetworking

- (void)fetchMarsRoverWithName:(NSString *)name sol:(int)sol completionBlock:(NYCFetchCompletionBlock)completion {
    
    NSURL *baseURL = [[NSURL alloc] initWithString:@"https://api.nasa.gov/mars-photos/api/v1/rovers/"];
    NSString *apiKey = @"ykBPGkIcFqdamMMl9pkdjPpfhioEul9vQGnFSMJc";
    
    NSURL *roverURL = [[baseURL URLByAppendingPathComponent:name] URLByAppendingPathComponent:@"photos"];
    
    NSURLComponents *components = [[NSURLComponents alloc] initWithURL:roverURL resolvingAgainstBaseURL:YES];
    
    NSNumber *solNumber = [NSNumber numberWithInt:sol];
    
    components.queryItems = @[
                              [[NSURLQueryItem alloc] initWithName:@"sol" value:solNumber.stringValue],
                              [[NSURLQueryItem alloc] initWithName:@"api_key" value:apiKey]
                              ];
    
    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:components.URL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            NSLog(@"Error fetching: %@", error);
            completion(nil, error);
            return;
        }
        
        if (!data) {
            NSError *error = [[NSError alloc] init];
            NSLog(@"Error with data: %@", error);
            completion(nil, error);
            return;
        }
        
        NSError *jsonError;
        NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
        
        completion(dictionary, nil);
        return;
    }];
    
    [task resume];
}

//+ (void)fetchWithURL:(NSURL *)url session:(NSURLSession *)session completionBlock:(NYCFetchCompletionBlock)block {
//
//    [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//
//        if (error) {
//            NSLog(@"Error fetching: %@", error);
//            block(nil, error);
//            return;
//        }
//
//        if (!data) {
//            NSError *error = [[NSError alloc] init];
//            NSLog(@"Error with data: %@", error);
//            block(nil, error);
//            return;
//        }
//
//        NSError *jsonError;
//        NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
//
//        block(dictionary, nil);
//        return;
//    }].resume;
//}

@end
