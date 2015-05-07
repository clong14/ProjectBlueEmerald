//
//  PassengerSelectionViewController.m
//  iTrain
//
//  Created by Steven Tran on 5/6/15.
//  Copyright (c) 2015 Camille Long. All rights reserved.
//

#import "PassengerSelectionViewController.h"
#import "PassengerTableViewController.h"

@interface PassengerSelectionViewController ()

@end

@implementation PassengerSelectionViewController{
    
}

@synthesize selection_label;
@synthesize selection_name;

- (void)viewDidLoad {
    [super viewDidLoad];
    selection_label.text = selection_name;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
