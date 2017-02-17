//
//  ReportsController.m
//  GeniusReferrals
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ) on 02/17/2017
//
#import "ReportsController.h"

@implementation ReportsController

/**
* Get referrals summary per referral origin.
* @param    advocateToken    Required parameter: The advocate's token
* @return	Returns the void response from the API call */
- (void) getReferralsSummaryPerOriginAsyncWithAdvocateToken:(NSString*) advocateToken
                completionBlock:(CompletedGetReferralsSummaryPerOrigin) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/reports/referrals-summary-per-origin"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"advocate_token": advocateToken
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"Content-Type": Configuration_ContentType,
        @"X-Auth-Token": Configuration_XAuthToken
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] get: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if (_response.statusCode == 401)
             _statusError = [[APIError alloc] initWithReason: @"You are not authenticated"
                                               andContext:_context];
         else if (_response.statusCode == 403)
             _statusError = [[APIError alloc] initWithReason: @"User not authorized to perform the operation"
                                               andContext:_context];
         else if (_response.statusCode == 404)
             _statusError = [[APIError alloc] initWithReason: @"Resource not found"
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             id _result = [NSJSONSerialization
                        JSONObjectWithData: [_strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* Get bonuses summary per referral origin.
* @param    advocateToken    Required parameter: The advocate's token
* @return	Returns the void response from the API call */
- (void) getBonusesSummaryPerOriginAsyncWithAdvocateToken:(NSString*) advocateToken
                completionBlock:(CompletedGetBonusesSummaryPerOrigin) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/reports/bonuses-summary-per-origin"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"advocate_token": advocateToken
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"Content-Type": Configuration_ContentType,
        @"X-Auth-Token": Configuration_XAuthToken
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] get: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if (_response.statusCode == 401)
             _statusError = [[APIError alloc] initWithReason: @"You are not authenticated"
                                               andContext:_context];
         else if (_response.statusCode == 403)
             _statusError = [[APIError alloc] initWithReason: @"User not authorized to perform the operation"
                                               andContext:_context];
         else if (_response.statusCode == 404)
             _statusError = [[APIError alloc] initWithReason: @"Resource not found"
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             id _result = [NSJSONSerialization
                        JSONObjectWithData: [_strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* Get top 10 advocates.
* @param    accountSlug    Optional parameter: The account identifier
* @param    campaignSlug    Optional parameter: The campaign identifier
* @param    limit    Optional parameter: Maximum number of results to return in the response. Default (10)
* @param    from    Optional parameter: The datetime were the range of the search starts
* @param    to    Optional parameter: The datetime were the range of the search stops
* @return	Returns the void response from the API call */
- (void) getTopAdvocatesAsyncWithAccountSlug:(NSString*) accountSlug
                campaignSlug:(NSString*) campaignSlug
                limit:(NSNumber*) limit
                from:(NSDate*) from
                to:(NSDate*) to
                completionBlock:(CompletedGetTopAdvocates) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/reports/top-advocates"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"account_slug": (nil != accountSlug) ? accountSlug : [NSNull null],
                    @"campaign_slug": (nil != campaignSlug) ? campaignSlug : [NSNull null],
                    @"limit": (nil != limit) ? limit : [NSNull null],
                    @"from": (nil != from) ? from : [NSNull null],
                    @"to": (nil != to) ? to : [NSNull null]
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"Content-Type": Configuration_ContentType,
        @"X-Auth-Token": Configuration_XAuthToken
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] get: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if (_response.statusCode == 401)
             _statusError = [[APIError alloc] initWithReason: @"You are not authenticated"
                                               andContext:_context];
         else if (_response.statusCode == 403)
             _statusError = [[APIError alloc] initWithReason: @"User not authorized to perform the operation"
                                               andContext:_context];
         else if (_response.statusCode == 404)
             _statusError = [[APIError alloc] initWithReason: @"Resource not found"
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             id _result = [NSJSONSerialization
                        JSONObjectWithData: [_strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* Get share daily participation.
* @param    accountSlug    Optional parameter: The account identifier
* @param    campaignSlug    Optional parameter: The campaign identifier
* @param    advocateToken    Optional parameter: The advocate's token
* @param    from    Optional parameter: The datetime were the range of the search starts
* @param    to    Optional parameter: The datetime were the range of the search stops
* @return	Returns the void response from the API call */
- (void) getShareDailyParticipationAsyncWithAccountSlug:(NSString*) accountSlug
                campaignSlug:(NSString*) campaignSlug
                advocateToken:(NSString*) advocateToken
                from:(NSDate*) from
                to:(NSDate*) to
                completionBlock:(CompletedGetShareDailyParticipation) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/reports/share-daily-participation"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"account_slug": (nil != accountSlug) ? accountSlug : [NSNull null],
                    @"campaign_slug": (nil != campaignSlug) ? campaignSlug : [NSNull null],
                    @"advocate_token": (nil != advocateToken) ? advocateToken : [NSNull null],
                    @"from": (nil != from) ? from : [NSNull null],
                    @"to": (nil != to) ? to : [NSNull null]
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"Content-Type": Configuration_ContentType,
        @"X-Auth-Token": Configuration_XAuthToken
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] get: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if (_response.statusCode == 401)
             _statusError = [[APIError alloc] initWithReason: @"You are not authenticated"
                                               andContext:_context];
         else if (_response.statusCode == 403)
             _statusError = [[APIError alloc] initWithReason: @"User not authorized to perform the operation"
                                               andContext:_context];
         else if (_response.statusCode == 404)
             _statusError = [[APIError alloc] initWithReason: @"Resource not found"
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             id _result = [NSJSONSerialization
                        JSONObjectWithData: [_strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* Get referral daily participation.
* @param    accountSlug    Optional parameter: The account identifier
* @param    campaignSlug    Optional parameter: The campaign identifier
* @param    advocateToken    Optional parameter: The advocate's token
* @param    from    Optional parameter: The datetime were the range of the search starts
* @param    to    Optional parameter: The datetime were the range of the search stops
* @return	Returns the void response from the API call */
- (void) getReferralDailyParticipationAsyncWithAccountSlug:(NSString*) accountSlug
                campaignSlug:(NSString*) campaignSlug
                advocateToken:(NSString*) advocateToken
                from:(NSDate*) from
                to:(NSDate*) to
                completionBlock:(CompletedGetReferralDailyParticipation) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/reports/referral-daily-participation"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"account_slug": (nil != accountSlug) ? accountSlug : [NSNull null],
                    @"campaign_slug": (nil != campaignSlug) ? campaignSlug : [NSNull null],
                    @"advocate_token": (nil != advocateToken) ? advocateToken : [NSNull null],
                    @"from": (nil != from) ? from : [NSNull null],
                    @"to": (nil != to) ? to : [NSNull null]
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"Content-Type": Configuration_ContentType,
        @"X-Auth-Token": Configuration_XAuthToken
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] get: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if (_response.statusCode == 401)
             _statusError = [[APIError alloc] initWithReason: @"You are not authenticated"
                                               andContext:_context];
         else if (_response.statusCode == 403)
             _statusError = [[APIError alloc] initWithReason: @"User not authorized to perform the operation"
                                               andContext:_context];
         else if (_response.statusCode == 404)
             _statusError = [[APIError alloc] initWithReason: @"Resource not found"
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             id _result = [NSJSONSerialization
                        JSONObjectWithData: [_strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* Get click daily participation.
* @param    accountSlug    Optional parameter: The account identifier
* @param    campaignSlug    Optional parameter: The campaign identifier
* @param    advocateToken    Optional parameter: The advocate's token
* @param    from    Optional parameter: The datetime were the range of the search starts
* @param    to    Optional parameter: The datetime were the range of the search stops
* @return	Returns the void response from the API call */
- (void) getClickDailyParticipationAsyncWithAccountSlug:(NSString*) accountSlug
                campaignSlug:(NSString*) campaignSlug
                advocateToken:(NSString*) advocateToken
                from:(NSDate*) from
                to:(NSDate*) to
                completionBlock:(CompletedGetClickDailyParticipation) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/reports/click-daily-participation"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"account_slug": (nil != accountSlug) ? accountSlug : [NSNull null],
                    @"campaign_slug": (nil != campaignSlug) ? campaignSlug : [NSNull null],
                    @"advocate_token": (nil != advocateToken) ? advocateToken : [NSNull null],
                    @"from": (nil != from) ? from : [NSNull null],
                    @"to": (nil != to) ? to : [NSNull null]
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"Content-Type": Configuration_ContentType,
        @"X-Auth-Token": Configuration_XAuthToken
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] get: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if (_response.statusCode == 401)
             _statusError = [[APIError alloc] initWithReason: @"You are not authenticated"
                                               andContext:_context];
         else if (_response.statusCode == 403)
             _statusError = [[APIError alloc] initWithReason: @"User not authorized to perform the operation"
                                               andContext:_context];
         else if (_response.statusCode == 404)
             _statusError = [[APIError alloc] initWithReason: @"Resource not found"
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             id _result = [NSJSONSerialization
                        JSONObjectWithData: [_strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* Get bonuses daily given.
* @param    accountSlug    Optional parameter: The account identifier
* @param    campaignSlug    Optional parameter: The campaign identifier
* @param    advocateToken    Optional parameter: The advocate identifier
* @param    from    Optional parameter: The datetime were the range of the search starts
* @param    to    Optional parameter: The datetime were the range of the search stops
* @return	Returns the void response from the API call */
- (void) getBonusesDailyGivenAsyncWithAccountSlug:(NSString*) accountSlug
                campaignSlug:(NSString*) campaignSlug
                advocateToken:(NSString*) advocateToken
                from:(NSDate*) from
                to:(NSDate*) to
                completionBlock:(CompletedGetBonusesDailyGiven) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/reports/bonuses-daily-given"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"account_slug": (nil != accountSlug) ? accountSlug : [NSNull null],
                    @"campaign_slug": (nil != campaignSlug) ? campaignSlug : [NSNull null],
                    @"advocate_token": (nil != advocateToken) ? advocateToken : [NSNull null],
                    @"from": (nil != from) ? from : [NSNull null],
                    @"to": (nil != to) ? to : [NSNull null]
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"Content-Type": Configuration_ContentType,
        @"X-Auth-Token": Configuration_XAuthToken
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] get: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if (_response.statusCode == 401)
             _statusError = [[APIError alloc] initWithReason: @"You are not authenticated"
                                               andContext:_context];
         else if (_response.statusCode == 403)
             _statusError = [[APIError alloc] initWithReason: @"User not authorized to perform the operation"
                                               andContext:_context];
         else if (_response.statusCode == 404)
             _statusError = [[APIError alloc] initWithReason: @"Resource not found"
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             id _result = [NSJSONSerialization
                        JSONObjectWithData: [_strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}


@end