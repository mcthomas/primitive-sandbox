#include "primitiveDisplayModal.h"
#include <string>

using namespace std;

PrimitiveDisplayModal::PrimitiveDisplayModal(const string& sizerSliderName, float sizerSliderDefaultVal, float sizerSliderMinVal, float sizerSliderMaxVal, float sizerSliderWidth, float sizerSliderHeight, const string& colorSliderName, float colorSliderDefaultVal, float colorSliderMinVal, float colorSliderMaxVal, float colorSliderWidth, float colorSliderHeight) : sizerSliderName(sizerSliderName), sizerSliderDefaultVal(sizerSliderDefaultVal), sizerSliderMinVal(sizerSliderMinVal), sizerSliderMaxVal(sizerSliderMaxVal), sizerSliderWidth(sizerSliderWidth), sizerSliderHeight(sizerSliderHeight), colorSliderName(colorSliderName), colorSliderDefaultVal(colorSliderDefaultVal), colorSliderMinVal(colorSliderMinVal), colorSliderMaxVal(colorSliderMaxVal), colorSliderWidth(colorSliderWidth), colorSliderHeight(colorSliderHeight) {
	return;
}
void PrimitiveDisplayModal::setup(ofxPanel* gui) {
	gui->add(this->sizerSliderRef.setup(this->sizerSliderName, this->sizerSliderDefaultVal, this->sizerSliderMinVal, this->sizerSliderMaxVal, this->sizerSliderWidth, this->sizerSliderHeight));
	gui->add(this->colorSliderRef.setup(this->colorSliderName, this->colorSliderDefaultVal, this->colorSliderMinVal, this->colorSliderMaxVal, this->colorSliderWidth, this->colorSliderHeight));
	return;
}
