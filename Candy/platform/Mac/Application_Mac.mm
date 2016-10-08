//
//  Application_Mac.cpp
//  Candy
//
//  Created by Dongyang.Cai on 26/09/2016.
//
//

#include "platform/PlatformConfig.h"

#if DY_TARGET_PLATFORM == DY_PLATFORM_MAC

#include "platform/Application.h"
#include "platform/Mac/GLView_Mac.h"

#include "glfw3.h"

#include <assert.h>

NS_DY_BEGIN

Application* Application::s_application = nullptr;

Application::Application()
{
    assert(!s_application);
    s_application = this;
}

Application::~Application()
{
    assert(s_application == this);
    s_application = 0;
}

Application* Application::getInstance()
{
    assert(s_application);
    return s_application;
}

int Application::run()
{
    auto view = GLView::create("Candy", Rect(0, 0, 640, 480));
    
    return 0;
}

NS_DY_END

#endif
