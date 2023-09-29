#pragma once

#include "ofxiOS.h"
#include "handler/handler.h"

class ofApp : public ofxiOSApp {
	
	public:
		void setup();
		void update();
		void draw();
		void touchUp(ofTouchEventArgs & touch);
		//ofxFloatSlider radius;
		//ofxPanel gui;
	private:
		Handler handler;
};


