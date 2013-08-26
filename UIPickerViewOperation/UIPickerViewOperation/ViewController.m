//
//  ViewController.m
//  UIPickerViewOperation
//
//  Created by 紫冬 on 13-8-26.
//  Copyright (c) 2013年 qsji. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize pickerViewAnimal = _pickerViewAnimal;
@synthesize arrayAnimal = _arrayAnimal;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.arrayAnimal = [[NSArray alloc] initWithObjects:@"水瓶座",@"双鱼座",@"白羊座",@"金牛座"
               ,@"双子座",@"巨蟹座",@"狮子座",@"处女座"
               ,@"天秤座",@"天蝎座",@"射手座",@"山羊座",nil];
    
    UIPickerView *aPickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0.0, 150.0, 320.0, 216.0)];
    self.pickerViewAnimal = aPickerView;
    self.pickerViewAnimal.delegate = self;
    self.pickerViewAnimal.dataSource = self;
    self.pickerViewAnimal.showsSelectionIndicator = YES;
    [self.view addSubview:self.pickerViewAnimal];
}
-(NSArray *)pickerViewAnimalAtIndexes:(NSIndexSet *)indexes
{
    return nil;
}

//返回滚轮的数量
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

//返回滚轮中row的样式
-(NSAttributedString *)pickerView:(UIPickerView *)pickerView attributedTitleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return nil;
}

//当row被选中的时候
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"第%d个row被选中", row);
}

//返回滚轮的row数量
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.arrayAnimal count];
}

//返回滚轮的row的高度
-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 50;
}

//返回row显示的标题
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.arrayAnimal objectAtIndex:row];
}

/*
 注意，该方法只有当需要使用，需要自定义row的视图的时候，才能重写，并且返回一个具体的视图，如果返回一个nil，那么将会导致不现实row的内容，因为row的视图为nil
//自定义row的view
-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    return nil;
}
 
 */

//返回滚轮的宽度
-(CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    return 100;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
