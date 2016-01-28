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
@property (weak, nonatomic) IBOutlet UILabel *owner;
@property (weak, nonatomic) IBOutlet UILabel *color;

@property (weak, nonatomic) IBOutlet UILabel *state;

@property (weak, nonatomic) IBOutlet UILabel *phone;
@end

@implementation PartInformationTableViewCell


- (void) setValueInCell:(NSDictionary*) dictionary {
    _type.text = [NSString stringWithFormat:@"Type: %@",[dictionary objectForKey:@"typeOfCar"]];
    _name.text = [NSString stringWithFormat:@"Name: %@",[dictionary objectForKey:@"nameOfCar"]];
    _color.text = [NSString stringWithFormat:@"Color: %@",[dictionary objectForKey:@"color"]];
    _state.text = [NSString stringWithFormat:@"State: %@",[dictionary objectForKey:@"state"]];
    _owner.text = [NSString stringWithFormat:@"Owner: %@",[dictionary objectForKey:@"nameOfOwner"]];
    _phone.adjustsFontSizeToFitWidth = YES;
    _phone.text = [NSString stringWithFormat:@"Tel.: %@",[dictionary objectForKey:@"phone"]];
}

@end
