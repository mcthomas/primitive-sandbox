#include "cone.h"

using namespace std;

Cone::Cone(float x, float y, float z, float size, const array<float,3>& color) : Model(x, y, z, size, color) {
	setRadiusHeight();
	return;
}
void Cone::setSize(float size) {
	this->size = size;
	setRadiusHeight();
	return;
}
void Cone::setRadiusHeight() {
	this->radius = this->size / 2;
	this->height = this->size * .75;
	return;
}
float Cone::getRadius() {
	return this->radius;
}
float Cone::getHeight() {
	return this->height;
}
