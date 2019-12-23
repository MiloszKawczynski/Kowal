//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 OC = texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (v_vTexcoord.y+(v_vTexcoord.x*0.25)>0.25)
	{
		OC.rgb=vec3(0.0,1.0,0.0);
	}
	
	gl_FragColor = OC;
}
