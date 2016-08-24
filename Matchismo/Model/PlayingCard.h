//
//  PlayingCard.h
//  Matchismo
//
//  Created by Fiona Shen on 2016-08-23.
//  Copyright © 2016 Lucas. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSArray*)validSuits;
+(NSUInteger)maxRank;

@end
