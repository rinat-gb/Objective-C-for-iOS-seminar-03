//
//  main.m
//  Hospital
//
//  Created by Ринат on 20.09.2023.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        // создаём доктора и пациента
        Doctor *doctor = [Doctor new];
        Patient *patientVasya = [[Patient alloc] initWithName:@"Вася Васин"];
        
        // не должен есть, ещё не записался к доктору
        [patientVasya eatPills];
        
        // записывается к доктору
        [patientVasya appointmentDoctor:doctor];
        
        // не должен есть, записался, но доктора ещё не посетил
        [patientVasya eatPills];
        
        // посещает доктора
        [patientVasya visitDoctor];
        
        // вот тепер принимает таблетки
        [patientVasya eatPills];
    }
    return 0;
}
