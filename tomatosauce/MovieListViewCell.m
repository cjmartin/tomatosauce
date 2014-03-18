//
//  MovieListViewCell.m
//  tomatosauce
//
//  Created by Chris Martin on 3/18/14.
//  Copyright (c) 2014 Chris Martin. All rights reserved.
//

#import "MovieListViewCell.h"
#import "UIImageView+AFnetworking.h"

@interface MovieListViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *movieTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@end

@implementation MovieListViewCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - Public methods

- (void)setMovie:(Movie *)movie {
    _movie = movie;
    
    self.movieTitleLabel.text = movie.title;
    self.synopsisLabel.text = movie.synopsis;
    [self.posterView setImageWithURL:[NSURL URLWithString:movie.posterThumbUrl]];
}

@end
