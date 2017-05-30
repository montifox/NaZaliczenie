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
    if(arrayNUMB > 0){
        
        arrayNUMB--;
        _itemLAB.text = itemARRAY[arrayNUMB];
        _costLAB.text = costARRAY[arrayNUMB];
        _dateLAB.text = dateARRAY[arrayNUMB];
        // count LBL
        [_countLAB setText:[NSString stringWithFormat:@"%d of %d", arrayNUMB +1, arrayCOUNT]];
        
        NSLog(@"ArrNumb: %d   ArrCount %d", arrayNUMB ,arrayCOUNT);
        
    }

    
}

- (IBAction)rightBTN:(id)sender {
    
    if((arrayNUMB  != arrayCOUNT) && (arrayNUMB  != arrayCOUNT - 1)){
        
        arrayNUMB++;
        _itemLAB.text = itemARRAY[arrayNUMB];
        _costLAB.text = costARRAY[arrayNUMB];
        _dateLAB.text = dateARRAY[arrayNUMB];
        // count LBL
        [_countLAB setText:[NSString stringWithFormat:@"%d of %d", arrayNUMB +1, arrayCOUNT]];
        
        NSLog(@"ArrNumb: %d   ArrCount %d", arrayNUMB ,arrayCOUNT);
        
    }
}

- (IBAction)addBTN:(id)sender {
    
    correctItem = _itemTF.text;
    correctCost = _costTF.text;
    
    if((![correctItem  isEqual: @""]) && (![correctCost  isEqual: @""])){
        
        // set date
        NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        
        [dateARRAY addObject: [dateFormatter stringFromDate:[NSDate date]]];
        
        _dateLAB.text = dateARRAY[arrayNUMB];
        // set item
        [itemARRAY addObject: correctItem];
        
        _itemLAB.text = itemARRAY[arrayNUMB];
        // set cost
        [costARRAY addObject:correctCost];
        _costLAB.text = costARRAY[arrayNUMB];
        // count
        arrayCOUNT = (int)itemARRAY.count;
        [_countLAB setText:[NSString stringWithFormat:@"%d of %d", arrayNUMB +1, arrayCOUNT]];
        
        
        
        
        // clear
        _itemTF.text = @"";
        _costTF.text = @"";
        // error lab = false
        _errorLAB.text = @"GIT";
    }else{
        _errorLAB.text = @"Nie git";
    }
    
    
    
}

- (IBAction)deleteBTN:(id)sender {
    
    arrayCOUNT = (int)itemARRAY.count;
    
    if (arrayCOUNT > 0){
        if(arrayNUMB  > 0){
            
            
            
            [dateARRAY removeObjectAtIndex: arrayNUMB];
            [itemARRAY removeObjectAtIndex: arrayNUMB];
            [costARRAY removeObjectAtIndex: arrayNUMB];
            
            arrayNUMB--;
            arrayCOUNT--;
            
            _itemLAB.text = itemARRAY[arrayNUMB];
            _costLAB.text = costARRAY[arrayNUMB];
            _dateLAB.text = dateARRAY[arrayNUMB];
            // count LBL
            [_countLAB setText:[NSString stringWithFormat:@"%d of %d", arrayNUMB +1, arrayCOUNT]];
            
            NSLog(@"ArrNumb: %d   ArrCount %d", arrayNUMB ,arrayCOUNT);
        }else if (arrayNUMB  == 0){
            [dateARRAY removeObjectAtIndex: arrayNUMB];
            [itemARRAY removeObjectAtIndex: arrayNUMB];
            [costARRAY removeObjectAtIndex: arrayNUMB];
            
            
            _itemLAB.text = @"";
            _costLAB.text = @"";
            _dateLAB.text = @"";
            
            [_countLAB setText:[NSString stringWithFormat:@"0 of 0"]];
            //arrayNUMB--;
            arrayCOUNT = (int)itemARRAY.count;
            
            
            NSLog(@"ArrNumb: %d   ArrCount %d", arrayNUMB ,arrayCOUNT);
            
        }

    }
}
@end
