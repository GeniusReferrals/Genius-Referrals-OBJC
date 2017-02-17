//
//  Advocate.m
//  GeniusReferrals
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ) on 02/17/2017
//
#import "Advocate.h"

@implementation Advocate

/**
* The advocate's name
*/
@synthesize name;

/**
* The advocate's last name
*/
@synthesize lastname;

/**
* The advocate's email
*/
@synthesize email;

/**
* The total amount of bonuses that the advocate must generate before being able to create a bonus redemption request.
*/
@synthesize payoutThreshold;

/**
* The advocate's avatar URL
*/
@synthesize avatarUrl;

/**
* Useful to store extra information about the advocate. e.g, the phone number, address, etc.
*/
@synthesize metadata;

/**
* Whether or not the advocate is allowed to refer services/products (Useful when using the Full Widget template).
*/
@synthesize canRefer;

-(id)init
{
    if (self = [super init])
    {
        self.canRefer = YES;
    }
    return self;
}



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"name": @"name",
        @"lastname": @"lastname",
        @"email": @"email",
        @"payout_threshold": @"payoutThreshold",
        @"avatar_url": @"avatarUrl",
        @"metadata": @"metadata",
        @"can_refer": @"canRefer"  
    }];

    return map;
}

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper
{ 
  return [[JSONKeyMapper alloc] initWithDictionary: [self keyMap]];
}

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName
{
    return YES;
}

@end