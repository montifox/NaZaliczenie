//
//  MainViewController.h
//  Zaliczenie
//
//  Created by Mateusz Chojnacki on 27.05.2017.
//  Copyright © 2017 Mateusz Chojnacki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

// var
    // array
@property NSMutableArray *itemARRAY, *costARRAY, *dateARRAY;
    // int
@property int arrayNUMB, arrayCOUNT;
    // nsstring
@property NSString *correctItem, *correctCost;


// action
- (IBAction)leftBTN:(id)sender;
- (IBAction)rightBTN:(id)sender;
- (IBAction)addBTN:(id)sender;
- (IBAction)deleteBTN:(id)sender;


// outlet
@property (weak, nonatomic) IBOutlet UILabel *countLAB;
@property (weak, nonatomic) IBOutlet UILabel *itemLAB;
@property (weak, nonatomic) IBOutlet UILabel *costLAB;
@property (weak, nonatomic) IBOutlet UILabel *dateLAB;

@property (weak, nonatomic) IBOutlet UILabel *errorLAB;
    // inputs
@property (weak, nonatomic) IBOutlet UITextField *itemTF;
@property (weak, nonatomic) IBOutlet UITextField *costTF;

@end
