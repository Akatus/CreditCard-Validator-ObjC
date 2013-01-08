#import "Kiwi.h"
#import "CreditCard-Validator.h"

SPEC_BEGIN(CreditCard_ValidatorSpecs)

describe(@"CreditCard", ^{
    context(@"Check for CreditCard Type", ^{
        __block CreditCard_Validator *creditCard = nil;
        
        beforeEach(^{
            creditCard = [[CreditCard_Validator alloc] init];
        });
        
        it(@"should be type Visa", ^{
            [[theValue([creditCard checkCardWithNumber:@"4012"]) should] equal:theValue(CreditCardTypeVisa)];
        });
    });
});

SPEC_END
