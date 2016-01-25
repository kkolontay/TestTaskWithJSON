//
//  FetchData.h
//  TestTaskWithJSON
//
//  Created by Konstantin Kolontay on 1/25/16.
//  Copyright © 2016 Konstantin Kolontay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FetchData : NSObject

- (NSInteger) coutnOfItems;
- (NSDictionary *) fetchedItem:(NSInteger)index;

@end
