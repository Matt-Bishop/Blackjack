//
//  Card.m
//  ICBBlackjack
//
//  Created by Matt Bishop on 11/12/10.
//  Copyright 2010 iphone App development club. All rights reserved.
//

#import "Card.h"

@interface Card(Private)

- (NSString *) valueAsString;
- (NSString *) suitAsString;
@end


@implementation Card

@synthesize value,suit;

- (id) initWithValue:(NSInteger) aValue suit:(Suit) aSuit{
	if (self = [super init]) {
		self.value = aValue;
		self.suit = aSuit;
	}
	return self;
}

- (NSString *) valueAsString {
	switch (self.value) {
		case Ace:
			return @"Ace";
			break;
		case Jack:
			return @"Jack";
			break;
		case Queen:
			return @"Queen";
			break;
		case King:
			return @"King";
			break;
		default:
			return [NSString stringWithFormat:@"%d",self.value];
			break;
	}
}

- (NSString *) suitAsString{
	switch (self.suit) {
		case Hearts:
			return @"Hearts";
			break;
		case Diamonds:
			return @"Diamonds";
			break;
		case Spades:
			return @"Spades";
			break;
		case Clubs:
			return @"Clubs";
			break;
		default:
			return nil;
			break;
	}
}

- (NSString *) description{
	return [NSString stringWithFormat:@"%@ of %@",[self.valueAsString],[self.suitAsString]];
}

@end
