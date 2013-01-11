//
//  CreditCard-Validator.h
//  CreditCard-Validator-ObjC
//
//  Created by Fernando Bass on 1/8/13.
//  Copyright (c) 2013 Fernando Bass. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, CreditCardBrand) {
    CreditCardBrandVisa,
    CreditCardBrandMasterCard,
    CreditCardBrandDinersClub,
    CreditCardBrandAmex,
    CreditCardBrandDiscover,
    CreditCardBrandUnknown
};

@interface CreditCard_Validator : NSObject

+ (CreditCardBrand)checkCardBrandWithNumber:(NSString *)cardNumber;
+ (BOOL)checkCreditCardNumber:(NSString *)cardNum;

@end
