//
//  DisplayViewController.m
//  PhotoApp
//
//  Created by rMBP on 2014/01/19.
//  Copyright (c) 2014年 Tom Ice. All rights reserved.
//

#import "DisplayViewController.h"

@interface DisplayViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *currentImage;

@end

@implementation DisplayViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    InfoViewController *ivc = [segue destinationViewController];
    ivc.currentPhoto = self.currentPhoto;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UIImage *image = [UIImage imageNamed:self.currentPhoto.filename];
    [self.currentImage setImage:image];
    
    self.title = self.currentPhoto.nameOfPhoto;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
