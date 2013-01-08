#import "Kiwi.h"
#import "CreditCard-Validator.h"

SPEC_BEGIN(CreditCard_ValidatorSpecs)

describe(@"CreditCard", ^{
    context(@"Check for CreditCard Type", ^{
        __block CreditCard_Validator *creditCard = nil;
        
        beforeEach(^{
            creditCard = [[CreditCard_Validator alloc] init];
        });
        
        it(@"should be a Unknown type", ^{
            [[theValue([CreditCard_Validator checkCardWithNumber:@"0000"]) should] equal:theValue(CreditCardTypeUnknown)];
        });
        
        it(@"should be Visa", ^{
            [[theValue([CreditCard_Validator checkCardWithNumber:@"4012"]) should] equal:theValue(CreditCardTypeVisa)];
        });
        
        pending(@"should be MasterCard", nil);
        
        pending(@"should be Amex", nil);

        pending(@"should be DinersClub", nil);
        
        pending(@"should be Discover", nil);
        
        pending(@"should be ELO", nil);
        
        pending(@"should be HiperCard", nil);
    });
});

SPEC_END
