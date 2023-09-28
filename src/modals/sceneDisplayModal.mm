#include "sceneDisplayModal.h"
#include <string>

using namespace std;

SceneDisplayModal::SceneDisplayModal(const string& modelBtnName, float modelBtnWidth, float modelBtnHeight, const string& counterSliderName, float counterSliderDefaultVal, float counterSliderMinVal, float counterSliderMaxVal, float counterSliderWidth, float counterSliderHeight, const string& sizerSliderName, float sizerSliderDefaultVal, float sizerSliderMinVal, float sizerSliderMaxVal, float sizerSliderWidth, float sizerSliderHeight, const string& colorSliderName, float colorSliderDefaultVal, float colorSliderMinVal, float colorSliderMaxVal, float colorSliderWidth, float colorSliderHeight) : modelBtnName(modelBtnName), modelBtnWidth(modelBtnWidth), modelBtnHeight(modelBtnHeight), counterSliderName(counterSliderName), counterSliderDefaultVal(counterSliderDefaultVal), counterSliderMinVal(counterSliderMinVal), counterSliderMaxVal(counterSliderMaxVal), counterSliderWidth(counterSliderWidth), counterSliderHeight(counterSliderHeight), sizerSliderName(sizerSliderName), sizerSliderDefaultVal(sizerSliderDefaultVal), sizerSliderMinVal(sizerSliderMinVal), sizerSliderMaxVal(sizerSliderMaxVal), sizerSliderWidth(sizerSliderWidth), sizerSliderHeight(sizerSliderHeight), colorSliderName(colorSliderName), colorSliderDefaultVal(colorSliderDefaultVal), colorSliderMinVal(colorSliderMinVal), colorSliderMaxVal(colorSliderMaxVal), colorSliderWidth(colorSliderWidth), colorSliderHeight(colorSliderHeight) {
	this->currBtnVal = false;
	this->model1 = new ModelSelection{"box", nullptr};
	this->model2 = new ModelSelection{"cone", nullptr};
	this->model3 = new ModelSelection{"cylinder", nullptr};
	this->model4 = new ModelSelection{"sphere", nullptr};
	this->model1->next = this->model2;
	this->model2->next = this->model3;
	this->model3->next = this->model4;
	this->model4->next = this->model1;
	this->modelType = model1;
}
void SceneDisplayModal::setup(ofxPanel* gui) {
	gui->add(this->modelBtnRef.setup(this->modelBtnName, this->modelBtnWidth, this->modelBtnHeight));
	gui->add(this->counterSliderRef.setup(this->counterSliderName, this->counterSliderDefaultVal, this->counterSliderMinVal, this->counterSliderMaxVal, this->counterSliderWidth, this->counterSliderHeight));
	gui->add(this->sizerSliderRef.setup(this->sizerSliderName, this->sizerSliderDefaultVal, this->sizerSliderMinVal, this->sizerSliderMaxVal, this->sizerSliderWidth, this->sizerSliderHeight));
	gui->add(this->colorSliderRef.setup(this->colorSliderName, this->colorSliderDefaultVal, this->colorSliderMinVal, this->colorSliderMaxVal, this->colorSliderWidth, this->colorSliderHeight));
	return;
}
string SceneDisplayModal::getModelType() {
	return this->modelType->model;
}
void SceneDisplayModal::checkBtnPressed() {
	if(this->modelBtnRef) {
		this->currBtnVal = true;
	}
	else {
		if(this->currBtnVal == true) {
			this->currBtnVal = false;
			this->toggleModelType();
		}
	}
	return;
}
void SceneDisplayModal::toggleModelType() {
	this->modelType = this->modelType->next;
}
