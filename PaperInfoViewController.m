//
//  PaperInfoViewController.m
//  AccountingExam
//
//  Created by trainer on 11/23/15.
//  Copyright © 2015 trainer. All rights reserved.
//
#import "JsonData.h"
#import "PaperInfoViewController.h"
#import "PaperView.h"
@interface PaperInfoViewController ()

@end

@implementation PaperInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINib *nib = [UINib nibWithNibName:@"PaperView" bundle:nil];
   NSArray *nibs = [nib instantiateWithOwner:self options:nil];
    PaperView *paperView = [nibs objectAtIndex:0];
    [paperView addPaperView];
    self.view = paperView;
    JsonData *jsonData = [[JsonData alloc] init];
   // [jsonData getPapers];
 // NSDictionary *dic =  jsonData.jsonDic;
    //NSLog(@"%@",dic);
    
    [jsonData getQuestions];
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
