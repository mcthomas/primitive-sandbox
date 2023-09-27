#pragma once
#include "displayModal.mm"
#include <string>

using namespace std;

class PrimitiveDisplayModal : DisplayModel {
public:
	string name;
	float defaultVal;
	float minVal;
	float maxVal;
	float width;
	float height;
	PrimitiveDisplayModal();
	void setup();
};
