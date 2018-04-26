//
//  ColorViewController.m
//  SmartFabEx
//
//  Created by Matteo Vigoni on 25/04/2018.
//  Copyright © 2018 Odd Jobs. All rights reserved.
//

#import "ColorViewController.h"

@interface ColorViewController ()

// Questa è la view che deve essere colorata in base al color selezionato
@property (weak, nonatomic) IBOutlet UIView *colorView;

@end

@implementation ColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //TODO colorare opportunamente colorView in base al colore selezionato
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)close:(id)sender {
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
