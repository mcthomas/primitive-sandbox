#include "sceneDisplayModal.h"
#include <string>

using namespace std;

SceneDisplayModal::SceneDisplayModal(string counterSliderName, float counterSliderDefaultVal, float counterSliderMinVal, float counterSliderMaxVal, float counterSliderWidth, float counterSliderHeight, string sizerSliderName, float sizerSliderDefaultVal, float sizerSliderMinVal, float sizerSliderMaxVal, float sizerSliderWidth, float sizerSliderHeight, string colorSliderName, float colorSliderDefaultVal, float colorSliderMinVal, float colorSliderMaxVal, float colorSliderWidth, float colorSliderHeight) : counterSliderName(counterSliderName), counterSliderDefaultVal(counterSliderDefaultVal), counterSliderMinVal(counterSliderMinVal), counterSliderMaxVal(counterSliderMaxVal), counterSliderWidth(counterSliderWidth), counterSliderHeight(counterSliderHeight), sizerSliderName(sizerSliderName), sizerSliderDefaultVal(sizerSliderDefaultVal), sizerSliderMinVal(sizerSliderMinVal), sizerSliderMaxVal(sizerSliderMaxVal), sizerSliderWidth(sizerSliderWidth), sizerSliderHeight(sizerSliderHeight), colorSliderName(colorSliderName), colorSliderDefaultVal(colorSliderDefaultVal), colorSliderMinVal(colorSliderMinVal), colorSliderMaxVal(colorSliderMaxVal), colorSliderWidth(colorSliderWidth), colorSliderHeight(colorSliderHeight) {
		this->sizerSliderRef = 0;
		this->colorSliderRef = 0;
		this->counterSliderRef = 0;
}
void SceneDisplayModal::setup() {
	
}
