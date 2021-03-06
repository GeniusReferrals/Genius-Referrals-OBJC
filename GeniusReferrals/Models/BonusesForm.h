//
//  BonusesForm.h
//  GeniusReferrals
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ) on 02/18/2017
//
#ifndef APIMATIC_BONUSESFORM
#define APIMATIC_BONUSESFORM

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "Bonuses.h"


//protocol defined for deserialization of JSON
@protocol BonusesForm
@end

@interface BonusesForm : JSONModel

/**
* The bonuses' wrapper
*/
@property Bonuses* bonus;


/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap;

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper;

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName;

@end
#endif