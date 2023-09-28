#include "box.h"

using namespace std;

Box::Box(float x, float y, float z, float size, const array<float,3>& color) : Model(x, y, z, size, color) {
	return;
}
void Box::setSize(float size) {
	this->size = size;
	return;
}
