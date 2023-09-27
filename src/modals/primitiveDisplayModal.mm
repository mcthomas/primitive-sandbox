#include "primitiveDisplayModal.h"
#include <string>

using namespace std;

PrimitiveDisplayModal::PrimitiveDisplayModal(string sizerSliderName, float sizerSliderDefaultVal, float sizerSliderMinVal, float sizerSliderMaxVal, float sizerSliderWidth, float sizerSliderHeight, string colorSliderName, float colorSliderDefaultVal, float colorSliderMinVal, float colorSliderMaxVal, float colorSliderWidth, float colorSliderHeight) : sizerSliderName(sizerSliderName), sizerSliderDefaultVal(sizerSliderDefaultVal), sizerSliderMinVal(sizerSliderMinVal), sizerSliderMaxVal(sizerSliderMaxVal), sizerSliderWidth(sizerSliderWidth), sizerSliderHeight(sizerSliderHeight), colorSliderName(colorSliderName), colorSliderDefaultVal(colorSliderDefaultVal), colorSliderMinVal(colorSliderMinVal), colorSliderMaxVal(colorSliderMaxVal), colorSliderWidth(colorSliderWidth), colorSliderHeight(colorSliderHeight) {
	this->sizerSliderRef = 0;
	this->colorSliderRef = 0;
	this->currentModel = 0;
}
void PrimitiveDisplayModal::setup() {
	
}
