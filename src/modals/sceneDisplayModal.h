#pragma once
#include "ofxGui.h"
#include "displayModal.mm"
#include <string>

using namespace std;

class SceneDisplayModal : DisplayModel {
public:
	const string sizerSliderName;
	const float sizerSliderDefaultVal;
	const float sizerSliderMinVal;
	const float sizerSliderMaxVal;
	const float sizerSliderWidth;
	const float sizerSliderHeight;
	const ofxFloatSlider* sizerSliderRef;
	const string colorSliderName;
	const float colorSliderDefaultVal;
	const float colorSliderMinVal;
	const float colorSliderMaxVal;
	const float colorSliderWidth;
	const float colorSliderHeight;
	const ofxFloatSlider* colorSliderRef;
	const string counterSliderName;
	const float counterSliderDefaultVal;
	const float counterSliderMinVal;
	const float counterSliderMaxVal;
	const float counterSliderWidth;
	const float counterSliderHeight;
	const ofxFloatSlider* counterSliderRef;
	SceneDisplayModal(string counterSliderName, float counterSliderDefaultVal, float counterSliderMinVal, float counterSliderMaxVal, float counterSliderWidth, float counterSliderHeight, string sizerSliderName, float sizerSliderDefaultVal, float sizerSliderMinVal, float sizerSliderMaxVal, float sizerSliderWidth, float sizerSliderHeight, string colorSliderName, float colorSliderDefaultVal, float colorSliderMinVal, float colorSliderMaxVal, float colorSliderWidth, float colorSliderHeight);
	void setup();
};
