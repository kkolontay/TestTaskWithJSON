//
//  FullInformationTableViewCell.m
//  TestTaskWithJSON
//
//  Created by Konstantin Kolontay on 1/25/16.
//  Copyright © 2016 Konstantin Kolontay. All rights reserved.
//

#import "FullInformationTableViewCell.h"

@interface FullInformationTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *type;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *color;
@property (weak, nonatomic) IBOutlet UILabel *state;
@property (weak, nonatomic) IBOutlet UILabel *owner;
@property (weak, nonatomic) IBOutlet UILabel *phone;

@end

@implementation FullInformationTableViewCell

- (void) setValueInCellChild:(NSDictionary *)dictionary {
    [super initwithData:_type nameOfAuto:_name colorOfAuto:_color stateOfAuto:_state];
        _owner.text = [NSString stringWithFormat:@"Owner: %@",[dictionary objectForKey:@"nameOfOwner"]];
    _phone.adjustsFontSizeToFitWidth = YES;
    _phone.text = [NSString stringWithFormat:@"Tel.: %@",[dictionary objectForKey:@"phone"]];
    [super setValueInCell:dictionary];
}


@end
