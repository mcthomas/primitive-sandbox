#pragma once
#include "ofxGui.h"
#include "displayModal.mm"
#include "../models/model.h"
#include <string>

using namespace std;

class PrimitiveDisplayModal : DisplayModel {
public:
	const string sizerSliderName;
	const float sizerSliderDefaultVal;
	const float sizerSliderMinVal;
	const float sizerSliderMaxVal;
	const float sizerSliderWidth;
	const float sizerSliderHeight;
	ofxFloatSlider sizerSliderRef;
	const string colorSliderName;
	const float colorSliderDefaultVal;
	const float colorSliderMinVal;
	const float colorSliderMaxVal;
	const float colorSliderWidth;
	const float colorSliderHeight;
	ofxFloatSlider colorSliderRef;
	Model* currentModel;
	PrimitiveDisplayModal(const string& sizerSliderName, float sizerSliderDefaultVal, float sizerSliderMinVal, float sizerSliderMaxVal, float sizerSliderWidth, float sizerSliderHeight, const string& colorSliderName, float colorSliderDefaultVal, float colorSliderMinVal, float colorSliderMaxVal, float colorSliderWidth, float colorSliderHeight);
	void setup(ofxPanel* gui);
};
