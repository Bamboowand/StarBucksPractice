//
//  QuestViewController.m
//  StartBuck
//
//  Created by ChenWei on 2019/7/30.
//  Copyright © 2019 Jacob. All rights reserved.
//

#import "QuestViewController.h"
#import "LineIdViewController.h"

@interface QuestViewController ()

@end

@implementation QuestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"星巴克顧客心聲調查";
    [self.nameTextField setDelegate:self];
    [self.resonTextField setDelegate:self];
}

- (IBAction)submitAction:(id)sender {
    LineIdViewController *vc = [[LineIdViewController alloc] init];
    [RememberModel shareInstance].name = self.nameTextField.text;
    [RememberModel shareInstance].reason = self.resonTextField.text;
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - UITextFieldDelegate methods
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
