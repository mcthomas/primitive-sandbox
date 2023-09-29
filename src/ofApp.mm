#include "ofApp.h"

ofBoxPrimitive box;

//--------------------------------------------------------------
void ofApp::setup(){
	handler.setup();
	return;
}

//--------------------------------------------------------------
void ofApp::update(){
	handler.update();
	return;
}

//--------------------------------------------------------------
void ofApp::draw(){
	handler.draw();
	return;
}

void ofApp::touchUp(ofTouchEventArgs & touch){
	handler.touch();
	return;
}
