#include "sceneDisplayModal.h"
#include <string>

using namespace std;

SceneDisplayModal::SceneDisplayModal(const string& modelBtnName, float modelBtnWidth, float modelBtnHeight, const string& counterSliderName, float counterSliderDefaultVal, float counterSliderMinVal, float counterSliderMaxVal, float counterSliderWidth, float counterSliderHeight, const string& sizerSliderName, float sizerSliderDefaultVal, float sizerSliderMinVal, float sizerSliderMaxVal, float sizerSliderWidth, float sizerSliderHeight, const string& colorSliderName, float colorSliderDefaultVal, float colorSliderMinVal, float colorSliderMaxVal, float colorSliderWidth, float colorSliderHeight) : modelBtnName(modelBtnName), modelBtnWidth(modelBtnWidth), modelBtnHeight(modelBtnHeight), counterSliderName(counterSliderName), counterSliderDefaultVal(counterSliderDefaultVal), counterSliderMinVal(counterSliderMinVal), counterSliderMaxVal(counterSliderMaxVal), counterSliderWidth(counterSliderWidth), counterSliderHeight(counterSliderHeight), sizerSliderName(sizerSliderName), sizerSliderDefaultVal(sizerSliderDefaultVal), sizerSliderMinVal(sizerSliderMinVal), sizerSliderMaxVal(sizerSliderMaxVal), sizerSliderWidth(sizerSliderWidth), sizerSliderHeight(sizerSliderHeight), colorSliderName(colorSliderName), colorSliderDefaultVal(colorSliderDefaultVal), colorSliderMinVal(colorSliderMinVal), colorSliderMaxVal(colorSliderMaxVal), colorSliderWidth(colorSliderWidth), colorSliderHeight(colorSliderHeight) {
	this->modelType = "Box";
}
void SceneDisplayModal::setup(ofxPanel* gui) {
	gui->add(this->modelBtnRef.setup(this->modelBtnName, this->modelBtnWidth, this->modelBtnHeight));
	gui->add(this->counterSliderRef.setup(this->counterSliderName, this->counterSliderDefaultVal, this->counterSliderMinVal, this->counterSliderMaxVal, this->counterSliderWidth, this->counterSliderHeight));
	gui->add(this->sizerSliderRef.setup(this->sizerSliderName, this->sizerSliderDefaultVal, this->sizerSliderMinVal, this->sizerSliderMaxVal, this->sizerSliderWidth, this->sizerSliderHeight));
	gui->add(this->colorSliderRef.setup(this->colorSliderName, this->colorSliderDefaultVal, this->colorSliderMinVal, this->colorSliderMaxVal, this->colorSliderWidth, this->colorSliderHeight));
	return;
}
string SceneDisplayModal::getModelType() {
	return this->modelType;
}
void SceneDisplayModal::setModelType(string modelType) {
	this->modelType = modelType;
	return;
}
