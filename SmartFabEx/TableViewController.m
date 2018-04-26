//
//  TableViewController.m
//  SmartFabEx
//
//  Created by Matteo Vigoni on 25/04/2018.
//  Copyright © 2018 Odd Jobs. All rights reserved.
//

#import "TableViewController.h"
#import "ColorViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController
{
    NSArray *_colorArr;
    NSDictionary *_colorDict;
    __weak IBOutlet UITableView *_tableView;
    NSString *_selectedColor;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _colorArr = @[@"Red", @"Blue", @"Green"];
    _colorDict = @{@"Red":[UIColor redColor],
                   @"Blue":[UIColor blueColor],
                   @"Green":[UIColor greenColor],
                   };
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _colorArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"color" forIndexPath:indexPath];
    if(!cell){
        cell = [[UITableViewCell alloc] init];
    }
    
    //TODO configurare opportunamente la cella in modo che si capisca quale colore essa rappresenta
    //TIP: la variabile "_colorDict" può risultare utile qualora si voglia colorare la view della cella in ase al valore dell'array...
    cell.contentView.backgroundColor = _colorDict[_colorArr[indexPath.row]];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    _selectedColor = _colorArr[indexPath.row];
    [self performSegueWithIdentifier:@"colorSegue" sender:self];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //TODO Gestire opportunamente il colore selezionato
    if([segue.identifier isEqualToString:@"colorSegue"]){
        ColorViewController *cvc = segue.destinationViewController;
        cvc.color = _colorDict[_selectedColor];
        _selectedColor = nil;
    }
}

@end
