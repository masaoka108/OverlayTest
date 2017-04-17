//
//  ViewController.m
//  OverlayTest
//
//  Created by USER on 2017/04/16.
//  Copyright © 2017年 masahiro okamura. All rights reserved.
//

#import "ViewController.h"
#import "OverlayView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)launchCamera:(id)sender {

    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        [picker setSourceType:UIImagePickerControllerSourceTypeCamera];
        OverlayView *overlayView = [[OverlayView alloc] initWithFrame:picker.view.frame];
        picker.cameraOverlayView = overlayView;
    }
    
    [self presentViewController:picker animated:YES completion:nil];
    
    
//    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
//    
//    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
//    {
//        [picker setSourceType:UIImagePickerControllerSourceTypeCamera];
//        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image.png"]];
//        picker.cameraOverlayView = imageView;
//    }
//    
//    [self presentViewController:picker animated:YES completion:nil];
}

@end
