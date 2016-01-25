//
//  FetchData.m
//  TestTaskWithJSON
//
//  Created by Konstantin Kolontay on 1/25/16.
//  Copyright © 2016 Konstantin Kolontay. All rights reserved.
//

#import "FetchData.h"
#import <UIKit/UIKit.h>


@interface FetchData()

    @property (nonatomic, strong) NSMutableArray *fetchedData;

@end

@implementation FetchData

- (id)init {
    self = [super init];
    _fetchedData = [[NSMutableArray alloc] init];
    
    if (self) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"source"ofType:@"json"];
        NSString *jsonString = [[NSString alloc] initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
        NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
        NSError *error =nil;
        NSArray *data = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&error];
        if (error == nil) {
            for(NSDictionary *item in  data) {
                [_fetchedData addObject:item];
            }
        }
                          
        
    }
    return self;
}

- (NSInteger) coutnOfItems
{
    return _fetchedData.count;
}
- (NSDictionary *) fetchedItem:(NSInteger)index {
    return [_fetchedData objectAtIndex:index];
}

@end
