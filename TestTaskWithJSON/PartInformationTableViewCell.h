//
//  PartInformationTableViewCell.h
//  TestTaskWithJSON
//
//  Created by Konstantin Kolontay on 1/25/16.
//  Copyright © 2016 Konstantin Kolontay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PartInformationTableViewCell : UITableViewCell

- (void) initwithData:(UILabel *) type nameOfAuto:(UILabel *) name colorOfAuto:(UILabel *) color
          stateOfAuto:(UILabel *) state;
- (void) setValueInCell:(NSDictionary*) dictionary;

@end
