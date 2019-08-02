//
//  ViewController.m
//  StartBuck
//
//  Created by ChenWei on 2019/7/30.
//  Copyright © 2019 Jacob. All rights reserved.
//

#import "ViewController.h"
#import "QuestViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"StartBucks";
}



- (IBAction)pressGoAction:(id)sender {
    QuestViewController *vc = [[QuestViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@" " style:self.navigationItem.backBarButtonItem.style target:nil action:nil];
    [super viewWillDisappear:animated];
}
@end

