#pragma once
#include "ofxGui.h"
#include "displayModal.mm"
#include <string>

using namespace std;

class SceneDisplayModal : DisplayModel {
private:
	string modelType;
public:
	const string modelBtnName;
	const float modelBtnWidth;
	const float modelBtnHeight;
	ofxButton modelBtnRef;
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
	const string counterSliderName;
	const float counterSliderDefaultVal;
	const float counterSliderMinVal;
	const float counterSliderMaxVal;
	const float counterSliderWidth;
	const float counterSliderHeight;
	ofxFloatSlider counterSliderRef;
	SceneDisplayModal(const string& modelBtnName, float modelBtnWidth, float modelBtnHeight, const string& counterSliderName, float counterSliderDefaultVal, float counterSliderMinVal, float counterSliderMaxVal, float counterSliderWidth, float counterSliderHeight, const string& sizerSliderName, float sizerSliderDefaultVal, float sizerSliderMinVal, float sizerSliderMaxVal, float sizerSliderWidth, float sizerSliderHeight, const string& colorSliderName, float colorSliderDefaultVal, float colorSliderMinVal, float colorSliderMaxVal, float colorSliderWidth, float colorSliderHeight);
	void setup(ofxPanel* gui);
	string getModelType();
	void setModelType(string modelType);
};
