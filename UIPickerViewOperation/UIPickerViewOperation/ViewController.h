//
//  ViewController.h
//  UIPickerViewOperation
//
//  Created by 紫冬 on 13-8-26.
//  Copyright (c) 2013年 qsji. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
{
    UIPickerView *_pickerViewAnimal;
    NSArray *_arrayAnimal;
}

@property(nonatomic, retain)UIPickerView *pickerViewAnimal;
@property(nonatomic, retain)NSArray *arrayAnimal;

@end
