#include "sphere.h"

using namespace std;

Sphere::Sphere(float x, float y, float z, float size, const array<float,3>& color) : Model(x, y, z, size, color) {
	setRadiusHeight();
	return;
}
void Sphere::setSize(float size) {
	this->size = size;
	setRadiusHeight();
	return;
}
void Sphere::setRadiusHeight() {
	this->radius = this->size / 2;
	return;
}
float Sphere::getRadius() {
	return this->radius;
}
