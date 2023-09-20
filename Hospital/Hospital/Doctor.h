//
//  Doctor.h
//  Hospital
//
//  Created by Ринат on 20.09.2023.
//

#import <Foundation/Foundation.h>
#import "DoctorProtocol.h"
#import "PatientProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject <DoctorProtocol>

- (void)givePills:(id<PatientProtocol>)toWhom;

@end

NS_ASSUME_NONNULL_END
