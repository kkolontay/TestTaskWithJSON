//
//  CarsTableViewController.m
//  TestTaskWithJSON
//
//  Created by Konstantin Kolontay on 1/25/16.
//  Copyright © 2016 Konstantin Kolontay. All rights reserved.
//

#import "CarsTableViewController.h"
#import "FetchData.h"
#import "PartInformationTableViewCell.h"
#import "FullInformationTableViewCell.h"
#import "NameLoginViewController.h"

@interface CarsTableViewController ()

@property (nonatomic, strong) FetchData *data;
@property (nonatomic, strong) NSString *nameOfUser;

@end

@implementation CarsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _data = [[FetchData alloc] init];
    _nameOfUser = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [_data coutnOfItems];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    if ([_nameOfUser isEqualToString:@""]) {
        [tableView registerNib:[UINib nibWithNibName:@"MyCellPartData" bundle:nil] forCellReuseIdentifier:@"PartData"];
       PartInformationTableViewCell *partCell = [tableView dequeueReusableCellWithIdentifier:@"PartData" forIndexPath:indexPath];
        [partCell setValueInCell:[_data fetchedItem:indexPath.row]];
        cell = partCell;
    }
    else {
        [tableView registerNib:[UINib nibWithNibName:@"MyCellFullData" bundle:nil] forCellReuseIdentifier:@"FullData"];
       FullInformationTableViewCell *fullCell = [tableView dequeueReusableCellWithIdentifier:@"FullData" forIndexPath:indexPath];
        [fullCell setValueInCellChild:[_data fetchedItem:indexPath.row]];
        cell = fullCell;

    }
    
    return cell;
}

- (void) userNameIdentity:(NSString *) name {
    _nameOfUser = name;
    [self.tableView reloadData];
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"name"])
    {
        NameLoginViewController *vc = [segue destinationViewController];
        vc.delegate = self;
    }
}


@end
