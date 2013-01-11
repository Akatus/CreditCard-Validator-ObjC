//
//  CreditCard-Validator.m
//  CreditCard-Validator-ObjC
//
//  Created by Fernando Bass on 1/8/13.
//  Copyright (c) 2013 Fernando Bass. All rights reserved.
//

#pragma mark - Regex for CreditCard

//Finding or Verification Credit Card Numbers
//http://www.regular-expressions.info/creditcard.html

#define kVISA_TYPE        @"^4[0-9]{3}?"
#define kMASTER_CARD_TYPE @"^5[1-5][0-9]{2}$"
#define kAMEX_TYPE		@"^3[47][0-9]{2}$"
#define kDINERS_CLUB_TYPE	@"^3(?:0[0-5]|[68][0-9])[0-9]$"
#define kDISCOVER_TYPE		@"^6(?:011|5[0-9]{2})$"

#import "CreditCard-Validator.h"

@implementation CreditCard_Validator

+ (CreditCardBrand)checkCardBrandWithNumber:(NSString *)cardNumber
{
    if([cardNumber length] < 4) return CreditCardBrandUnknown;
    
    CreditCardBrand cardType;
    NSRegularExpression *regex;
    NSError *error;
    
    for(NSUInteger i = 0; i < CreditCardBrandUnknown; ++i) {
    
        cardType = i;
		
        switch(i) {
            case CreditCardBrandVisa:
                regex = [NSRegularExpression regularExpressionWithPattern:kVISA_TYPE options:0 error:&error];
                break;
            case CreditCardBrandMasterCard:
                regex = [NSRegularExpression regularExpressionWithPattern:kMASTER_CARD_TYPE options:0 error:&error];
                break;
            case CreditCardBrandAmex:
                regex = [NSRegularExpression regularExpressionWithPattern:kAMEX_TYPE options:0 error:&error];
                break;
            case CreditCardBrandDinersClub:
                regex = [NSRegularExpression regularExpressionWithPattern:kDINERS_CLUB_TYPE options:0 error:&error];
                break;
            case CreditCardBrandDiscover:
                regex = [NSRegularExpression regularExpressionWithPattern:kDISCOVER_TYPE options:0 error:&error];
                break;
		}
        
		NSUInteger matches = [regex numberOfMatchesInString:cardNumber options:0 range:NSMakeRange(0, 4)];
        if(matches == 1) return cardType;
        
	}
    
    return CreditCardBrandUnknown;
}

+ (BOOL)checkCreditCardNumber:(NSString *)cardNum
{
    NSAssert(cardNum && cardNum != @"" , @"checkCreditCardNumber: cardNum is nil.");
    
    NSInteger len = [cardNum length];
    NSInteger sumNumOdd = 0;
    NSInteger sumNumEven = 0;
    BOOL isOdd = YES;
    
    for (NSInteger i = len - 1; i >= 0; i--) {
        
        NSInteger num = [cardNum substringWithRange:NSMakeRange(i, 1)].integerValue;
        if (isOdd) {
            sumNumOdd += num;
        }else{
            num = num * 2;
            if (num > 9) {
                num = num - 9;
            }
            sumNumEven += num;
        }
        isOdd = !isOdd;
    }
    
    return ((sumNumOdd + sumNumEven) % 10 == 0);
}
@end
