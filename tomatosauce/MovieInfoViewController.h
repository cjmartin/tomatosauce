//
//  MovieInfoViewController.h
//  tomatosauce
//
//  Created by Chris Martin on 3/18/14.
//  Copyright (c) 2014 Chris Martin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

@interface MovieInfoViewController : UIViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil movie:(Movie *)movie;

@end
