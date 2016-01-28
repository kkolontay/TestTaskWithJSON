//
//  NameLoginViewController.m
//  TestTaskWithJSON
//
//  Created by Konstantin Kolontay on 1/25/16.
//  Copyright © 2016 Konstantin Kolontay. All rights reserved.
//

#import "NameLoginViewController.h"

@interface NameLoginViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation NameLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveNameOfUser:(UIBarButtonItem *)sender {
    if ([self checkedUser]) {
         [_delegate userNameIdentity:_nameTextField.text];
    }
   
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (BOOL)checkedUser {
    if ([_nameTextField.text isEqualToString:@""] || [_passwordTextField.text isEqualToString:@""]) {
        UIAlertController * alert=   [UIAlertController
                                      alertControllerWithTitle:@"Error"
                                      message:@"You wrong enter login or password"
                                      preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* yesButton = [UIAlertAction
                                    actionWithTitle:@"Ok"
                                    style:UIAlertActionStyleDefault
                                    handler:^(UIAlertAction * action)
                                    {
                                    }];
              
        [alert addAction:yesButton];
        
        [self presentViewController:alert animated:YES completion:nil];
        return false;
    } else {
        return true;
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
