//
//  ApplicationProtocol.h
//  Candy
//
//  Created by Dongyang.Cai on 26/09/2016.
//
//

#ifndef ApplicationProtocol_h
#define ApplicationProtocol_h

#include "platform/PlatformMacros.h"

NS_DY_BEGIN

class ApplicationProtocol {
public:
    
    /**
     Application destructor.
     */
    virtual ~ApplicationProtocol() {
        
    }
    
    /**
     Application run loop.
     
     @return bool   true: Application run success.
     false: Application run failed.
     */
    virtual bool run();
};

NS_DY_END

#endif /* ApplicationProtocol_h */