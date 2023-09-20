//
//  Patient.m
//  Hospital
//
//  Created by Ринат on 20.09.2023.
//

#import "Patient.h"

@implementation Patient

@synthesize havePills;

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
        _doctor = nil;
        havePills = NO;
    }
    return self;
}

- (void)eatPills {
    if (havePills == NO)
        NSLog(@"Меня зовут %@, я болею, но у доктора ещё не был", self);
    else
        NSLog(@"Меня зовут %@, теперь я принимаю таблетки!", self);
}

- (void)appointmentDoctor:(id<DoctorProtocol>)doctor {
    _doctor = doctor;
    NSLog(@"Меня зовут %@, я записался к доктору!", self);
}

- (BOOL)visitDoctor {
    if (_doctor == nil) {
        NSLog(@"Меня зовут %@, я ещё не записался к доктору...", self);
        return NO;
    } else {
        NSLog(@"Меня зовут %@, я иду к доктору!..", self);
        [_doctor givePills:self];
        return YES;
    }
}

- (NSString *)description {
    return _name;
}

@end
