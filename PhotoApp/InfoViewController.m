//
//  InfoViewController.m
//  PhotoApp
//
//  Created by rMBP on 2014/01/19.
//  Copyright (c) 2014年 Tom Ice. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()
@property (weak, nonatomic) IBOutlet UITextView *infoText;
@property (weak, nonatomic) IBOutlet UIImageView *currentImage;

@end

@implementation InfoViewController

- (IBAction)dismiss:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UIImage *image = [UIImage imageNamed:self.currentPhoto.filename];
    [self.currentImage setImage:image];
    
    self.infoText.text = [self.currentPhoto information];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
