//
//  MovieInfoViewController.m
//  tomatosauce
//
//  Created by Chris Martin on 3/18/14.
//  Copyright (c) 2014 Chris Martin. All rights reserved.
//

#import "MovieInfoViewController.h"
#import "UIImageView+AFnetworking.h"
#import "Movie.h"

@interface MovieInfoViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UILabel *castLabel;
@property (nonatomic, strong) Movie *movie;

@end

@implementation MovieInfoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil movie:(Movie *)movie
{
    self = [self initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.movie = movie;
        self.title = movie.title;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"%@", self.movie.posterUrl);
    
    self.synopsisLabel.text = self.movie.synopsis;
    [self.posterView setImageWithURL:[NSURL URLWithString:self.movie.posterUrl]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
