#pragma once

#include "ofxiOS.h"
#include "ofxGui.h"
#include "handler/handler.h"

class ofApp : public ofxiOSApp {
	
	public:
		void setup();
		void update();
		void draw();
		ofxFloatSlider radius;
		ofxPanel gui;
	private:
		Handler handler;
};


