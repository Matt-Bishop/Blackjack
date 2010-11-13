//
//  Card.h
//  ICBBlackjack
//
//  Created by Matt Bishop on 11/12/10.
//  Copyright 2010 iphone App development club. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
	Hearts,
	Diamonds,
	Spades,
	Clubs
} Suit;

#define Ace		1
#define Jack	11
#define Queen	12
#define King	13

@interface Card : NSObject {
	NSInteger value;
	Suit suit;
}

@property (nonatomic) NSInteger value;
@property (nonatomic) Suit suit;

- (id) initWithValue:(NSInteger) aValue suit:(Suit) aSuit;

@end
