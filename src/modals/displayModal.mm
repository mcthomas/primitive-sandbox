#pragma once

#include "ofxGui.h"

class DisplayModel {
public:
	DisplayModel(){}
	virtual ~DisplayModel(){}
	virtual void setup(ofxPanel* gui) = 0;
};
