//
//  QuestViewController.h
//  StartBuck
//
//  Created by ChenWei on 2019/7/30.
//  Copyright © 2019 Jacob. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../Models/RememberModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *resonTextField;

- (IBAction)submitAction:(id)sender;

@end

NS_ASSUME_NONNULL_END
