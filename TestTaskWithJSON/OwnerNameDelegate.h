//
//  OwnerNameDelegate.h
//  TestTaskWithJSON
//
//  Created by Konstantin Kolontay on 1/25/16.
//  Copyright © 2016 Konstantin Kolontay. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol OwnerNameDelegate <NSObject>

- (void) userNameIdentity:(NSString *) name;

@end
