#pragma once
#include "light.h"

class spotLight : public light
{
public:
	spotLight(glm::vec3 lightP);
	~spotLight();
	glm::vec3 k; //Coeficientes de atenuaci�n
	float cuttof; //Angulo de apertura
	float outerCuttof; //Angulo del segundo cono para la atenuaci�n
	void setKAttenuation(glm::vec3 K);
	glm::vec3 getKAttenuation();
	void setCuttof(float K);
	float getCuttof();
	void setOuterCuttof(float K);
	float getOuterCuttof();

private:

};