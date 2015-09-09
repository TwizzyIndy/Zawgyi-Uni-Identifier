//
//  Zg-Uni-Identifier.m
//  Zawgyi-Uni-Identifier
//
//  Created by TwizzyIndy on 9/7/15.
//  Copyright (c) 2015 TwizzyIndy. All rights reserved.
//

#import "Zg-Uni-Identifier.h"

@implementation Zg_Uni_Identifier

-(BOOL) isZawgyi:(NSString *)str

{
    BOOL result;
    
    
    
    
    
    return result;
    
}

- (BOOL) isUni:(NSString *)str {
    
    BOOL result = NO;
    
    // Convert parameter strings to array ...
    
    NSMutableArray* arrayStrings = [NSMutableArray array];
    
    for (int i = 0; i < [str length]; i++) {
        
        NSString* ch = [str substringWithRange:NSMakeRange(i, 1)];
        [arrayStrings addObject:ch];
        
    }
    
    // Check all of chars in arrayStrings ...
    
    for (int x=0; x < str.length; ++x) {
        
        if ([arrayStrings[x]  isEqual: @"\u103E"]) { // wrong Htat-Htoe
            
            result = YES;
            
        }
        
#pragma mark 2 Chars
        
        // Nga + YatPint
        
        if ([arrayStrings[x] isEqual: @"\u1004"] && [arrayStrings[x+1] isEqual:@"\u103A"] ) {
            result = YES;
        }
        
        // ThaWayHtoe + YayCha
        
        if ([arrayStrings[x] isEqual: @"\u1031"] && [arrayStrings[x+1] isEqual:@"\u102C"] ) {
            result = YES;
        }
        
        // ThaWayHtoe + WaSaPouk
        if ([arrayStrings[x] isEqual: @"\u1031"] && [arrayStrings[x+1] isEqual:@"\u1038"] ) {
            result = YES;
        }
        
        // Na + YaPint
        
        if ([arrayStrings[x] isEqual: @"\u1014"] && [arrayStrings[x+1] isEqual:@"\u103A"] ) {
            result = YES;
        }
        
        
        // Nya + YaPint
        if ([arrayStrings[x] isEqual: @"\u100A"] && [arrayStrings[x+1] isEqual:@"\u103A"] ) {
            result = YES;
        }
        
        // BaKone + YaPint
        if ([arrayStrings[x] isEqual: @"\u1018"] && [arrayStrings[x+1] isEqual:@"\u103A"] ) {
            result = YES;
        }
        
        // YaYint + YayCha
        
        if ([arrayStrings[x] isEqual: @"\u103B"] && [arrayStrings[x+1] isEqual:@"\u102C"] ) {
            result = YES;
        }
        
        // DaDway + YaPint
        
        if ([arrayStrings[x] isEqual: @"\u1012"] && [arrayStrings[x+1] isEqual:@"\u103A"] ) {
            result = YES;
        }
        
        // ThwayHtoe + Athat
        
        if ([arrayStrings[x] isEqual: @"\u1031"] && [arrayStrings[x+1] isEqual:@"\u1039"] ) {
            result = YES;
        }
        
        // ThwayHtoe + YayCha
        
        if ([arrayStrings[x] isEqual: @"\u1031"] && [arrayStrings[x+1] isEqual:@"\u102C"] ) {
            result = YES;
        }
        
        // YayCha + YaPint
        
        if ([arrayStrings[x] isEqual: @"\u102C"] && [arrayStrings[x+1] isEqual:@"\u103A"] ) {
            result = YES;
        }
        
        
#pragma mark 3Chars
        
        // Pa + WaSwale + TaChoungNyin
        
        if ([arrayStrings[x] isEqual: @"\u1015"] && [arrayStrings[x+1] isEqual:@"\u103C"] &&
            [arrayStrings[x+2] isEqual: @"\u103F"]) {
            
            result = YES;
        }
        
        // Pa + HatHtoo + YayCha
        
        if ([arrayStrings[x] isEqual: @"\u1015"] && [arrayStrings[x+1] isEqual:@"\u103D"] &&
            [arrayStrings[x+2] isEqual: @"\u102C"]) {
            
            result = YES;
        }
        
        // Nga + WatSwale + YayCha
        
        if ([arrayStrings[x] isEqual: @"\u1004"] && [arrayStrings[x+1] isEqual:@"\u103C"] &&
            [arrayStrings[x+2] isEqual: @"\u102C"]) {
            
            result = YES;
        }
        
        // La + Ya Pa Lat + Ya Pin
        
        if ([arrayStrings[x] isEqual: @"\u101C"] && [arrayStrings[x+1] isEqual:@"\u101A"] &&
            [arrayStrings[x+2] isEqual: @"\u103A"]) {
            
            result = YES;
        }
        
        // Pa + Da Dwae + Thaway Htoe
        
        if ([arrayStrings[x] isEqual: @"\u1015"] && [arrayStrings[x+1] isEqual:@"\u1012"] &&
            [arrayStrings[x+2] isEqual: @"\u1031"]) {
            
            result = YES;
        }
        
        // Sa + Ka + Yapint
        
        if ([arrayStrings[x] isEqual: @"\u1006"] && [arrayStrings[x+1] isEqual:@"\u1000"] &&
            [arrayStrings[x+2] isEqual: @"\u103A"]) {
            
            result = YES;
        }
        
        // La + Ka + Yapint
        
        if ([arrayStrings[x] isEqual: @"\u101C"] && [arrayStrings[x+1] isEqual:@"\u1000"] &&
            [arrayStrings[x+2] isEqual: @"\u103A"]) {
            
            result = YES;
        }
        
        // Kha + Ha Htoe + Nauk Pyit
        
        if ([arrayStrings[x] isEqual: @"\u1001"] && [arrayStrings[x+1] isEqual:@"\u1087"] &&
            [arrayStrings[x+2] isEqual: @"\u1032"]) {
            
            result = YES;
        }
        
        // Da Dway + Thaway Htoe + Tha
        
        if ([arrayStrings[x] isEqual: @"\u1012"] && [arrayStrings[x+1] isEqual:@"\u1031"] &&
            [arrayStrings[x+2] isEqual: @"\u101E"]) {
            
            result = YES;
        }
        
        // Aa + Yapa Lat + YaPint
        
        if ([arrayStrings[x] isEqual: @"\u1021"] && [arrayStrings[x+1] isEqual:@"\u101A"] &&
            [arrayStrings[x+2] isEqual: @"\u103A"]) {
            
            result = YES;
        }
        
        
#pragma mark 4Chars
        
        // Pha + WaSwale + Sa + YaPint
        
        if ([arrayStrings[x] isEqual: @"\u1016"] && [arrayStrings[x+1] isEqual:@"\u103C"] &&
            [arrayStrings[x+2] isEqual: @"\u1005"] && [arrayStrings[x+3] isEqual:@"\u103A"]) {
            
            result = YES;
        }
        
        // La + TaChaungNgyin + Pa + YaPint
        
        if ([arrayStrings[x] isEqual: @"\u101C"] && [arrayStrings[x+1] isEqual:@"\u102F"] &&
            [arrayStrings[x+2] isEqual: @"\u1015"] && [arrayStrings[x+3] isEqual:@"\u103A"]) {
            
            result = YES;
        }
        
        // Pa + Lonegyi Tin + TaWinPu + YaPint
        
        if ([arrayStrings[x] isEqual: @"\u1015"] && [arrayStrings[x+1] isEqual:@"\u102D"] &&
            [arrayStrings[x+2] isEqual: @"\u1010"] && [arrayStrings[x+3] isEqual:@"\u103A"]) {
            
            result = YES;
        }
        
        
        
    }
    
    
    return result;
    
}
@end
