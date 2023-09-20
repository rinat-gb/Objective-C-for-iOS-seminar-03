//
//  Patient.h
//  Hospital
//
//  Created by Ринат on 20.09.2023.
//

#import <Foundation/Foundation.h>
#import "DoctorProtocol.h"
#import "PatientProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Patient : NSObject <PatientProtocol>

@property(nonatomic, readonly) NSString *name;
@property(nonatomic, readwrite) id<DoctorProtocol> doctor;

- (instancetype)initWithName:(NSString *)name;
- (void)eatPills;
- (void)appointmentDoctor:(id<DoctorProtocol>)doctor;
- (BOOL)visitDoctor;

@end

NS_ASSUME_NONNULL_END
