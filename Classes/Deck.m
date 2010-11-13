//
//  Deck.m
//  ICBBlackjack
//
//  Created by Matt Bishop on 11/12/10.
//  Copyright 2010 iphone App development club. All rights reserved.
//

#import "Deck.h"


@implementation Deck

- (id) init {
	if (self = [super init]) {
		cards = [[NSMutableArray alloc] init];
		for(int suit = 0; suit &lt;=3 suit++){
			for(int value = 1; value &lt;=13; value++){
				Card *card = [[Card alloc] initWithValue:value suit:suit];
				[cards addObject:card];
				[card release];
			}
		}
	}
	return self;
}

int randomSort(id obj1, id obj2, void *context ) {
	// returns random number -1 0 1
	return (arc4random()%3 - 1);
}

- (void) shuffle {
	for(int x = 0; x &lt; 500; x++) {
		[cards sortUsingFunction:randomSort context:nil];
	}
} 

- (Card *) draw {
 	if([self cardsRemaining] &gt; 0) {
		Card *card = [[cards lastObject] retain];
		[cards removeLastObject];
		return [card autorelease];
	}
	
	NSException* myException = [NSException
								exceptionWithName:@"OutOfCardsException"
								reason:@"Tried to draw a card from a deck with 0 cards."
								userInfo:nil];
	@throw myException;
}

- (NSInteger) cardsRemaining {
	return [cards count];
}

- (NSString *) description {
	NSString *desc = [NSString stringWithFormat:@"Deck with %d cards\n",[self cardsRemaining]];
	for(int x = 0; x &lt; [self cardsRemaining]; x++) {
		desc = [desc stringByAppendingFormat:@"%@\n",[[cards objectAtIndex:x] description]];
	}
	return desc;
}

- (void) dealloc {
	[cards release];
	[super dealloc];
}

@end
