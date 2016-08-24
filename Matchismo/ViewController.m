//
//  ViewController.m
//  Matchismo
//
//  Created by Fiona Shen on 2016-08-17.
//  Copyright © 2016 Lucas. All rights reserved.
//

#import "ViewController.h"
#include "Model/Deck.h"
#include "Model/PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic,strong) Deck *deck;
@end

@implementation ViewController

-(Deck*)deck
{
    if(!_deck) _deck =[[PlayingCardDeck alloc] init];
    return _deck;
}


- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    //NSLog(@"flipCount changed to %d",self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    
    if([sender.currentTitle length])
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        //NSLog(@"current is cardback, no title");
    }
    else
    {
        Card* card = [self.deck drawRandomCard];
        if(card)
        {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
            //[sender setTitle:@"A♣︎" forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
            NSLog(@"current is cardfront");
            self.flipCount++;
        }
    }
    
}

@end
