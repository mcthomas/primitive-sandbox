#include "cylinder.h"

using namespace std;

Cylinder::Cylinder(float x, float y, float z, float size, const array<float,3>& color) : Model(x, y, z, size, color) {
	setRadiusHeight();
	return;
}
void Cylinder::setSize(float size) {
	this->size = size;
	setRadiusHeight();
	return;
}
void Cylinder::setRadiusHeight() {
	this->radius = this->size / 2;
	this->height = this->size * .75;
	return;
}
float Cylinder::getRadius() {
	return this->radius;
}
float Cylinder::getHeight() {
	return this->height;
}
