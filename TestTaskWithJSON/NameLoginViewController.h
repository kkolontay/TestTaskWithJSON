//
//  NameLoginViewController.h
//  TestTaskWithJSON
//
//  Created by Konstantin Kolontay on 1/25/16.
//  Copyright © 2016 Konstantin Kolontay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OwnerNameDelegate.h"

@interface NameLoginViewController : UIViewController

@property (nonatomic, weak) id<OwnerNameDelegate> delegate;

@end
