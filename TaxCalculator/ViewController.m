//
//  ViewController.m
//  TaxCalculator
//
//  Created by Sherrie Jones on 1/2/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (strong, nonatomic) IBOutlet UITextField *priceTextField;
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;
@property (assign, nonatomic) id< UITextFieldDelegate > delegate;
@property double caTax;
@property double chiTax;
@property double nyTax;
@property double priceValue;
@property double totalSalesTax;
@property double totalPrice;

@end

@implementation ViewController


- (IBAction)onCalculateButtonTapped:(id)sender {
    _caTax = 7.5;
    _chiTax = 9.25;
    _nyTax = 4.5;
    _priceValue = 0;
    _totalSalesTax = 0;
    _totalPrice = 0;

    switch (self.segmentedControl.selectedSegmentIndex)
    {
        case 0:
        {
            _priceValue = [self.priceTextField.text doubleValue];
            _totalSalesTax = _caTax * _priceValue / 100;
            _totalPrice = _priceValue + _totalSalesTax;
            self.resultLabel.text = [NSString stringWithFormat:@"Your California total sales tax is $%.02f\n Total price is $%.2f", _totalSalesTax, _totalPrice];
            //self.resultLabel.text = [NSString stringWithFormat:@"Enter your purchase price"];


            break;
        }
        case 1:
        {
            _priceValue = [self.priceTextField.text doubleValue];
            _totalSalesTax = _chiTax * _priceValue / 100;
            _totalPrice = _priceValue + _totalSalesTax;
            self.resultLabel.text = [NSString stringWithFormat:@"Your Chicago total sales tax is $%.02f\n Total price is $%.2f", _totalSalesTax, _totalPrice];
            break;
            
        }
        case 2:
        {
            _priceValue = [self.priceTextField.text doubleValue];
            _totalSalesTax = _nyTax * _priceValue / 100;
            _totalPrice = _priceValue + _totalSalesTax;
            self.resultLabel.text = [NSString stringWithFormat:@"Your New York total sales tax is $%.02f\n Total price is $%.2f", _totalSalesTax, _totalPrice];
            break;
        }
        default:
        {
            break;
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];


}

@end
