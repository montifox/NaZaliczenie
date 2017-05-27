//
//  MainViewController.m
//  Zaliczenie
//
//  Created by Mateusz Chojnacki on 27.05.2017.
//  Copyright © 2017 Mateusz Chojnacki. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

@synthesize arrayNUMB, arrayCOUNT, costARRAY, dateARRAY, itemARRAY, correctItem, correctCost;



- (void)viewDidLoad {
    
    costARRAY = [NSMutableArray array];
    dateARRAY = [NSMutableArray array];
    itemARRAY = [NSMutableArray array];

    arrayNUMB = 0;
    arrayCOUNT = (int) itemARRAY.count;
    
    
    
    [super viewDidLoad];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



- (IBAction)leftBTN:(id)sender {
}

- (IBAction)rightBTN:(id)sender {
}

- (IBAction)addBTN:(id)sender {
    
    correctItem = _itemTF.text;
    correctCost = _costTF.text;
    
    if((![correctItem  isEqual: @""]) && (![correctCost  isEqual: @""])){
        NSLog(@"xD");
    }
    
    
    
}
@end
