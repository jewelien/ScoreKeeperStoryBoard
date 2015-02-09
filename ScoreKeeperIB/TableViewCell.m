//
//  TableViewCell.m
//  ScoreKeeperIB
//
//  Created by Julien Guanzon on 2/9/15.
//  Copyright (c) 2015 Julien Guanzon. All rights reserved.
//

#import "TableViewCell.h"

@interface TableViewCell ()
@property (weak, nonatomic) IBOutlet UITextField *nameField;

@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;


@property (weak, nonatomic) IBOutlet UIStepper *scoreStepper;



@end

@implementation TableViewCell

- (void)awakeFromNib {
    // Initialization code
    [self.scoreStepper addTarget:self action:@selector(stepperAction:) forControlEvents:UIControlEventValueChanged];
}


- (id) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    
    return self;
}



- (IBAction)stepperAction:(id)sender {
    int value = [self.scoreStepper value];
    self.scoreLabel.text = [NSString stringWithFormat:@"%d",value];
    
    
}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
