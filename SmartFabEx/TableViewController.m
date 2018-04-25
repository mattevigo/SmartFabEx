//
//  TableViewController.m
//  SmartFabEx
//
//  Created by Matteo Vigoni on 25/04/2018.
//  Copyright © 2018 Odd Jobs. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController
{
    NSArray *_colorArr;
    NSDictionary *_colorDict;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _colorArr = @[@"Red", @"Blue", @"Green"];
    _colorDict = @{@"Red":[UIColor redColor],
                   @"Blue":[UIColor blueColor],
                   @"Green":[UIColor greenColor],
                   };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    //TODO configurare opportunamente la cella in modo che si capisca quale colore essa rappresenta
    //TIP: la variabile "_colorDict" può risultare utile qualora si voglia colorare la view della cella in ase al valore dell'array...
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //TODO Gestire opportunamente il colore selezionato
}

@end
