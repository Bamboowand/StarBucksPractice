//
//  LineIdViewController.m
//  StartBuck
//
//  Created by ChenWei on 2019/7/30.
//  Copyright © 2019 Jacob. All rights reserved.
//

#import "LineIdViewController.h"

@interface LineIdViewController ()

@end

@implementation LineIdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *name = [RememberModel shareInstance].name;
    NSString *questString = [NSString stringWithFormat:@"那可以詢問%@小姐的Line嗎", name];
    self.questionLabel.text = questString;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)goLineAction:(id)sender {
    NSURL *appURL = [NSURL URLWithString:@"line://nv/addFriends"];
    if ([[UIApplication sharedApplication] canOpenURL: appURL]) {
        [[UIApplication sharedApplication] openURL:appURL options:@{} completionHandler:nil];
    }
    else { //如果使用者沒有安裝，連結到App Store
        NSURL *itunesURL = [NSURL URLWithString:@"itms-apps://itunes.apple.com/app/id443904275"];
        [[UIApplication sharedApplication] openURL:itunesURL];
    }
}

#pragma mark - UITextFieldDelegate methods
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}



@end
