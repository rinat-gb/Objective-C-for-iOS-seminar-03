//
//  Doctor.m
//  Hospital
//
//  Created by Ринат on 20.09.2023.
//

#import "Doctor.h"

@implementation Doctor

- (void)givePills:(id<PatientProtocol>)toWhom {
    toWhom.havePills = YES;
    NSLog(@"Я доктор, я только что назначил пациенту по имени %@ таблетки.",
          toWhom);
}

@end
