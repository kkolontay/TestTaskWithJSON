//
//  PartInformationTableViewCell.m
//  TestTaskWithJSON
//
//  Created by Konstantin Kolontay on 1/25/16.
//  Copyright © 2016 Konstantin Kolontay. All rights reserved.
//

#import "PartInformationTableViewCell.h"

@interface PartInformationTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *type;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *color;
@property (weak, nonatomic) IBOutlet UILabel *state;

@end

@implementation PartInformationTableViewCell

- (void) initwithData:(UILabel *) type nameOfAuto:(UILabel *) name colorOfAuto:(UILabel *) color
        stateOfAuto:(UILabel *) state {
    _type = type;
    _name = name;
    _color = color;
    _state = state;
}

- (void) setValueInCell:(NSDictionary*) dictionary {
    _type.text = [NSString stringWithFormat:@"Type: %@",[dictionary objectForKey:@"typeOfCar"]];
    _name.text = [NSString stringWithFormat:@"Name: %@",[dictionary objectForKey:@"nameOfCar"]];
    _color.text = [NSString stringWithFormat:@"Color: %@",[dictionary objectForKey:@"color"]];
    _state.text = [NSString stringWithFormat:@"State: %@",[dictionary objectForKey:@"state"]];
}

@end
