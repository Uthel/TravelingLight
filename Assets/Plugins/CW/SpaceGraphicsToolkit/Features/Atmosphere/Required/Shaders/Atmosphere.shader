//<HASH>1689650083</HASH>
////////////////////////////////////////
// Generated with Better Shaders
//
// Auto-generated shader code, don't hand edit!
//
//   Unity Version: 2019.4.12f1
//   Render Pipeline: HDRP2021
//   Platform: WindowsEditor
////////////////////////////////////////


Shader "Space Graphics Toolkit/Atmosphere"
{
   Properties
   {
      






	[NoScaleOffset] _SGT_InnerDepthTex("Inner Depth Tex", 2D) = "white" {}
	[NoScaleOffset] _SGT_OuterDepthTex("Outer Depth Tex", 2D) = "white" {}

	[Header(LIGHTING)]
	[Toggle(_SGT_LIGHTING)] _SGT_Lighting ("	Enable", Float) = 0
	_SGT_AmbientColor("	Ambient Color", Color) = (0,0,0)
	[NoScaleOffset] _SGT_LightingTex("	Lighting Tex", 2D) = "white" {}

	[Header(LIGHTING SCATTERING)]
	[Toggle(_SGT_SCATTERING)] _SGT_Scattering ("	Enable", Float) = 0
	_SGT_ScatteringTerms("	Scattering Terms", Vector) = (500, 100, 2, -2)
	_SGT_ScatteringInner("	Scattering Inner", Vector) = (0.5, 0.25, 0.25, 0.1)
	_SGT_ScatteringOuter("	Scattering Outer", Vector) = (0.5, 0.25, 0.25, 0.1)
	[NoScaleOffset] _SGT_ScatteringTex("	Scattering Tex", 2D) = "white" {}

	[Header(LIGHTING SCATTERING HDR)]
	[Toggle(_SGT_HDR)] _SGT_Hdr ("	Enable", Float) = 0


    [Header(UNITY FOG)]
    [Toggle(DISABLEFOG)] _CW_DisableFog("	Disable", Float) = 0


	[Header(HDRP Options)]
	[ToggleOff(_TRANSPARENT_WRITES_MOTION_VEC)] _CW_DisableTransparentMV("	Disable Transparent Write Motion Vector", Float) = 0
	[ToggleOff(_ENABLE_FOG_ON_TRANSPARENT)] _CW_DisableTransparentFog("	Disable Transparent Fog", Float) = 0
	[Toggle(_ADD_PRECOMPUTED_VELOCITY)] _CW_AddPrecomputedVelocity("	Add Precomputed Velocity", Float) = 0
	[Toggle(_DISABLE_DECALS)] _CW_DisableDecals("	Disable Decals", Float) = 0
	[Toggle(_DISABLE_SSR)] _CW_DisableSSR("	Disable SSR", Float) = 0
	[Toggle(_DISABLE_SSR_TRANSPARENT)] _CW_DisableSSRTransparent("	Disable Transparent SSR", Float) = 0
	[KeywordEnum(Off, Plane, Sphere, Thin)] _CW_Refraction ("	Refraction", Float) = 0 



      [HideInInspector]_RenderQueueType("Float", Float) = 1
      [HideInInspector][ToggleUI]_AddPrecomputedVelocity("Boolean", Float) = 0
      [HideInInspector][ToggleUI]_DepthOffsetEnable("Boolean", Float) = 0
      [HideInInspector][ToggleUI]_TransparentWritingMotionVec("Boolean", Float) = 0
      [HideInInspector][ToggleUI]_AlphaCutoffEnable("Boolean", Float) = 0
      [HideInInspector]_TransparentSortPriority("_TransparentSortPriority", Float) = 0
      [HideInInspector][ToggleUI]_UseShadowThreshold("Boolean", Float) = 0
      [HideInInspector][ToggleUI]_TransparentDepthPrepassEnable("Boolean", Float) = 0
      [HideInInspector][ToggleUI]_TransparentDepthPostpassEnable("Boolean", Float) = 0
      [HideInInspector]_SurfaceType("Float", Float) = 0
      [HideInInspector]_BlendMode("Float", Float) = 0
      [HideInInspector]_SrcBlend("Float", Float) = 1
      [HideInInspector]_DstBlend("Float", Float) = 0
      [HideInInspector]_AlphaSrcBlend("Float", Float) = 1
      [HideInInspector]_AlphaDstBlend("Float", Float) = 0
      [HideInInspector][ToggleUI]_AlphaToMask("Boolean", Float) = 0
      [HideInInspector][ToggleUI]_AlphaToMaskInspectorValue("Boolean", Float) = 0
      [HideInInspector][ToggleUI]_ZWrite("Boolean", Float) = 1
      [HideInInspector][ToggleUI]_TransparentZWrite("Boolean", Float) = 0
      [HideInInspector][ToggleUI]_EnableFogOnTransparent("Boolean", Float) = 1
      [HideInInspector]_ZTestDepthEqualForOpaque("Float", Int) = 4
      [HideInInspector][Enum(UnityEngine.Rendering.CompareFunction)]_ZTestTransparent("Float", Float) = 4
      [HideInInspector][ToggleUI]_TransparentBackfaceEnable("Boolean", Float) = 0
      [HideInInspector][ToggleUI]_RequireSplitLighting("Boolean", Float) = 0
      [HideInInspector][ToggleUI]_ReceivesSSR("Boolean", Float) = 1
      [HideInInspector][ToggleUI]_ReceivesSSRTransparent("Boolean", Float) = 0
      [HideInInspector][ToggleUI]_EnableBlendModePreserveSpecularLighting("Boolean", Float) = 1
      [HideInInspector][ToggleUI]_SupportDecals("Boolean", Float) = 1
      [HideInInspector]_StencilRef("Float", Int) = 0
      [HideInInspector]_StencilWriteMask("Float", Int) = 6
      [HideInInspector]_StencilRefDepth("Float", Int) = 8
      [HideInInspector]_StencilWriteMaskDepth("Float", Int) = 8
      [HideInInspector]_StencilRefMV("Float", Int) = 40
      [HideInInspector]_StencilWriteMaskMV("Float", Int) = 40
      [HideInInspector]_StencilRefDistortionVec("Float", Int) = 4
      [HideInInspector]_StencilWriteMaskDistortionVec("Float", Int) = 4
      [HideInInspector]_StencilWriteMaskGBuffer("Float", Int) = 14
      [HideInInspector]_StencilRefGBuffer("Float", Int) = 10
      [HideInInspector]_ZTestGBuffer("Float", Int) = 4
      [HideInInspector][ToggleUI]_RayTracing("Boolean", Float) = 0
      [HideInInspector][Enum(None, 0, Box, 1, Sphere, 2, Thin, 3)]_RefractionModel("Float", Float) = 0
      [HideInInspector][NoScaleOffset]unity_Lightmaps("unity_Lightmaps", 2DArray) = "" {}
      [HideInInspector][NoScaleOffset]unity_LightmapsInd("unity_LightmapsInd", 2DArray) = "" {}
      [HideInInspector][NoScaleOffset]unity_ShadowMasks("unity_ShadowMasks", 2DArray) = "" {}
   }
   SubShader
   {
      Tags { "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDLitShader" "Queue" = "Transparent" }

      
              Pass
        {
            Name "ForwardOnly"
                Tags
                {
                    "LightMode" = "ForwardOnly"
                }
            Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
Cull Back
 ZTest LEqual
ZWrite Off
            
            Stencil
            {
               WriteMask [_StencilWriteMask]
               Ref [_StencilRef]
               Comp Always
               Pass Replace
            }
        
            ColorMask [_ColorMaskTransparentVel] 1

            	Cull [_SGT_Cull]

            
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch
            #pragma multi_compile_instancing
            #pragma instancing_options renderinglayer


            //#pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
            //#pragma shader_feature_local _BLENDMODE_OFF _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
            //#pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
            //#pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            //#pragma shader_feature_local _ _ENABLE_FOG_ON_TRANSPARENT
            #pragma multi_compile _ DEBUG_DISPLAY
                
        

            #define SHADERPASS SHADERPASS_FORWARD_UNLIT
            #define RAYTRACING_SHADER_GRAPH_DEFAULT

            #define SHADER_UNLIT
            #define _PASSUNLIT 1

            #if defined(_ENABLE_SHADOW_MATTE) && SHADERPASS == SHADERPASS_FORWARD_UNLIT
            #define LIGHTLOOP_DISABLE_TILE_AND_CLUSTER
            #define HAS_LIGHTLOOP
            #endif
            
            
	#define __SGT_LIGHTANDSHADOW 1
	#define SGT_MAX_LIGHTS 16
	#define SGT_MAX_SPHERE_SHADOWS 16
	#define SGT_MAX_RING_SHADOWS 1


	#define __SGT_MATRIX 1


	#define __SGT_OUTPUT 1


	#pragma shader_feature_local _SGT_LIGHTING
	#pragma shader_feature_local _SGT_SCATTERING
	#pragma shader_feature_local _SGT_HDR
	#pragma multi_compile_local _ _SGT_OUTER
	#pragma multi_compile_local _ _SGT_SOFTNESS


    #pragma shader_feature_local DISABLEFOG    


	#pragma shader_feature_local _ADD_PRECOMPUTED_VELOCITY
	#pragma shader_feature_local _TRANSPARENT_WRITES_MOTION_VEC
	#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
	#pragma shader_feature_local _DISABLE_DECALS
	#pragma shader_feature_local _DISABLE_SSR
	#pragma shader_feature_local _DISABLE_SSR_TRANSPARENT
	#pragma shader_feature_local _REFRACTION_OFF _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN         


   #define _HDRP 1
#define _BLENDMODE_ALPHA 1
#define _SURFACE_TYPE_TRANSPARENT 1

#define _UNLIT 1
#define REQUIRE_DEPTH_TEXTURE
#define _USINGTEXCOORD1 1
#define _USINGTEXCOORD2 1


               #pragma vertex Vert
   #pragma fragment Frag

                  // useful conversion functions to make surface shader code just work

      #define UNITY_DECLARE_TEX2D(name) TEXTURE2D(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2D_NOSAMPLER(name) TEXTURE2D(name);
      #define UNITY_DECLARE_TEX2DARRAY(name) TEXTURE2D_ARRAY(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(tex) TEXTURE2D_ARRAY(tex);

      #define UNITY_SAMPLE_TEX2DARRAY(tex,coord)            SAMPLE_TEXTURE2D_ARRAY(tex, sampler##tex, coord.xy, coord.z)
      #define UNITY_SAMPLE_TEX2DARRAY_LOD(tex,coord,lod)    SAMPLE_TEXTURE2D_ARRAY_LOD(tex, sampler##tex, coord.xy, coord.z, lod)
      #define UNITY_SAMPLE_TEX2D(tex, coord)                SAMPLE_TEXTURE2D(tex, sampler##tex, coord)
      #define UNITY_SAMPLE_TEX2D_SAMPLER(tex, samp, coord)  SAMPLE_TEXTURE2D(tex, sampler##samp, coord)

      #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod)   SAMPLE_TEXTURE2D_LOD(tex, sampler_##tex, coord, lod)
      #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) SAMPLE_TEXTURE2D_LOD (tex, sampler##samplertex,coord, lod)

      #if defined(UNITY_COMPILER_HLSL)
         #define UNITY_INITIALIZE_OUTPUT(type,name) name = (type)0;
      #else
         #define UNITY_INITIALIZE_OUTPUT(type,name)
      #endif

      #define sampler2D_float sampler2D
      #define sampler2D_half sampler2D

      #undef WorldNormalVector
      #define WorldNormalVector(data, normal) mul(normal, data.TBNMatrix)

      #define UnityObjectToWorldNormal(normal) mul(GetObjectToWorldMatrix(), normal)




// HDRP Adapter stuff
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl" // Need to be here for Gradient struct definition

            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT 
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
    
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
    



            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
               #define OUTPUT_SPLIT_LIGHTING
            #endif

            #define HAVE_RECURSIVE_RENDERING

            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
               #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                  #define WRITE_NORMAL_BUFFER
               #endif
            #endif

            #ifndef DEBUG_DISPLAY
               // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
               // Don't do it with debug display mode as it is possible there is no depth prepass in this case
               #if !defined(_SURFACE_TYPE_TRANSPARENT) && defined(_ALPHATEST)
                  #if SHADERPASS == SHADERPASS_FORWARD
                  #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                  #elif SHADERPASS == SHADERPASS_GBUFFER
                  #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                  #endif
               #endif
            #endif

            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
               #define _DEFERRED_CAPABLE_MATERIAL
            #endif
    
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
               #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif




            CBUFFER_START(UnityPerMaterial)
               float _UseShadowThreshold;
               float _BlendMode;
               float _EnableBlendModePreserveSpecularLighting;
               float _RayTracing;
               float _RefractionModel;

              
	int    _SGT_LightCount;
	float4 _SGT_LightColor[SGT_MAX_LIGHTS];
	float4 _SGT_LightPosition[SGT_MAX_LIGHTS];
	float3 _SGT_LightDirection[SGT_MAX_LIGHTS];

	int       _SGT_SphereShadowCount;
	float4x4  _SGT_SphereShadowMatrix[SGT_MAX_SPHERE_SHADOWS];
	float4    _SGT_SphereShadowPower[SGT_MAX_SPHERE_SHADOWS];

	int       _SGT_RingShadowCount;
	sampler2D _SGT_RingShadowTexture;
	float4    _SGT_RingShadowColor[SGT_MAX_RING_SHADOWS];
	float4x4  _SGT_RingShadowMatrix[SGT_MAX_RING_SHADOWS];
	float     _SGT_RingShadowRatio[SGT_MAX_RING_SHADOWS];






	float4    _SGT_Color; // Auto
	float     _SGT_Brightness; // Auto
	sampler2D _SGT_InnerDepthTex;
	sampler2D _SGT_OuterDepthTex;

	float     _SGT_HorizonLengthRecip;
	float     _SGT_Sky;
	float4x4  _SGT_WorldToLocal;
	float4x4  _SGT_LocalToWorld;

	sampler2D _SGT_LightingTex;
	float3    _SGT_AmbientColor;

	float4    _SGT_ScatteringTerms;
	float4    _SGT_ScatteringInner;
	float4    _SGT_ScatteringOuter;
	sampler2D _SGT_ScatteringTex;
	float     _SGT_InnerRatio;
	float     _SGT_InnerScale;

	float _SGT_SoftParticlesFactor; // Auto







            CBUFFER_END
    


             // -- Property used by ScenePickingPass
               #ifdef SCENEPICKINGPASS
               float4 _SelectionID;
               #endif
    
               // -- Properties used by SceneSelectionPass
               #ifdef SCENESELECTIONPASS
               int _ObjectId;
               int _PassValue;
               #endif
  
           
            // data across stages, stripped like the above.
            struct VertexToPixel
            {
               float4 pos : SV_POSITION;
               float3 worldPos : TEXCOORD0;
               float3 worldNormal : TEXCOORD1;
               float4 worldTangent : TEXCOORD2;
               float4 texcoord0 : TEXCOORD3;
               float4 texcoord1 : TEXCOORD4;
               float4 texcoord2 : TEXCOORD5;
               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD6;
               // #endif

               // #if %SCREENPOSREQUIREKEY%
                float4 screenPos : TEXCOORD7;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD12;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD13;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD14;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD15;
               // #endif

               #if UNITY_ANY_INSTANCING_ENABLED
                  uint instanceID : INSTANCEID_SEMANTIC;
               #endif // UNITY_ANY_INSTANCING_ENABLED

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float4 previousPositionCS : TEXCOORD16; // Contain previous transform position (in case of skinning for example)
                  float4 motionVectorCS : TEXCOORD17;
               #endif

               UNITY_VERTEX_OUTPUT_STEREO
            }; 


            // unlike the real pass, we use the lit includes so that the variables aren't all renamed.
            // This allows us to share more pass code at no cost. We also have to include
            // this normalbuffer stuff so that some things compile.

            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/NormalBuffer.hlsl"
               

            
            
            // data describing the user output of a pixel
            struct Surface
            {
               half3 Albedo;
               half Height;
               half3 Normal;
               half Smoothness;
               half3 Emission;
               half Metallic;
               half3 Specular;
               half Occlusion;
               half SpecularPower; // for simple lighting
               half Alpha;
               float outputDepth; // if written, SV_Depth semantic is used. ShaderData.clipPos.z is unused value
               // HDRP Only
               half SpecularOcclusion;
               half SubsurfaceMask;
               half Thickness;
               half CoatMask;
               half CoatSmoothness;
               half Anisotropy;
               half IridescenceMask;
               half IridescenceThickness;
               int DiffusionProfileHash;
               float SpecularAAThreshold;
               float SpecularAAScreenSpaceVariance;
               // requires _OVERRIDE_BAKEDGI to be defined, but is mapped in all pipelines
               float3 DiffuseGI;
               float3 BackDiffuseGI;
               float3 SpecularGI;
               // requires _OVERRIDE_SHADOWMASK to be defines
               float4 ShadowMask;
            };

            // Data the user declares in blackboard blocks
            struct Blackboard
            {
                
                float blackboardDummyData;
            };

            // data the user might need, this will grow to be big. But easy to strip
            struct ShaderData
            {
               float4 clipPos; // SV_POSITION
               float3 localSpacePosition;
               float3 localSpaceNormal;
               float3 localSpaceTangent;
        
               float3 worldSpacePosition;
               float3 worldSpaceNormal;
               float3 worldSpaceTangent;
               float tangentSign;

               float3 worldSpaceViewDir;
               float3 tangentSpaceViewDir;

               float4 texcoord0;
               float4 texcoord1;
               float4 texcoord2;
               float4 texcoord3;

               float2 screenUV;
               float4 screenPos;

               float4 vertexColor;
               bool isFrontFace;

               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;

               float3x3 TBNMatrix;
               Blackboard blackboard;
            };

            struct VertexData
            {
               #if SHADER_TARGET > 30
               // uint vertexID : SV_VertexID;
               #endif
               float4 vertex : POSITION;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;

               // optimize out mesh coords when not in use by user or lighting system
               #if _URP && (_USINGTEXCOORD1 || _PASSMETA || _PASSFORWARD || _PASSGBUFFER)
                  float4 texcoord1 : TEXCOORD1;
               #endif

               #if _URP && (_USINGTEXCOORD2 || _PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && defined(DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif

               #if _STANDARD && (_USINGTEXCOORD1 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER || _PASSFORWARDADD) && LIGHTMAP_ON)))
                  float4 texcoord1 : TEXCOORD1;
               #endif
               #if _STANDARD && (_USINGTEXCOORD2 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif


               #if _HDRP
                  float4 texcoord1 : TEXCOORD1;
                  float4 texcoord2 : TEXCOORD2;
               #endif

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float3 previousPositionOS : TEXCOORD4; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity    : TEXCOORD5; // Add Precomputed Velocity (Alembic computes velocities on runtime side).
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct TessVertex 
            {
               float4 vertex : INTERNALTESSPOS;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;
               float4 texcoord1 : TEXCOORD1;
               float4 texcoord2 : TEXCOORD2;

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD5;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD6;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD7;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD12;
               // #endif

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float3 previousPositionOS : TEXCOORD13; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity : TEXCOORD14;
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
               UNITY_VERTEX_OUTPUT_STEREO
            };

            struct ExtraV2F
            {
               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;
               Blackboard blackboard;
               float4 time;
            };


            float3 WorldToTangentSpace(ShaderData d, float3 normal)
            {
               return mul(d.TBNMatrix, normal);
            }

            float3 TangentToWorldSpace(ShaderData d, float3 normal)
            {
               return mul(normal, d.TBNMatrix);
            }

            // in this case, make standard more like SRPs, because we can't fix
            // unity_WorldToObject in HDRP, since it already does macro-fu there

            #if _STANDARD
               float3 TransformWorldToObject(float3 p) { return mul(unity_WorldToObject, float4(p, 1)); };
               float3 TransformObjectToWorld(float3 p) { return mul(unity_ObjectToWorld, float4(p, 1)); };
               float4 TransformWorldToObject(float4 p) { return mul(unity_WorldToObject, p); };
               float4 TransformObjectToWorld(float4 p) { return mul(unity_ObjectToWorld, p); };
               float4x4 GetWorldToObjectMatrix() { return unity_WorldToObject; }
               float4x4 GetObjectToWorldMatrix() { return unity_ObjectToWorld; }
               #if (defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (SHADER_TARGET_SURFACE_ANALYSIS && !SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod) tex.SampleLevel (sampler##tex,coord, lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) tex.SampleLevel (sampler##samplertex,coord, lod)
              #else
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord,lod) tex2D (tex,coord,0,lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord,lod) tex2D (tex,coord,0,lod)
              #endif

               #undef GetWorldToObjectMatrix()

               #define GetWorldToObjectMatrix()   unity_WorldToObject


            #endif

            float3 GetCameraWorldPosition()
            {
               #if _HDRP
                  return GetCameraRelativePositionWS(_WorldSpaceCameraPos);
               #else
                  return _WorldSpaceCameraPos;
               #endif
            }

            #if _GRABPASSUSED
               #if _STANDARD
                  TEXTURE2D(%GRABTEXTURE%);
                  SAMPLER(sampler_%GRABTEXTURE%);
               #endif

               half3 GetSceneColor(float2 uv)
               {
                  #if _STANDARD
                     return SAMPLE_TEXTURE2D(%GRABTEXTURE%, sampler_%GRABTEXTURE%, uv).rgb;
                  #else
                     return SHADERGRAPH_SAMPLE_SCENE_COLOR(uv);
                  #endif
               }
            #endif


      
            #if _STANDARD
               UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
               float GetSceneDepth(float2 uv) { return SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv)); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv)); } 
            #else
               float GetSceneDepth(float2 uv) { return SHADERGRAPH_SAMPLE_SCENE_DEPTH(uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv), _ZBufferParams); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv), _ZBufferParams); } 
            #endif

            float3 GetWorldPositionFromDepthBuffer(float2 uv, float3 worldSpaceViewDir)
            {
               float eye = GetLinearEyeDepth(uv);
               float3 camView = mul((float3x3)GetObjectToWorldMatrix(), transpose(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V)) [2].xyz);

               float dt = dot(worldSpaceViewDir, camView);
               float3 div = worldSpaceViewDir/dt;
               float3 wpos = (eye * div) + GetCameraWorldPosition();
               return wpos;
            }

            #if _HDRP
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return GetAbsolutePositionWS(TransformObjectToWorld(pos));
            }
            #else
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return TransformObjectToWorld(pos);
            }
            #endif

            #if _STANDARD
               UNITY_DECLARE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture);
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  float4 depthNorms = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture, uv);
                  float3 norms = DecodeViewNormalStereo(depthNorms);
                  norms = mul((float3x3)GetWorldToViewMatrix(), norms) * 0.5 + 0.5;
                  return norms;
               }
            #elif _HDRP
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  NormalData nd;
                  DecodeFromNormalBuffer(_ScreenSize.xy * uv, nd);
                  return nd.normalWS;
               }
            #elif _URP
               #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                  #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareNormalsTexture.hlsl"
               #endif

               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                     return SampleSceneNormals(uv);
                  #else
                     float3 wpos = GetWorldPositionFromDepthBuffer(uv, worldSpaceViewDir);
                     return normalize(-cross(ddx(wpos), ddy(wpos))) * 0.5 + 0.5;
                  #endif

                }
             #endif

             #if _HDRP

               half3 UnpackNormalmapRGorAG(half4 packednormal)
               {
                     // This do the trick
                  packednormal.x *= packednormal.w;

                  half3 normal;
                  normal.xy = packednormal.xy * 2 - 1;
                  normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                  return normal;
               }
               half3 UnpackNormal(half4 packednormal)
               {
                  #if defined(UNITY_NO_DXT5nm)
                     return packednormal.xyz * 2 - 1;
                  #else
                     return UnpackNormalmapRGorAG(packednormal);
                  #endif
               }
               #endif
               #if _HDRP || _URP

               half3 UnpackScaleNormal(half4 packednormal, half scale)
               {
                 #ifndef UNITY_NO_DXT5nm
                   // Unpack normal as DXT5nm (1, y, 1, x) or BC5 (x, y, 0, 1)
                   // Note neutral texture like "bump" is (0, 0, 1, 1) to work with both plain RGB normal and DXT5nm/BC5
                   packednormal.x *= packednormal.w;
                 #endif
                   half3 normal;
                   normal.xy = (packednormal.xy * 2 - 1) * scale;
                   normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                   return normal;
               }	

             #endif


            void GetSun(out float3 lightDir, out float3 color)
            {
               lightDir = float3(0.5, 0.5, 0);
               color = 1;
               #if _HDRP
                  if (_DirectionalLightCount > 0)
                  {
                     DirectionalLightData light = _DirectionalLightDatas[0];
                     lightDir = -light.forward.xyz;
                     color = light.color;
                  }
               #elif _STANDARD
			         lightDir = normalize(_WorldSpaceLightPos0.xyz);
                  color = _LightColor0.rgb;
               #elif _URP
	               Light light = GetMainLight();
	               lightDir = light.direction;
	               color = light.color;
               #endif
            }



            

            

            #ifdef unity_WorldToObject
#undef unity_WorldToObject
#endif
#ifdef unity_ObjectToWorld
#undef unity_ObjectToWorld
#endif
#define unity_ObjectToWorld GetObjectToWorldMatrix()
#define unity_WorldToObject GetWorldToObjectMatrix()

	float SGT_ScatteringPhase(float angle, float4 terms, float4 strengths)
	{
		return dot(pow(saturate(angle * sign(terms)), abs(terms)), strengths);
	}

	float4 SGT_SphereShadowColor(float4x4 shadowMatrix, float4 shadowPower, float4 worldPoint)
	{
		float4 shadowPoint = mul(shadowMatrix, worldPoint);
		float  shadowMag   = length(shadowPoint.xy);

		//shadowMag = 1.0f - (1.0f - shadowMag) * shadowRatio;

		//float4 shadow = 1.0f - pow(1.0f - shadowMag, shadowPower);
		float4 shadow = pow(shadowMag, shadowPower);

		shadow += shadowPoint.z < 0.0f;

		return saturate(shadow);
	}

	float4 SGT_RingShadowColor(float4x4 shadowMatrix, sampler2D shadowSampler, float shadowRatio, float4 worldPoint)
	{
		float4 shadowPoint = mul(shadowMatrix, worldPoint);
		float  shadowMag   = length(shadowPoint.xy);

		shadowMag = 1.0f - (1.0f - shadowMag) * shadowRatio;

		float4 shadow = tex2D(shadowSampler, shadowMag.xx);

		shadow += shadowPoint.z < 0.0f;

		return saturate(shadow);
	}

	float4 SGT_ShadowColor(float3 worldPoint3)
	{
		float4 worldPoint = float4(worldPoint3, 1.0f);
		float4 color      = 1.0f;

		for (int s = 0; s < _SGT_SphereShadowCount; s++)
		{
			color *= SGT_SphereShadowColor(_SGT_SphereShadowMatrix[s], _SGT_SphereShadowPower[s], worldPoint);
		}

		for (int r = 0; r < _SGT_RingShadowCount; r++)
		{
			color *= SGT_RingShadowColor(_SGT_RingShadowMatrix[r], _SGT_RingShadowTexture, _SGT_RingShadowRatio[r], worldPoint);
		}

		return color;
	}


	float4 SGT_O2W(float4 v)
	{
		v = mul(GetObjectToWorldMatrix(), v);
		#if _HDRP
			v.xyz = GetAbsolutePositionWS(v.xyz);
		#endif
		return v;
	}
	float4 SGT_W2O(float4 v)
	{
		#if _HDRP
			v.xyz = GetCameraRelativePositionWS(v.xyz);
		#endif
		return mul(GetWorldToObjectMatrix(), v);
	}

	float4 SGT_O2V(float4 v)
	{
		#if _STANDARD
			return float4(UnityObjectToViewPos(v.xyz), 1.0f);
		#else
			return float4(TransformWorldToView(TransformObjectToWorld(v.xyz)), 1.0f);
		#endif
	}
	float4 SGT_V2O(float4 v)
	{
		return mul(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V), v);
	}

	float4 SGT_W2V(float4 v)
	{
		#if _STANDARD
			return mul(GetWorldToViewMatrix(), v);
		#else
			return float4(TransformWorldToView(v.xyz), 1.0f);
		#endif
	}
	float4 SGT_V2M(float4 v)
	{
		v = mul(UNITY_MATRIX_I_V, v);
		#if _HDRP
			v.xyz = GetAbsolutePositionWS(v.xyz);
		#endif
		return v;
	}

	float4 SGT_W2P(float4 v)
	{
		#if _HDRP
			v.xyz = GetCameraRelativePositionWS(v.xyz);
		#endif
		#if _STANDARD
			return mul(GetWorldToHClipMatrix(), v);
		#else
			return TransformWorldToHClip(v.xyz);
		#endif
	}


	float4 SGT_ModifyUnlitOutput(float4 finalColor)
	{
		#if _HDRP
			finalColor.xyz *= 25000.0f;
		#endif
		return finalColor;
	}

	void SGT_OutputWithoutAlpha(inout Surface o, float4 finalColor)
	{
		#if _HDRP
			o.Emission = finalColor.xyz;
			o.Albedo   = 0.0f;
		#elif _URP
			o.Emission = finalColor.xyz;
			o.Albedo   = finalColor.xyz;
		#else
			o.Albedo = finalColor.xyz;
		#endif
	}

	void SGT_OutputWithAlpha(inout Surface o, float4 finalColor)
	{
		SGT_OutputWithoutAlpha(o, finalColor);

		o.Alpha = finalColor.w;
	}


	float SGT_GetOutsideDistance(float3 ray, float3 rayD)
	{
		float B = dot(ray, rayD);
		float C = dot(ray, ray) - 1.0f;
		float D = B * B - C;
		return -B - sqrt(max(D, 0.0f));
	}

	float SGT_GetOutsideDistance2(float3 ray, float3 rayD)
	{
		float B = dot(ray, rayD);
		float C = dot(ray, ray) - 1.0f;
		float D = B * B - C;
		return max(-B - sqrt(max(D, 0.0f)), 0.0f);
	}

	float3 SGT_GetNear(float3 far)
	{
		float3 wcam = _WorldSpaceCameraPos;
		float3 near = mul(_SGT_WorldToLocal, float4(wcam, 1.0f)).xyz;
		float3 dir  = normalize(far - near);

		return near + dir * SGT_GetOutsideDistance2(near, dir);
	}

	void ModifyInnerVertex(inout VertexData v, inout ExtraV2F e)
	{
		#if __SGT_MATRIX
			float3 wcam = _WorldSpaceCameraPos;
			float4 wpos = SGT_O2W(v.vertex);
			float3 far  = mul(_SGT_WorldToLocal, wpos).xyz;
			float3 near = mul(_SGT_WorldToLocal, float4(wcam, 1.0f)).xyz;

			float3 nearFar = far - near;
			float3 dir     = normalize(nearFar);
			float  depthA  = length(nearFar);
			float  depthB  = SGT_GetOutsideDistance(near, dir);
			near += dir * max(depthB, 0.0f);
			float depth = length(near - far);

			v.texcoord0.x   = depth * _SGT_HorizonLengthRecip;
			v.texcoord0.y   = (length(far) - _SGT_InnerRatio) * _SGT_InnerScale; // Altitude
			v.texcoord1.xyz = mul((float3x3)_SGT_LocalToWorld, near);
		#endif
	}

	void ModifyOuterVertex(inout VertexData v, inout ExtraV2F e)
	{
		#if __SGT_MATRIX
			float4 wPos = SGT_O2W(v.vertex);
			float3 far  = mul(_SGT_WorldToLocal, wPos).xyz;
			float3 near = SGT_GetNear(far);

			v.texcoord0.xy = length(near - far) * _SGT_HorizonLengthRecip;

			#if _SGT_SOFTNESS
				v.texcoord1.z = -SGT_O2V(v.vertex).z;
			#endif

			v.texcoord2.xyz = mul((float3x3)_SGT_LocalToWorld, near);
		#endif
	}

	void Ext_ModifyVertex0 (inout VertexData v, inout ExtraV2F e)
	{
		#if _SGT_OUTER
			ModifyOuterVertex(v, e);
		#else
			ModifyInnerVertex(v, e);
		#endif
	}

	void SurfaceInnerFunction(inout Surface o, inout ShaderData d)
	{
		#if __SGT_OUTPUT
			float4 depth = tex2D(_SGT_InnerDepthTex, d.texcoord0.xx);
			float4 main  = depth * _SGT_Color;
			float3 wcam  = _WorldSpaceCameraPos;
			float3 wnorm = normalize(d.texcoord1.xyz);

			main.rgb *= _SGT_Brightness;
			main.a   *= smoothstep(1.0f, 0.0f, saturate(d.texcoord0.y));

			float4 finalColor = main;

			#if __SGT_LIGHTANDSHADOW
				#if _SGT_LIGHTING
					finalColor.rgb *= _SGT_AmbientColor;

					float4 lighting   = 0.0f;
					float4 scattering = 0.0f;

					for (int i = 0; i < _SGT_LightCount; i++)
					{
						float theta = dot(wnorm, _SGT_LightDirection[i]) * 0.5f + 0.5f;

						lighting += tex2D(_SGT_LightingTex, theta) * main * _SGT_LightColor[i];

						#if _SGT_SCATTERING
							float3 worldViewDir  = normalize(d.worldSpacePosition - wcam);
							float3 worldLightDir = normalize(_SGT_LightPosition[i].xyz - wcam);
							float  angle         = dot(worldViewDir, worldLightDir);
							float  phase         = SGT_ScatteringPhase(angle, _SGT_ScatteringTerms, _SGT_ScatteringInner);

							scattering += tex2D(_SGT_ScatteringTex, theta) * _SGT_LightColor[i] * phase;
						#endif
					}

					#if _SGT_SCATTERING
						#if _SGT_HDR || _HDRP
							scattering *= main;
							lighting.xyz += scattering.xyz;
						#else
							scattering *= finalColor.a; // Fade scattering out according to optical depth
							scattering *= saturate(1.0f - (finalColor + lighting)); // Only scatter into remaining rgba
							lighting += scattering;
						#endif
					#endif

					finalColor += lighting * saturate(SGT_ShadowColor(d.worldSpacePosition) + finalColor.a * 0.5f);
					//finalColor += lighting * lerp(SGT_ShadowColor(d.worldSpacePosition), 1.0f, finalColor.a);
					finalColor.a = saturate(finalColor.a);
				#else
					finalColor = SGT_ModifyUnlitOutput(finalColor);
				#endif
			#endif

			SGT_OutputWithAlpha(o, finalColor);
		#endif
	}

	void SurfaceOuterFunction(inout Surface o, inout ShaderData d)
	{
		#if __SGT_OUTPUT
			float4 depth = tex2D(_SGT_OuterDepthTex, d.texcoord0.xx); depth.a = saturate(depth.a + (1.0f - depth.a) * _SGT_Sky);
			float4 main  = depth * _SGT_Color;
			float3 wcam  = _WorldSpaceCameraPos;
			float3 wnorm = normalize(d.texcoord2.xyz);

			main.rgb *= _SGT_Brightness;

			#if _SGT_SOFTNESS
				float sceneZ = GetLinearEyeDepth(d.screenUV);
				float partZ = d.texcoord1.z;

				main.a *= smoothstep(0.0f, 1.0f, _SGT_SoftParticlesFactor * abs(sceneZ - partZ));
			#endif

			float4 finalColor = main;

			#if __SGT_LIGHTANDSHADOW
				#if _SGT_LIGHTING
					finalColor.rgb *= _SGT_AmbientColor;

					float4 lighting   = 0.0f;
					float4 scattering = 0.0f;

					for (int i = 0; i < _SGT_LightCount; i++)
					{
						float theta = dot(wnorm, _SGT_LightDirection[i]) * 0.5f + 0.5f;

						lighting += tex2D(_SGT_LightingTex, theta) * main * _SGT_LightColor[i];

						#if _SGT_SCATTERING
							float3 worldViewDir  = normalize(d.worldSpacePosition - wcam);
							float3 worldLightDir = normalize(_SGT_LightPosition[i].xyz - wcam);
							float  angle         = dot(worldViewDir, worldLightDir);
							float  phase         = SGT_ScatteringPhase(angle, _SGT_ScatteringTerms, _SGT_ScatteringOuter);

							scattering += tex2D(_SGT_ScatteringTex, theta) * _SGT_LightColor[i] * phase;
						#endif
					}

					#if _SGT_SCATTERING
						#if _SGT_HDR || _HDRP
							scattering *= main;
							lighting.xyz += scattering.xyz;
						#else
							scattering *= finalColor.a; // Fade scattering out according to optical depth
							scattering *= saturate(1.0f - (finalColor + lighting)); // Only scatter into remaining rgba
							lighting += scattering;
						#endif
					#endif

					finalColor += lighting * SGT_ShadowColor(d.worldSpacePosition);
					finalColor.a = saturate(main.a);
				#else
					finalColor = SGT_ModifyUnlitOutput(finalColor);
				#endif
			#endif

			SGT_OutputWithAlpha(o, finalColor);
		#endif
	}

	void Ext_SurfaceFunction0 (inout Surface o, inout ShaderData d)
	{
		#if _SGT_OUTER
			SurfaceOuterFunction(o, d);
		#else
			SurfaceInnerFunction(o, d);
		#endif
	}







        
            void ChainSurfaceFunction(inout Surface l, inout ShaderData d)
            {
                  Ext_SurfaceFunction0(l, d);
                 // Ext_SurfaceFunction1(l, d);
                 // Ext_SurfaceFunction2(l, d);
                 // Ext_SurfaceFunction3(l, d);
                 // Ext_SurfaceFunction4(l, d);
                 // Ext_SurfaceFunction5(l, d);
                 // Ext_SurfaceFunction6(l, d);
                 // Ext_SurfaceFunction7(l, d);
                 // Ext_SurfaceFunction8(l, d);
                 // Ext_SurfaceFunction9(l, d);
		           // Ext_SurfaceFunction10(l, d);
                 // Ext_SurfaceFunction11(l, d);
                 // Ext_SurfaceFunction12(l, d);
                 // Ext_SurfaceFunction13(l, d);
                 // Ext_SurfaceFunction14(l, d);
                 // Ext_SurfaceFunction15(l, d);
                 // Ext_SurfaceFunction16(l, d);
                 // Ext_SurfaceFunction17(l, d);
                 // Ext_SurfaceFunction18(l, d);
		           // Ext_SurfaceFunction19(l, d);
                 // Ext_SurfaceFunction20(l, d);
                 // Ext_SurfaceFunction21(l, d);
                 // Ext_SurfaceFunction22(l, d);
                 // Ext_SurfaceFunction23(l, d);
                 // Ext_SurfaceFunction24(l, d);
                 // Ext_SurfaceFunction25(l, d);
                 // Ext_SurfaceFunction26(l, d);
                 // Ext_SurfaceFunction27(l, d);
                 // Ext_SurfaceFunction28(l, d);
		           // Ext_SurfaceFunction29(l, d);
            }

            void ChainModifyVertex(inout VertexData v, inout VertexToPixel v2p, float4 time)
            {
                 ExtraV2F d;
                 
                 ZERO_INITIALIZE(ExtraV2F, d);
                 ZERO_INITIALIZE(Blackboard, d.blackboard);
                 // due to motion vectors in HDRP, we need to use the last
                 // time in certain spots. So if you are going to use _Time to adjust vertices,
                 // you need to use this time or motion vectors will break. 
                 d.time = time;

                   Ext_ModifyVertex0(v, d);
                 // Ext_ModifyVertex1(v, d);
                 // Ext_ModifyVertex2(v, d);
                 // Ext_ModifyVertex3(v, d);
                 // Ext_ModifyVertex4(v, d);
                 // Ext_ModifyVertex5(v, d);
                 // Ext_ModifyVertex6(v, d);
                 // Ext_ModifyVertex7(v, d);
                 // Ext_ModifyVertex8(v, d);
                 // Ext_ModifyVertex9(v, d);
                 // Ext_ModifyVertex10(v, d);
                 // Ext_ModifyVertex11(v, d);
                 // Ext_ModifyVertex12(v, d);
                 // Ext_ModifyVertex13(v, d);
                 // Ext_ModifyVertex14(v, d);
                 // Ext_ModifyVertex15(v, d);
                 // Ext_ModifyVertex16(v, d);
                 // Ext_ModifyVertex17(v, d);
                 // Ext_ModifyVertex18(v, d);
                 // Ext_ModifyVertex19(v, d);
                 // Ext_ModifyVertex20(v, d);
                 // Ext_ModifyVertex21(v, d);
                 // Ext_ModifyVertex22(v, d);
                 // Ext_ModifyVertex23(v, d);
                 // Ext_ModifyVertex24(v, d);
                 // Ext_ModifyVertex25(v, d);
                 // Ext_ModifyVertex26(v, d);
                 // Ext_ModifyVertex27(v, d);
                 // Ext_ModifyVertex28(v, d);
                 // Ext_ModifyVertex29(v, d);


                 // #if %EXTRAV2F0REQUIREKEY%
                 // v2p.extraV2F0 = d.extraV2F0;
                 // #endif

                 // #if %EXTRAV2F1REQUIREKEY%
                 // v2p.extraV2F1 = d.extraV2F1;
                 // #endif

                 // #if %EXTRAV2F2REQUIREKEY%
                 // v2p.extraV2F2 = d.extraV2F2;
                 // #endif

                 // #if %EXTRAV2F3REQUIREKEY%
                 // v2p.extraV2F3 = d.extraV2F3;
                 // #endif

                 // #if %EXTRAV2F4REQUIREKEY%
                 // v2p.extraV2F4 = d.extraV2F4;
                 // #endif

                 // #if %EXTRAV2F5REQUIREKEY%
                 // v2p.extraV2F5 = d.extraV2F5;
                 // #endif

                 // #if %EXTRAV2F6REQUIREKEY%
                 // v2p.extraV2F6 = d.extraV2F6;
                 // #endif

                 // #if %EXTRAV2F7REQUIREKEY%
                 // v2p.extraV2F7 = d.extraV2F7;
                 // #endif
            }

            void ChainModifyTessellatedVertex(inout VertexData v, inout VertexToPixel v2p)
            {
               ExtraV2F d;
               ZERO_INITIALIZE(ExtraV2F, d);
               ZERO_INITIALIZE(Blackboard, d.blackboard);

               // #if %EXTRAV2F0REQUIREKEY%
               // d.extraV2F0 = v2p.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // d.extraV2F1 = v2p.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // d.extraV2F2 = v2p.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // d.extraV2F3 = v2p.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // d.extraV2F4 = v2p.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // d.extraV2F5 = v2p.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // d.extraV2F6 = v2p.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // d.extraV2F7 = v2p.extraV2F7;
               // #endif


               // Ext_ModifyTessellatedVertex0(v, d);
               // Ext_ModifyTessellatedVertex1(v, d);
               // Ext_ModifyTessellatedVertex2(v, d);
               // Ext_ModifyTessellatedVertex3(v, d);
               // Ext_ModifyTessellatedVertex4(v, d);
               // Ext_ModifyTessellatedVertex5(v, d);
               // Ext_ModifyTessellatedVertex6(v, d);
               // Ext_ModifyTessellatedVertex7(v, d);
               // Ext_ModifyTessellatedVertex8(v, d);
               // Ext_ModifyTessellatedVertex9(v, d);
               // Ext_ModifyTessellatedVertex10(v, d);
               // Ext_ModifyTessellatedVertex11(v, d);
               // Ext_ModifyTessellatedVertex12(v, d);
               // Ext_ModifyTessellatedVertex13(v, d);
               // Ext_ModifyTessellatedVertex14(v, d);
               // Ext_ModifyTessellatedVertex15(v, d);
               // Ext_ModifyTessellatedVertex16(v, d);
               // Ext_ModifyTessellatedVertex17(v, d);
               // Ext_ModifyTessellatedVertex18(v, d);
               // Ext_ModifyTessellatedVertex19(v, d);
               // Ext_ModifyTessellatedVertex20(v, d);
               // Ext_ModifyTessellatedVertex21(v, d);
               // Ext_ModifyTessellatedVertex22(v, d);
               // Ext_ModifyTessellatedVertex23(v, d);
               // Ext_ModifyTessellatedVertex24(v, d);
               // Ext_ModifyTessellatedVertex25(v, d);
               // Ext_ModifyTessellatedVertex26(v, d);
               // Ext_ModifyTessellatedVertex27(v, d);
               // Ext_ModifyTessellatedVertex28(v, d);
               // Ext_ModifyTessellatedVertex29(v, d);

               // #if %EXTRAV2F0REQUIREKEY%
               // v2p.extraV2F0 = d.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // v2p.extraV2F1 = d.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // v2p.extraV2F2 = d.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // v2p.extraV2F3 = d.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // v2p.extraV2F4 = d.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // v2p.extraV2F5 = d.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // v2p.extraV2F6 = d.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // v2p.extraV2F7 = d.extraV2F7;
               // #endif
            }

            void ChainFinalColorForward(inout Surface l, inout ShaderData d, inout half4 color)
            {
               //   Ext_FinalColorForward0(l, d, color);
               //   Ext_FinalColorForward1(l, d, color);
               //   Ext_FinalColorForward2(l, d, color);
               //   Ext_FinalColorForward3(l, d, color);
               //   Ext_FinalColorForward4(l, d, color);
               //   Ext_FinalColorForward5(l, d, color);
               //   Ext_FinalColorForward6(l, d, color);
               //   Ext_FinalColorForward7(l, d, color);
               //   Ext_FinalColorForward8(l, d, color);
               //   Ext_FinalColorForward9(l, d, color);
               //  Ext_FinalColorForward10(l, d, color);
               //  Ext_FinalColorForward11(l, d, color);
               //  Ext_FinalColorForward12(l, d, color);
               //  Ext_FinalColorForward13(l, d, color);
               //  Ext_FinalColorForward14(l, d, color);
               //  Ext_FinalColorForward15(l, d, color);
               //  Ext_FinalColorForward16(l, d, color);
               //  Ext_FinalColorForward17(l, d, color);
               //  Ext_FinalColorForward18(l, d, color);
               //  Ext_FinalColorForward19(l, d, color);
               //  Ext_FinalColorForward20(l, d, color);
               //  Ext_FinalColorForward21(l, d, color);
               //  Ext_FinalColorForward22(l, d, color);
               //  Ext_FinalColorForward23(l, d, color);
               //  Ext_FinalColorForward24(l, d, color);
               //  Ext_FinalColorForward25(l, d, color);
               //  Ext_FinalColorForward26(l, d, color);
               //  Ext_FinalColorForward27(l, d, color);
               //  Ext_FinalColorForward28(l, d, color);
               //  Ext_FinalColorForward29(l, d, color);
            }

            void ChainFinalGBufferStandard(inout Surface s, inout ShaderData d, inout half4 GBuffer0, inout half4 GBuffer1, inout half4 GBuffer2, inout half4 outEmission, inout half4 outShadowMask)
            {
               //   Ext_FinalGBufferStandard0(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard1(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard2(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard3(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard4(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard5(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard6(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard7(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard8(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard9(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard10(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard11(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard12(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard13(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard14(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard15(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard16(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard17(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard18(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard19(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard20(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard21(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard22(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard23(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard24(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard25(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard26(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard27(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard28(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard29(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
            }



            

         ShaderData CreateShaderData(VertexToPixel i
                  #if NEED_FACING
                     , bool facing
                  #endif
         )
         {
            ShaderData d = (ShaderData)0;
            d.clipPos = i.pos;
            d.worldSpacePosition = i.worldPos;

            d.worldSpaceNormal = normalize(i.worldNormal);
            d.worldSpaceTangent = normalize(i.worldTangent.xyz);
            d.tangentSign = i.worldTangent.w;
            float3 bitangent = cross(i.worldTangent.xyz, i.worldNormal) * d.tangentSign * -1;
            

            d.TBNMatrix = float3x3(d.worldSpaceTangent, bitangent, d.worldSpaceNormal);
            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - i.worldPos);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);
             d.texcoord0 = i.texcoord0;
             d.texcoord1 = i.texcoord1;
             d.texcoord2 = i.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
            // d.texcoord3 = i.texcoord3;
            // #endif

            // d.isFrontFace = facing;
            // #if %VERTEXCOLORREQUIREKEY%
            // d.vertexColor = i.vertexColor;
            // #endif

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(unity_WorldToObject, float4(GetCameraRelativePositionWS(i.worldPos), 1)).xyz;
            #else
                // d.localSpacePosition = mul(unity_WorldToObject, float4(i.worldPos, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)unity_WorldToObject, i.worldNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)unity_WorldToObject, i.worldTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
             d.screenPos = i.screenPos;
             d.screenUV = (i.screenPos.xy / i.screenPos.w);
            // #endif


            // #if %EXTRAV2F0REQUIREKEY%
            // d.extraV2F0 = i.extraV2F0;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
            // d.extraV2F1 = i.extraV2F1;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
            // d.extraV2F2 = i.extraV2F2;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
            // d.extraV2F3 = i.extraV2F3;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // d.extraV2F4 = i.extraV2F4;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // d.extraV2F5 = i.extraV2F5;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // d.extraV2F6 = i.extraV2F6;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // d.extraV2F7 = i.extraV2F7;
            // #endif

            return d;
         }
         

            

#if (SHADERPASS == SHADERPASS_LIGHT_TRANSPORT)

   // This was not in constant buffer in original unity, so keep outiside. But should be in as ShaderRenderPass frequency
   float unity_OneOverOutputBoost;
   float unity_MaxOutputValue;

   CBUFFER_START(UnityMetaPass)
   // x = use uv1 as raster position
   // y = use uv2 as raster position
   bool4 unity_MetaVertexControl;

   // x = return albedo
   // y = return normal
   bool4 unity_MetaFragmentControl;
   CBUFFER_END

   VertexToPixel Vert(VertexData inputMesh)
   {
       VertexToPixel output;
       ZERO_INITIALIZE(VertexToPixel, output);
       UNITY_SETUP_INSTANCE_ID(inputMesh);
       UNITY_TRANSFER_INSTANCE_ID(inputMesh, output);
       UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

       // Output UV coordinate in vertex shader
       float2 uv = float2(0.0, 0.0);

       if (unity_MetaVertexControl.x)
       {
           uv = inputMesh.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
       }
       else if (unity_MetaVertexControl.y)
       {
           uv = inputMesh.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
       }

       // OpenGL right now needs to actually use the incoming vertex position
       // so we create a fake dependency on it here that haven't any impact.
       output.pos = float4(uv * 2.0 - 1.0, inputMesh.vertex.z > 0 ? 1.0e-4 : 0.0, 1.0);

       output.worldPos = TransformObjectToWorld(inputMesh.vertex.xyz).xyz;

       // Normal is required for triplanar mapping
       output.worldNormal = TransformObjectToWorldNormal(inputMesh.normal);
       // Not required but assign to silent compiler warning
       output.worldTangent = float4(1.0, 0.0, 0.0, 0.0);

       output.texcoord0 = inputMesh.texcoord0;
       output.texcoord1 = inputMesh.texcoord1;
       output.texcoord2 = inputMesh.texcoord2;
       // #if %TEXCOORD3REQUIREKEY%
       // output.texcoord3 = inputMesh.texcoord3;
       // #endif
       // #if %VERTEXCOLORREQUIREKEY%
       // output.vertexColor = inputMesh.vertexColor;
       // #endif

       return output;
   }
#else

   #if (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
      #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariablesMatrixDefsHDCamera.hlsl"

      void MotionVectorPositionZBias(VertexToPixel input)
      {
      #if UNITY_REVERSED_Z
          input.pos.z -= unity_MotionVectorsParams.z * input.pos.w;
      #else
          input.pos.z += unity_MotionVectorsParams.z * input.pos.w;
      #endif
      }

   #endif

   VertexToPixel Vert(VertexData input)
   {
       VertexToPixel output;
       ZERO_INITIALIZE(VertexToPixel, output);

       UNITY_SETUP_INSTANCE_ID(input);
       UNITY_TRANSFER_INSTANCE_ID(input, output);
       UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

       #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
         VertexData previousMesh = input;
       #endif

       ChainModifyVertex(input, output, _Time);

       // This return the camera relative position (if enable)
       float3 positionRWS = TransformObjectToWorld(input.vertex.xyz);
       float3 normalWS = TransformObjectToWorldNormal(input.normal);
       float4 tangentWS = float4(TransformObjectToWorldDir(input.tangent.xyz), input.tangent.w);


       output.worldPos = GetAbsolutePositionWS(positionRWS);
       output.pos = TransformWorldToHClip(positionRWS);
       output.worldNormal = normalWS;
       output.worldTangent = tangentWS;


       output.texcoord0 = input.texcoord0;
       output.texcoord1 = input.texcoord1;
       output.texcoord2 = input.texcoord2;

       // #if %TEXCOORD3REQUIREKEY%
       // output.texcoord3 = input.texcoord3;
       // #endif

       // #if %VERTEXCOLORREQUIREKEY%
       // output.vertexColor = input.vertexColor;
       // #endif

       // #if %SCREENPOSREQUIREKEY%
        output.screenPos = ComputeScreenPos(output.pos, _ProjectionParams.x);
       // #endif
   
       #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))

          #if !defined(TESSELLATION_ON)
            MotionVectorPositionZBias(output);
          #endif

          output.motionVectorCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(positionRWS.xyz, 1.0));
          // Note: unity_MotionVectorsParams.y is 0 is forceNoMotion is enabled
          bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
          if (forceNoMotion)
          {
              output.previousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
          }
          else
          {
            bool hasDeformation = unity_MotionVectorsParams.x > 0.0; // Skin or morph target

            float3 effectivePositionOS = (hasDeformation ? previousMesh.previousPositionOS : previousMesh.vertex.xyz);
            #if defined(_ADD_PRECOMPUTED_VELOCITY)
               effectivePositionOS -= input.precomputedVelocity;
            #endif

            previousMesh.vertex = float4(effectivePositionOS, 1);
            VertexToPixel dummy = (VertexToPixel)0;
            

            ChainModifyVertex(previousMesh, dummy, _LastTimeParameters);

            // we might need this for skinned objects?
            //float3 normalWS = TransformPreviousObjectToWorldNormal(input.normal).xyz;
            float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.vertex.xyz);

            #ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
            if (_TransparentCameraOnlyMotionVectors > 0)
            {
               previousPositionRWS = positionRWS.xyz;
            }
            #endif // _WRITE_TRANSPARENT_MOTION_VECTOR

            output.previousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
         }
       #endif // _HDRP && _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))


       return output;
   }


#endif



            

            

               #if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
                  #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalPrepassBuffer.hlsl"
               #endif

                FragInputs BuildFragInputs(VertexToPixel input)
                {
                    UNITY_SETUP_INSTANCE_ID(input);
                    FragInputs output;
                    ZERO_INITIALIZE(FragInputs, output);
            
                    // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                    // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                    // to compute normals which are then passed on elsewhere to compute other values...
                    output.tangentToWorld = k_identity3x3;
                    output.positionSS = input.pos;       // input.positionCS is SV_Position
                    // BETTER SHADERS: because we transform world position into actual world space for things like
                    // triplanar, etc, we have to back transform it here for lighting
                    output.positionRWS = GetCameraRelativePositionWS(input.worldPos);
                    output.tangentToWorld = BuildTangentToWorld(input.worldTangent, input.worldNormal);
                    output.texCoord0 = input.texcoord0;
                    output.texCoord1 = input.texcoord1;
                    output.texCoord2 = input.texcoord2;
            
                    return output;
                }
            
               void BuildSurfaceData(FragInputs fragInputs, inout Surface surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
               {
                   // setup defaults -- these are used if the graph doesn't output a value
                   ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                   // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                   // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                   surfaceData.specularOcclusion = 1.0;

                   // copy across graph values, if defined
                   surfaceData.baseColor =                 surfaceDescription.Albedo;
                   surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                   surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                   surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                   surfaceData.metallic =                  surfaceDescription.Metallic;
                   surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                   surfaceData.thickness =                 surfaceDescription.Thickness;
                   surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                   #if _USESPECULAR
                      surfaceData.specularColor =             surfaceDescription.Specular;
                   #endif
                   surfaceData.coatMask =                  surfaceDescription.CoatMask;
                   surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                   surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                   surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;



                   #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                        if (_EnableSSRefraction)
                        {
                            surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                            surfaceDescription.Alpha = 1.0;
                        }
                        else
                        {
                            surfaceData.ior = 1.0;
                            surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                            surfaceData.atDistance = 1.0;
                            surfaceData.transmittanceMask = 0.0;
                            surfaceDescription.Alpha = 1.0;
                        }
                    #else
                        surfaceData.ior = 1.0;
                        surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                        surfaceData.atDistance = 1.0;
                        surfaceData.transmittanceMask = 0.0;
                    #endif

                    

                    // These static material feature allow compile time optimization
                    surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
                    #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_TRANSMISSION
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_ANISOTROPY
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
                        surfaceData.normalWS = float3(0, 1, 0);
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
                    #endif
                
                    #if defined(_MATERIAL_FEATURE_CLEAR_COAT) || _CLEARCOAT
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
                    #endif
                
                    #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                        // Require to have setup baseColor
                        // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                        surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
                    #endif
                


                   // compute world space normal
                   #if !_WORLDSPACENORMAL
                      surfaceData.normalWS = mul(surfaceDescription.Normal, fragInputs.tangentToWorld);
                   #else
                      surfaceData.normalWS = surfaceDescription.Normal;
                   #endif

                   surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                   surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT

         
                    #if HAVE_DECALS
                        if (_EnableDecals)
                        {
                            float alpha = 1.0;
                            alpha = surfaceDescription.Alpha;
                
                            // Both uses and modifies 'surfaceData.normalWS'.
                            DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], alpha);
                            ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
                        }
                    #endif
                
                    bentNormalWS = surfaceData.normalWS;
                
                    surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
                
                    #ifdef DEBUG_DISPLAY
                        if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                        {
                            // TODO: need to update mip info
                            surfaceData.metallic = 0;
                        }
                
                        // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                        // as it can modify attribute use for static lighting
                        ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
                    #endif
                
                    // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                    // If user provide bent normal then we process a better term
                    #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                        // Just use the value passed through via the slot (not active otherwise)
                    #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                        // If we have bent normal and ambient occlusion, process a specular occlusion
                        surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                    #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                        surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                    #endif
                
                    #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                        surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
                    #endif
               }
        
               void GetSurfaceAndBuiltinData(VertexToPixel m2ps, FragInputs fragInputs, float3 V, inout PositionInputs posInput,
                     out SurfaceData surfaceData, out BuiltinData builtinData, inout Surface l, inout ShaderData d
                     #if NEED_FACING
                        , bool facing
                     #endif
                  )
               {
                 // Removed since crossfade does not work, probably needs extra material setup.   
                 //#if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                 //   #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                 //      LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                 //   #endif
                 //#endif

                 d = CreateShaderData(m2ps
                    #if NEED_FACING
                       , facing
                    #endif
                 );

                 l = (Surface)0;

                 l.Albedo = half3(0.5, 0.5, 0.5);
                 l.Normal = float3(0,0,1);
                 l.Occlusion = 1;
                 l.Alpha = 1;
                 l.SpecularOcclusion = 1;

                 #if !defined(SHADER_STAGE_RAY_TRACING) && defined(_DEPTHOFFSET_ON)
                    l.outputDepth = d.clipPos.z;
                 #endif

                 ChainSurfaceFunction(l, d);

                 #if !defined(SHADER_STAGE_RAY_TRACING) && defined(_DEPTHOFFSET_ON)
                    //posInput.deviceDepth = l.outputDepth;
                 #endif

                 #if _UNLIT
                     //l.Emission = l.Albedo;
                     //l.Albedo = 0;
                     l.Normal = half3(0,0,1);
                     l.Occlusion = 1;
                     l.Metallic = 0;
                     l.Specular = 0;
                 #endif

                 surfaceData.geomNormalWS = d.worldSpaceNormal;
                 surfaceData.tangentWS = d.worldSpaceTangent;
                 fragInputs.tangentToWorld = d.TBNMatrix;

                 float3 bentNormalWS;
                 BuildSurfaceData(fragInputs, l, V, posInput, surfaceData, bentNormalWS);


                 InitBuiltinData(posInput, l.Alpha, bentNormalWS, -d.worldSpaceNormal, fragInputs.texCoord1, fragInputs.texCoord2, builtinData);

                 

                 builtinData.emissiveColor = l.Emission;

                 #if defined(_OVERRIDE_BAKEDGI)
                    builtinData.bakeDiffuseLighting = l.DiffuseGI;
                    builtinData.backBakeDiffuseLighting = l.BackDiffuseGI;
                    builtinData.emissiveColor += l.SpecularGI;
                 #endif

                 #if defined(_OVERRIDE_SHADOWMASK)
                    builtinData.shadowMask0 = l.ShadowMask.x;
                    builtinData.shadowMask1 = l.ShadowMask.y;
                    builtinData.shadowMask2 = l.ShadowMask.z;
                    builtinData.shadowMask3 = l.ShadowMask.w;
                 #endif

                  #ifdef UNITY_VIRTUAL_TEXTURING
                     builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                  #endif

                  #if (SHADERPASS == SHADERPASS_DISTORTION)
                     builtinData.distortion = surfaceData.Distortion;
                     builtinData.distortionBlur = surfaceData.DistortionBlur;
                  #endif

                  #ifndef SHADER_UNLIT
                    // PostInitBuiltinData call ApplyDebugToBuiltinData
                    PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                  #else
                    ApplyDebugToBuiltinData(builtinData);
                  #endif
         
                  RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
               }




      #ifdef UNITY_VIRTUAL_TEXTURING
      #define VT_BUFFER_TARGET SV_Target1
      #define EXTRA_BUFFER_TARGET SV_Target2
      #else
      #define EXTRA_BUFFER_TARGET SV_Target1
      #endif

      void Frag(VertexToPixel v2p,
                  out float4 outColor : SV_Target0
              #ifdef UNITY_VIRTUAL_TEXTURING
                  ,out float4 outVTFeedback : VT_BUFFER_TARGET
              #endif
              #ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
                  , out float4 outMotionVec : EXTRA_BUFFER_TARGET
              #endif
              #ifdef _DEPTHOFFSET_ON
                  , out float outputDepth : SV_Depth
              #endif
              #if NEED_FACING
                 , bool facing : SV_IsFrontFace
              #endif
      )
      {
      #ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
          // Init outMotionVector here to solve compiler warning (potentially unitialized variable)
          // It is init to the value of forceNoMotion (with 2.0)
          outMotionVec = float4(2.0, 0.0, 0.0, 0.0);
      #endif

          UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(v2p);
          FragInputs input = BuildFragInputs(v2p);

          // input.positionSS is SV_Position
          PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

          float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

          SurfaceData surfaceData;
          BuiltinData builtinData;
          Surface l;
          ShaderData d;
          GetSurfaceAndBuiltinData(v2p, input, V, posInput, surfaceData, builtinData, l, d
               #if NEED_FACING
                  , facing
               #endif
               );


          // Not lit here (but emissive is allowed)
          BSDFData bsdfData = ConvertSurfaceDataToBSDFData(input.positionSS.xy, surfaceData);

          // If this is a shadow matte, then we want the AO to affect the base color (the AO being correct if the surface is flagged shadow matte).
      #if defined(_ENABLE_SHADOW_MATTE)
          bsdfData.baseColor *= GetScreenSpaceAmbientOcclusion(input.positionSS.xy);
      #endif

          // Note: we must not access bsdfData in shader pass, but for unlit we make an exception and assume it should have a color field
          float4 outResult = ApplyBlendMode(bsdfData.diffuseColor + builtinData.emissiveColor * GetCurrentExposureMultiplier(), builtinData.opacity);
          outResult = EvaluateAtmosphericScattering(posInput, V, outResult);

         #ifdef DEBUG_DISPLAY
             // Same code in ShaderPassForward.shader
             // Reminder: _DebugViewMaterialArray[i]
             //   i==0 -> the size used in the buffer
             //   i>0  -> the index used (0 value means nothing)
             // The index stored in this buffer could either be
             //   - a gBufferIndex (always stored in _DebugViewMaterialArray[1] as only one supported)
             //   - a property index which is different for each kind of material even if reflecting the same thing (see MaterialSharedProperty)
             int bufferSize = _DebugViewMaterialArray[0].x;
             // Loop through the whole buffer
             // Works because GetSurfaceDataDebug will do nothing if the index is not a known one
             for (int index = 1; index <= bufferSize; index++)
             {
                 int indexMaterialProperty = _DebugViewMaterialArray[index].x;
                 if (indexMaterialProperty != 0)
                 {
                     float3 result = float3(1.0, 0.0, 1.0);
                     bool needLinearToSRGB = false;

                     GetPropertiesDataDebug(indexMaterialProperty, result, needLinearToSRGB);
                     GetVaryingsDataDebug(indexMaterialProperty, input, result, needLinearToSRGB);
                     GetBuiltinDataDebug(indexMaterialProperty, builtinData, posInput, result, needLinearToSRGB);
                     GetSurfaceDataDebug(indexMaterialProperty, surfaceData, result, needLinearToSRGB);
                     GetBSDFDataDebug(indexMaterialProperty, bsdfData, result, needLinearToSRGB);

                     // TEMP!
                     // For now, the final blit in the backbuffer performs an sRGB write
                     // So in the meantime we apply the inverse transform to linear data to compensate.
                     if (!needLinearToSRGB)
                         result = SRGBToLinear(max(0, result));

                     outResult = float4(result, 1.0);
                 }
             }

             if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_TRANSPARENCY_OVERDRAW)
             {
                 float4 result = _DebugTransparencyOverdrawWeight * float4(TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_A);
                 outResult = result;
             }

         #endif

         outColor = outResult;

         ChainFinalColorForward(l, d, outColor);

          #ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
                      bool forceNoMotion = any(unity_MotionVectorsParams.yw == 0.0);
                      // outMotionVec is already initialize at the value of forceNoMotion (see above)
                      if (!forceNoMotion)
                      {
                          float2 motionVec = CalculateMotionVector(v2p.motionVectorCS, v2p.previousPositionCS);
                          EncodeMotionVector(motionVec * 0.5, outMotionVec);
                          outMotionVec.zw = 1.0;
                      }
          #endif

         #ifdef _DEPTHOFFSET_ON
             outputDepth = posInput.deviceDepth;
         #endif

         #ifdef UNITY_VIRTUAL_TEXTURING
             outVTFeedback = builtinData.vtPackedFeedback;
         #endif
         }


         ENDHLSL
      }
      
      
      
      
        Pass
        {
            Name "DepthForwardOnly"
            Tags
            {
               "LightMode" = "DepthForwardOnly"
            }
    
            // Render State
            Cull [_CullMode]
            ZWrite On
            Stencil
            {
               WriteMask [_StencilWriteMaskDepth]
               Ref [_StencilRefDepth]
               CompFront Always
               PassFront Replace
               CompBack Always
               PassBack Replace
            }
            	Cull [_SGT_Cull]

            
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch

            #pragma multi_compile_instancing
            #pragma instancing_options renderinglayer
        

            //#pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
            #pragma multi_compile _ WRITE_DECAL_BUFFER
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            #define _ENABLE_FOG_ON_TRANSPARENT 1
            // #define _AMBIENT_OCCLUSION 1
            // #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            // #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
            // #define _ADD_PRECOMPUTED_VELOCITY
            // #define _WRITE_TRANSPARENT_MOTION_VECTOR 1
            // #define _DEPTHOFFSET_ON 1
            // #define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1

            #define SHADERPASS SHADERPASS_DEPTH_ONLY
            #pragma multi_compile _ WRITE_NORMAL_BUFFER
            #pragma multi_compile _ WRITE_MSAA_DEPTH
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #define _PASSDEPTH 1

            
            
	#define __SGT_LIGHTANDSHADOW 1
	#define SGT_MAX_LIGHTS 16
	#define SGT_MAX_SPHERE_SHADOWS 16
	#define SGT_MAX_RING_SHADOWS 1


	#define __SGT_MATRIX 1


	#define __SGT_OUTPUT 1


	#pragma shader_feature_local _SGT_LIGHTING
	#pragma shader_feature_local _SGT_SCATTERING
	#pragma shader_feature_local _SGT_HDR
	#pragma multi_compile_local _ _SGT_OUTER
	#pragma multi_compile_local _ _SGT_SOFTNESS


    #pragma shader_feature_local DISABLEFOG    


	#pragma shader_feature_local _ADD_PRECOMPUTED_VELOCITY
	#pragma shader_feature_local _TRANSPARENT_WRITES_MOTION_VEC
	#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
	#pragma shader_feature_local _DISABLE_DECALS
	#pragma shader_feature_local _DISABLE_SSR
	#pragma shader_feature_local _DISABLE_SSR_TRANSPARENT
	#pragma shader_feature_local _REFRACTION_OFF _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN         


   #define _HDRP 1
#define _BLENDMODE_ALPHA 1
#define _SURFACE_TYPE_TRANSPARENT 1

#define _UNLIT 1
#define REQUIRE_DEPTH_TEXTURE
#define _USINGTEXCOORD1 1
#define _USINGTEXCOORD2 1


               #pragma vertex Vert
   #pragma fragment Frag
        
            

                  // useful conversion functions to make surface shader code just work

      #define UNITY_DECLARE_TEX2D(name) TEXTURE2D(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2D_NOSAMPLER(name) TEXTURE2D(name);
      #define UNITY_DECLARE_TEX2DARRAY(name) TEXTURE2D_ARRAY(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(tex) TEXTURE2D_ARRAY(tex);

      #define UNITY_SAMPLE_TEX2DARRAY(tex,coord)            SAMPLE_TEXTURE2D_ARRAY(tex, sampler##tex, coord.xy, coord.z)
      #define UNITY_SAMPLE_TEX2DARRAY_LOD(tex,coord,lod)    SAMPLE_TEXTURE2D_ARRAY_LOD(tex, sampler##tex, coord.xy, coord.z, lod)
      #define UNITY_SAMPLE_TEX2D(tex, coord)                SAMPLE_TEXTURE2D(tex, sampler##tex, coord)
      #define UNITY_SAMPLE_TEX2D_SAMPLER(tex, samp, coord)  SAMPLE_TEXTURE2D(tex, sampler##samp, coord)

      #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod)   SAMPLE_TEXTURE2D_LOD(tex, sampler_##tex, coord, lod)
      #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) SAMPLE_TEXTURE2D_LOD (tex, sampler##samplertex,coord, lod)

      #if defined(UNITY_COMPILER_HLSL)
         #define UNITY_INITIALIZE_OUTPUT(type,name) name = (type)0;
      #else
         #define UNITY_INITIALIZE_OUTPUT(type,name)
      #endif

      #define sampler2D_float sampler2D
      #define sampler2D_half sampler2D

      #undef WorldNormalVector
      #define WorldNormalVector(data, normal) mul(normal, data.TBNMatrix)

      #define UnityObjectToWorldNormal(normal) mul(GetObjectToWorldMatrix(), normal)




// HDRP Adapter stuff
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl" // Need to be here for Gradient struct definition

            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT 
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
    
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
    



            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
               #define OUTPUT_SPLIT_LIGHTING
            #endif

            #define HAVE_RECURSIVE_RENDERING

            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
               #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                  #define WRITE_NORMAL_BUFFER
               #endif
            #endif

            #ifndef DEBUG_DISPLAY
               // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
               // Don't do it with debug display mode as it is possible there is no depth prepass in this case
               #if !defined(_SURFACE_TYPE_TRANSPARENT) && defined(_ALPHATEST)
                  #if SHADERPASS == SHADERPASS_FORWARD
                  #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                  #elif SHADERPASS == SHADERPASS_GBUFFER
                  #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                  #endif
               #endif
            #endif

            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
               #define _DEFERRED_CAPABLE_MATERIAL
            #endif
    
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
               #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif




            CBUFFER_START(UnityPerMaterial)
               float _UseShadowThreshold;
               float _BlendMode;
               float _EnableBlendModePreserveSpecularLighting;
               float _RayTracing;
               float _RefractionModel;

              
	int    _SGT_LightCount;
	float4 _SGT_LightColor[SGT_MAX_LIGHTS];
	float4 _SGT_LightPosition[SGT_MAX_LIGHTS];
	float3 _SGT_LightDirection[SGT_MAX_LIGHTS];

	int       _SGT_SphereShadowCount;
	float4x4  _SGT_SphereShadowMatrix[SGT_MAX_SPHERE_SHADOWS];
	float4    _SGT_SphereShadowPower[SGT_MAX_SPHERE_SHADOWS];

	int       _SGT_RingShadowCount;
	sampler2D _SGT_RingShadowTexture;
	float4    _SGT_RingShadowColor[SGT_MAX_RING_SHADOWS];
	float4x4  _SGT_RingShadowMatrix[SGT_MAX_RING_SHADOWS];
	float     _SGT_RingShadowRatio[SGT_MAX_RING_SHADOWS];






	float4    _SGT_Color; // Auto
	float     _SGT_Brightness; // Auto
	sampler2D _SGT_InnerDepthTex;
	sampler2D _SGT_OuterDepthTex;

	float     _SGT_HorizonLengthRecip;
	float     _SGT_Sky;
	float4x4  _SGT_WorldToLocal;
	float4x4  _SGT_LocalToWorld;

	sampler2D _SGT_LightingTex;
	float3    _SGT_AmbientColor;

	float4    _SGT_ScatteringTerms;
	float4    _SGT_ScatteringInner;
	float4    _SGT_ScatteringOuter;
	sampler2D _SGT_ScatteringTex;
	float     _SGT_InnerRatio;
	float     _SGT_InnerScale;

	float _SGT_SoftParticlesFactor; // Auto







            CBUFFER_END
    


             // -- Property used by ScenePickingPass
               #ifdef SCENEPICKINGPASS
               float4 _SelectionID;
               #endif
    
               // -- Properties used by SceneSelectionPass
               #ifdef SCENESELECTIONPASS
               int _ObjectId;
               int _PassValue;
               #endif
  
           
            // data across stages, stripped like the above.
            struct VertexToPixel
            {
               float4 pos : SV_POSITION;
               float3 worldPos : TEXCOORD0;
               float3 worldNormal : TEXCOORD1;
               float4 worldTangent : TEXCOORD2;
               float4 texcoord0 : TEXCOORD3;
               float4 texcoord1 : TEXCOORD4;
               float4 texcoord2 : TEXCOORD5;
               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD6;
               // #endif

               // #if %SCREENPOSREQUIREKEY%
                float4 screenPos : TEXCOORD7;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD12;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD13;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD14;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD15;
               // #endif

               #if UNITY_ANY_INSTANCING_ENABLED
                  uint instanceID : INSTANCEID_SEMANTIC;
               #endif // UNITY_ANY_INSTANCING_ENABLED

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float4 previousPositionCS : TEXCOORD16; // Contain previous transform position (in case of skinning for example)
                  float4 motionVectorCS : TEXCOORD17;
               #endif

               UNITY_VERTEX_OUTPUT_STEREO
            }; 


            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
            

            
            
            // data describing the user output of a pixel
            struct Surface
            {
               half3 Albedo;
               half Height;
               half3 Normal;
               half Smoothness;
               half3 Emission;
               half Metallic;
               half3 Specular;
               half Occlusion;
               half SpecularPower; // for simple lighting
               half Alpha;
               float outputDepth; // if written, SV_Depth semantic is used. ShaderData.clipPos.z is unused value
               // HDRP Only
               half SpecularOcclusion;
               half SubsurfaceMask;
               half Thickness;
               half CoatMask;
               half CoatSmoothness;
               half Anisotropy;
               half IridescenceMask;
               half IridescenceThickness;
               int DiffusionProfileHash;
               float SpecularAAThreshold;
               float SpecularAAScreenSpaceVariance;
               // requires _OVERRIDE_BAKEDGI to be defined, but is mapped in all pipelines
               float3 DiffuseGI;
               float3 BackDiffuseGI;
               float3 SpecularGI;
               // requires _OVERRIDE_SHADOWMASK to be defines
               float4 ShadowMask;
            };

            // Data the user declares in blackboard blocks
            struct Blackboard
            {
                
                float blackboardDummyData;
            };

            // data the user might need, this will grow to be big. But easy to strip
            struct ShaderData
            {
               float4 clipPos; // SV_POSITION
               float3 localSpacePosition;
               float3 localSpaceNormal;
               float3 localSpaceTangent;
        
               float3 worldSpacePosition;
               float3 worldSpaceNormal;
               float3 worldSpaceTangent;
               float tangentSign;

               float3 worldSpaceViewDir;
               float3 tangentSpaceViewDir;

               float4 texcoord0;
               float4 texcoord1;
               float4 texcoord2;
               float4 texcoord3;

               float2 screenUV;
               float4 screenPos;

               float4 vertexColor;
               bool isFrontFace;

               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;

               float3x3 TBNMatrix;
               Blackboard blackboard;
            };

            struct VertexData
            {
               #if SHADER_TARGET > 30
               // uint vertexID : SV_VertexID;
               #endif
               float4 vertex : POSITION;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;

               // optimize out mesh coords when not in use by user or lighting system
               #if _URP && (_USINGTEXCOORD1 || _PASSMETA || _PASSFORWARD || _PASSGBUFFER)
                  float4 texcoord1 : TEXCOORD1;
               #endif

               #if _URP && (_USINGTEXCOORD2 || _PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && defined(DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif

               #if _STANDARD && (_USINGTEXCOORD1 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER || _PASSFORWARDADD) && LIGHTMAP_ON)))
                  float4 texcoord1 : TEXCOORD1;
               #endif
               #if _STANDARD && (_USINGTEXCOORD2 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif


               #if _HDRP
                  float4 texcoord1 : TEXCOORD1;
                  float4 texcoord2 : TEXCOORD2;
               #endif

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float3 previousPositionOS : TEXCOORD4; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity    : TEXCOORD5; // Add Precomputed Velocity (Alembic computes velocities on runtime side).
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct TessVertex 
            {
               float4 vertex : INTERNALTESSPOS;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;
               float4 texcoord1 : TEXCOORD1;
               float4 texcoord2 : TEXCOORD2;

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD5;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD6;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD7;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD12;
               // #endif

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float3 previousPositionOS : TEXCOORD13; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity : TEXCOORD14;
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
               UNITY_VERTEX_OUTPUT_STEREO
            };

            struct ExtraV2F
            {
               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;
               Blackboard blackboard;
               float4 time;
            };


            float3 WorldToTangentSpace(ShaderData d, float3 normal)
            {
               return mul(d.TBNMatrix, normal);
            }

            float3 TangentToWorldSpace(ShaderData d, float3 normal)
            {
               return mul(normal, d.TBNMatrix);
            }

            // in this case, make standard more like SRPs, because we can't fix
            // unity_WorldToObject in HDRP, since it already does macro-fu there

            #if _STANDARD
               float3 TransformWorldToObject(float3 p) { return mul(unity_WorldToObject, float4(p, 1)); };
               float3 TransformObjectToWorld(float3 p) { return mul(unity_ObjectToWorld, float4(p, 1)); };
               float4 TransformWorldToObject(float4 p) { return mul(unity_WorldToObject, p); };
               float4 TransformObjectToWorld(float4 p) { return mul(unity_ObjectToWorld, p); };
               float4x4 GetWorldToObjectMatrix() { return unity_WorldToObject; }
               float4x4 GetObjectToWorldMatrix() { return unity_ObjectToWorld; }
               #if (defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (SHADER_TARGET_SURFACE_ANALYSIS && !SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod) tex.SampleLevel (sampler##tex,coord, lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) tex.SampleLevel (sampler##samplertex,coord, lod)
              #else
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord,lod) tex2D (tex,coord,0,lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord,lod) tex2D (tex,coord,0,lod)
              #endif

               #undef GetWorldToObjectMatrix()

               #define GetWorldToObjectMatrix()   unity_WorldToObject


            #endif

            float3 GetCameraWorldPosition()
            {
               #if _HDRP
                  return GetCameraRelativePositionWS(_WorldSpaceCameraPos);
               #else
                  return _WorldSpaceCameraPos;
               #endif
            }

            #if _GRABPASSUSED
               #if _STANDARD
                  TEXTURE2D(%GRABTEXTURE%);
                  SAMPLER(sampler_%GRABTEXTURE%);
               #endif

               half3 GetSceneColor(float2 uv)
               {
                  #if _STANDARD
                     return SAMPLE_TEXTURE2D(%GRABTEXTURE%, sampler_%GRABTEXTURE%, uv).rgb;
                  #else
                     return SHADERGRAPH_SAMPLE_SCENE_COLOR(uv);
                  #endif
               }
            #endif


      
            #if _STANDARD
               UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
               float GetSceneDepth(float2 uv) { return SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv)); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv)); } 
            #else
               float GetSceneDepth(float2 uv) { return SHADERGRAPH_SAMPLE_SCENE_DEPTH(uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv), _ZBufferParams); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv), _ZBufferParams); } 
            #endif

            float3 GetWorldPositionFromDepthBuffer(float2 uv, float3 worldSpaceViewDir)
            {
               float eye = GetLinearEyeDepth(uv);
               float3 camView = mul((float3x3)GetObjectToWorldMatrix(), transpose(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V)) [2].xyz);

               float dt = dot(worldSpaceViewDir, camView);
               float3 div = worldSpaceViewDir/dt;
               float3 wpos = (eye * div) + GetCameraWorldPosition();
               return wpos;
            }

            #if _HDRP
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return GetAbsolutePositionWS(TransformObjectToWorld(pos));
            }
            #else
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return TransformObjectToWorld(pos);
            }
            #endif

            #if _STANDARD
               UNITY_DECLARE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture);
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  float4 depthNorms = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture, uv);
                  float3 norms = DecodeViewNormalStereo(depthNorms);
                  norms = mul((float3x3)GetWorldToViewMatrix(), norms) * 0.5 + 0.5;
                  return norms;
               }
            #elif _HDRP
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  NormalData nd;
                  DecodeFromNormalBuffer(_ScreenSize.xy * uv, nd);
                  return nd.normalWS;
               }
            #elif _URP
               #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                  #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareNormalsTexture.hlsl"
               #endif

               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                     return SampleSceneNormals(uv);
                  #else
                     float3 wpos = GetWorldPositionFromDepthBuffer(uv, worldSpaceViewDir);
                     return normalize(-cross(ddx(wpos), ddy(wpos))) * 0.5 + 0.5;
                  #endif

                }
             #endif

             #if _HDRP

               half3 UnpackNormalmapRGorAG(half4 packednormal)
               {
                     // This do the trick
                  packednormal.x *= packednormal.w;

                  half3 normal;
                  normal.xy = packednormal.xy * 2 - 1;
                  normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                  return normal;
               }
               half3 UnpackNormal(half4 packednormal)
               {
                  #if defined(UNITY_NO_DXT5nm)
                     return packednormal.xyz * 2 - 1;
                  #else
                     return UnpackNormalmapRGorAG(packednormal);
                  #endif
               }
               #endif
               #if _HDRP || _URP

               half3 UnpackScaleNormal(half4 packednormal, half scale)
               {
                 #ifndef UNITY_NO_DXT5nm
                   // Unpack normal as DXT5nm (1, y, 1, x) or BC5 (x, y, 0, 1)
                   // Note neutral texture like "bump" is (0, 0, 1, 1) to work with both plain RGB normal and DXT5nm/BC5
                   packednormal.x *= packednormal.w;
                 #endif
                   half3 normal;
                   normal.xy = (packednormal.xy * 2 - 1) * scale;
                   normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                   return normal;
               }	

             #endif


            void GetSun(out float3 lightDir, out float3 color)
            {
               lightDir = float3(0.5, 0.5, 0);
               color = 1;
               #if _HDRP
                  if (_DirectionalLightCount > 0)
                  {
                     DirectionalLightData light = _DirectionalLightDatas[0];
                     lightDir = -light.forward.xyz;
                     color = light.color;
                  }
               #elif _STANDARD
			         lightDir = normalize(_WorldSpaceLightPos0.xyz);
                  color = _LightColor0.rgb;
               #elif _URP
	               Light light = GetMainLight();
	               lightDir = light.direction;
	               color = light.color;
               #endif
            }



            

            

            #ifdef unity_WorldToObject
#undef unity_WorldToObject
#endif
#ifdef unity_ObjectToWorld
#undef unity_ObjectToWorld
#endif
#define unity_ObjectToWorld GetObjectToWorldMatrix()
#define unity_WorldToObject GetWorldToObjectMatrix()

	float SGT_ScatteringPhase(float angle, float4 terms, float4 strengths)
	{
		return dot(pow(saturate(angle * sign(terms)), abs(terms)), strengths);
	}

	float4 SGT_SphereShadowColor(float4x4 shadowMatrix, float4 shadowPower, float4 worldPoint)
	{
		float4 shadowPoint = mul(shadowMatrix, worldPoint);
		float  shadowMag   = length(shadowPoint.xy);

		//shadowMag = 1.0f - (1.0f - shadowMag) * shadowRatio;

		//float4 shadow = 1.0f - pow(1.0f - shadowMag, shadowPower);
		float4 shadow = pow(shadowMag, shadowPower);

		shadow += shadowPoint.z < 0.0f;

		return saturate(shadow);
	}

	float4 SGT_RingShadowColor(float4x4 shadowMatrix, sampler2D shadowSampler, float shadowRatio, float4 worldPoint)
	{
		float4 shadowPoint = mul(shadowMatrix, worldPoint);
		float  shadowMag   = length(shadowPoint.xy);

		shadowMag = 1.0f - (1.0f - shadowMag) * shadowRatio;

		float4 shadow = tex2D(shadowSampler, shadowMag.xx);

		shadow += shadowPoint.z < 0.0f;

		return saturate(shadow);
	}

	float4 SGT_ShadowColor(float3 worldPoint3)
	{
		float4 worldPoint = float4(worldPoint3, 1.0f);
		float4 color      = 1.0f;

		for (int s = 0; s < _SGT_SphereShadowCount; s++)
		{
			color *= SGT_SphereShadowColor(_SGT_SphereShadowMatrix[s], _SGT_SphereShadowPower[s], worldPoint);
		}

		for (int r = 0; r < _SGT_RingShadowCount; r++)
		{
			color *= SGT_RingShadowColor(_SGT_RingShadowMatrix[r], _SGT_RingShadowTexture, _SGT_RingShadowRatio[r], worldPoint);
		}

		return color;
	}


	float4 SGT_O2W(float4 v)
	{
		v = mul(GetObjectToWorldMatrix(), v);
		#if _HDRP
			v.xyz = GetAbsolutePositionWS(v.xyz);
		#endif
		return v;
	}
	float4 SGT_W2O(float4 v)
	{
		#if _HDRP
			v.xyz = GetCameraRelativePositionWS(v.xyz);
		#endif
		return mul(GetWorldToObjectMatrix(), v);
	}

	float4 SGT_O2V(float4 v)
	{
		#if _STANDARD
			return float4(UnityObjectToViewPos(v.xyz), 1.0f);
		#else
			return float4(TransformWorldToView(TransformObjectToWorld(v.xyz)), 1.0f);
		#endif
	}
	float4 SGT_V2O(float4 v)
	{
		return mul(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V), v);
	}

	float4 SGT_W2V(float4 v)
	{
		#if _STANDARD
			return mul(GetWorldToViewMatrix(), v);
		#else
			return float4(TransformWorldToView(v.xyz), 1.0f);
		#endif
	}
	float4 SGT_V2M(float4 v)
	{
		v = mul(UNITY_MATRIX_I_V, v);
		#if _HDRP
			v.xyz = GetAbsolutePositionWS(v.xyz);
		#endif
		return v;
	}

	float4 SGT_W2P(float4 v)
	{
		#if _HDRP
			v.xyz = GetCameraRelativePositionWS(v.xyz);
		#endif
		#if _STANDARD
			return mul(GetWorldToHClipMatrix(), v);
		#else
			return TransformWorldToHClip(v.xyz);
		#endif
	}


	float4 SGT_ModifyUnlitOutput(float4 finalColor)
	{
		#if _HDRP
			finalColor.xyz *= 25000.0f;
		#endif
		return finalColor;
	}

	void SGT_OutputWithoutAlpha(inout Surface o, float4 finalColor)
	{
		#if _HDRP
			o.Emission = finalColor.xyz;
			o.Albedo   = 0.0f;
		#elif _URP
			o.Emission = finalColor.xyz;
			o.Albedo   = finalColor.xyz;
		#else
			o.Albedo = finalColor.xyz;
		#endif
	}

	void SGT_OutputWithAlpha(inout Surface o, float4 finalColor)
	{
		SGT_OutputWithoutAlpha(o, finalColor);

		o.Alpha = finalColor.w;
	}


	float SGT_GetOutsideDistance(float3 ray, float3 rayD)
	{
		float B = dot(ray, rayD);
		float C = dot(ray, ray) - 1.0f;
		float D = B * B - C;
		return -B - sqrt(max(D, 0.0f));
	}

	float SGT_GetOutsideDistance2(float3 ray, float3 rayD)
	{
		float B = dot(ray, rayD);
		float C = dot(ray, ray) - 1.0f;
		float D = B * B - C;
		return max(-B - sqrt(max(D, 0.0f)), 0.0f);
	}

	float3 SGT_GetNear(float3 far)
	{
		float3 wcam = _WorldSpaceCameraPos;
		float3 near = mul(_SGT_WorldToLocal, float4(wcam, 1.0f)).xyz;
		float3 dir  = normalize(far - near);

		return near + dir * SGT_GetOutsideDistance2(near, dir);
	}

	void ModifyInnerVertex(inout VertexData v, inout ExtraV2F e)
	{
		#if __SGT_MATRIX
			float3 wcam = _WorldSpaceCameraPos;
			float4 wpos = SGT_O2W(v.vertex);
			float3 far  = mul(_SGT_WorldToLocal, wpos).xyz;
			float3 near = mul(_SGT_WorldToLocal, float4(wcam, 1.0f)).xyz;

			float3 nearFar = far - near;
			float3 dir     = normalize(nearFar);
			float  depthA  = length(nearFar);
			float  depthB  = SGT_GetOutsideDistance(near, dir);
			near += dir * max(depthB, 0.0f);
			float depth = length(near - far);

			v.texcoord0.x   = depth * _SGT_HorizonLengthRecip;
			v.texcoord0.y   = (length(far) - _SGT_InnerRatio) * _SGT_InnerScale; // Altitude
			v.texcoord1.xyz = mul((float3x3)_SGT_LocalToWorld, near);
		#endif
	}

	void ModifyOuterVertex(inout VertexData v, inout ExtraV2F e)
	{
		#if __SGT_MATRIX
			float4 wPos = SGT_O2W(v.vertex);
			float3 far  = mul(_SGT_WorldToLocal, wPos).xyz;
			float3 near = SGT_GetNear(far);

			v.texcoord0.xy = length(near - far) * _SGT_HorizonLengthRecip;

			#if _SGT_SOFTNESS
				v.texcoord1.z = -SGT_O2V(v.vertex).z;
			#endif

			v.texcoord2.xyz = mul((float3x3)_SGT_LocalToWorld, near);
		#endif
	}

	void Ext_ModifyVertex0 (inout VertexData v, inout ExtraV2F e)
	{
		#if _SGT_OUTER
			ModifyOuterVertex(v, e);
		#else
			ModifyInnerVertex(v, e);
		#endif
	}

	void SurfaceInnerFunction(inout Surface o, inout ShaderData d)
	{
		#if __SGT_OUTPUT
			float4 depth = tex2D(_SGT_InnerDepthTex, d.texcoord0.xx);
			float4 main  = depth * _SGT_Color;
			float3 wcam  = _WorldSpaceCameraPos;
			float3 wnorm = normalize(d.texcoord1.xyz);

			main.rgb *= _SGT_Brightness;
			main.a   *= smoothstep(1.0f, 0.0f, saturate(d.texcoord0.y));

			float4 finalColor = main;

			#if __SGT_LIGHTANDSHADOW
				#if _SGT_LIGHTING
					finalColor.rgb *= _SGT_AmbientColor;

					float4 lighting   = 0.0f;
					float4 scattering = 0.0f;

					for (int i = 0; i < _SGT_LightCount; i++)
					{
						float theta = dot(wnorm, _SGT_LightDirection[i]) * 0.5f + 0.5f;

						lighting += tex2D(_SGT_LightingTex, theta) * main * _SGT_LightColor[i];

						#if _SGT_SCATTERING
							float3 worldViewDir  = normalize(d.worldSpacePosition - wcam);
							float3 worldLightDir = normalize(_SGT_LightPosition[i].xyz - wcam);
							float  angle         = dot(worldViewDir, worldLightDir);
							float  phase         = SGT_ScatteringPhase(angle, _SGT_ScatteringTerms, _SGT_ScatteringInner);

							scattering += tex2D(_SGT_ScatteringTex, theta) * _SGT_LightColor[i] * phase;
						#endif
					}

					#if _SGT_SCATTERING
						#if _SGT_HDR || _HDRP
							scattering *= main;
							lighting.xyz += scattering.xyz;
						#else
							scattering *= finalColor.a; // Fade scattering out according to optical depth
							scattering *= saturate(1.0f - (finalColor + lighting)); // Only scatter into remaining rgba
							lighting += scattering;
						#endif
					#endif

					finalColor += lighting * saturate(SGT_ShadowColor(d.worldSpacePosition) + finalColor.a * 0.5f);
					//finalColor += lighting * lerp(SGT_ShadowColor(d.worldSpacePosition), 1.0f, finalColor.a);
					finalColor.a = saturate(finalColor.a);
				#else
					finalColor = SGT_ModifyUnlitOutput(finalColor);
				#endif
			#endif

			SGT_OutputWithAlpha(o, finalColor);
		#endif
	}

	void SurfaceOuterFunction(inout Surface o, inout ShaderData d)
	{
		#if __SGT_OUTPUT
			float4 depth = tex2D(_SGT_OuterDepthTex, d.texcoord0.xx); depth.a = saturate(depth.a + (1.0f - depth.a) * _SGT_Sky);
			float4 main  = depth * _SGT_Color;
			float3 wcam  = _WorldSpaceCameraPos;
			float3 wnorm = normalize(d.texcoord2.xyz);

			main.rgb *= _SGT_Brightness;

			#if _SGT_SOFTNESS
				float sceneZ = GetLinearEyeDepth(d.screenUV);
				float partZ = d.texcoord1.z;

				main.a *= smoothstep(0.0f, 1.0f, _SGT_SoftParticlesFactor * abs(sceneZ - partZ));
			#endif

			float4 finalColor = main;

			#if __SGT_LIGHTANDSHADOW
				#if _SGT_LIGHTING
					finalColor.rgb *= _SGT_AmbientColor;

					float4 lighting   = 0.0f;
					float4 scattering = 0.0f;

					for (int i = 0; i < _SGT_LightCount; i++)
					{
						float theta = dot(wnorm, _SGT_LightDirection[i]) * 0.5f + 0.5f;

						lighting += tex2D(_SGT_LightingTex, theta) * main * _SGT_LightColor[i];

						#if _SGT_SCATTERING
							float3 worldViewDir  = normalize(d.worldSpacePosition - wcam);
							float3 worldLightDir = normalize(_SGT_LightPosition[i].xyz - wcam);
							float  angle         = dot(worldViewDir, worldLightDir);
							float  phase         = SGT_ScatteringPhase(angle, _SGT_ScatteringTerms, _SGT_ScatteringOuter);

							scattering += tex2D(_SGT_ScatteringTex, theta) * _SGT_LightColor[i] * phase;
						#endif
					}

					#if _SGT_SCATTERING
						#if _SGT_HDR || _HDRP
							scattering *= main;
							lighting.xyz += scattering.xyz;
						#else
							scattering *= finalColor.a; // Fade scattering out according to optical depth
							scattering *= saturate(1.0f - (finalColor + lighting)); // Only scatter into remaining rgba
							lighting += scattering;
						#endif
					#endif

					finalColor += lighting * SGT_ShadowColor(d.worldSpacePosition);
					finalColor.a = saturate(main.a);
				#else
					finalColor = SGT_ModifyUnlitOutput(finalColor);
				#endif
			#endif

			SGT_OutputWithAlpha(o, finalColor);
		#endif
	}

	void Ext_SurfaceFunction0 (inout Surface o, inout ShaderData d)
	{
		#if _SGT_OUTER
			SurfaceOuterFunction(o, d);
		#else
			SurfaceInnerFunction(o, d);
		#endif
	}







        
            void ChainSurfaceFunction(inout Surface l, inout ShaderData d)
            {
                  Ext_SurfaceFunction0(l, d);
                 // Ext_SurfaceFunction1(l, d);
                 // Ext_SurfaceFunction2(l, d);
                 // Ext_SurfaceFunction3(l, d);
                 // Ext_SurfaceFunction4(l, d);
                 // Ext_SurfaceFunction5(l, d);
                 // Ext_SurfaceFunction6(l, d);
                 // Ext_SurfaceFunction7(l, d);
                 // Ext_SurfaceFunction8(l, d);
                 // Ext_SurfaceFunction9(l, d);
		           // Ext_SurfaceFunction10(l, d);
                 // Ext_SurfaceFunction11(l, d);
                 // Ext_SurfaceFunction12(l, d);
                 // Ext_SurfaceFunction13(l, d);
                 // Ext_SurfaceFunction14(l, d);
                 // Ext_SurfaceFunction15(l, d);
                 // Ext_SurfaceFunction16(l, d);
                 // Ext_SurfaceFunction17(l, d);
                 // Ext_SurfaceFunction18(l, d);
		           // Ext_SurfaceFunction19(l, d);
                 // Ext_SurfaceFunction20(l, d);
                 // Ext_SurfaceFunction21(l, d);
                 // Ext_SurfaceFunction22(l, d);
                 // Ext_SurfaceFunction23(l, d);
                 // Ext_SurfaceFunction24(l, d);
                 // Ext_SurfaceFunction25(l, d);
                 // Ext_SurfaceFunction26(l, d);
                 // Ext_SurfaceFunction27(l, d);
                 // Ext_SurfaceFunction28(l, d);
		           // Ext_SurfaceFunction29(l, d);
            }

            void ChainModifyVertex(inout VertexData v, inout VertexToPixel v2p, float4 time)
            {
                 ExtraV2F d;
                 
                 ZERO_INITIALIZE(ExtraV2F, d);
                 ZERO_INITIALIZE(Blackboard, d.blackboard);
                 // due to motion vectors in HDRP, we need to use the last
                 // time in certain spots. So if you are going to use _Time to adjust vertices,
                 // you need to use this time or motion vectors will break. 
                 d.time = time;

                   Ext_ModifyVertex0(v, d);
                 // Ext_ModifyVertex1(v, d);
                 // Ext_ModifyVertex2(v, d);
                 // Ext_ModifyVertex3(v, d);
                 // Ext_ModifyVertex4(v, d);
                 // Ext_ModifyVertex5(v, d);
                 // Ext_ModifyVertex6(v, d);
                 // Ext_ModifyVertex7(v, d);
                 // Ext_ModifyVertex8(v, d);
                 // Ext_ModifyVertex9(v, d);
                 // Ext_ModifyVertex10(v, d);
                 // Ext_ModifyVertex11(v, d);
                 // Ext_ModifyVertex12(v, d);
                 // Ext_ModifyVertex13(v, d);
                 // Ext_ModifyVertex14(v, d);
                 // Ext_ModifyVertex15(v, d);
                 // Ext_ModifyVertex16(v, d);
                 // Ext_ModifyVertex17(v, d);
                 // Ext_ModifyVertex18(v, d);
                 // Ext_ModifyVertex19(v, d);
                 // Ext_ModifyVertex20(v, d);
                 // Ext_ModifyVertex21(v, d);
                 // Ext_ModifyVertex22(v, d);
                 // Ext_ModifyVertex23(v, d);
                 // Ext_ModifyVertex24(v, d);
                 // Ext_ModifyVertex25(v, d);
                 // Ext_ModifyVertex26(v, d);
                 // Ext_ModifyVertex27(v, d);
                 // Ext_ModifyVertex28(v, d);
                 // Ext_ModifyVertex29(v, d);


                 // #if %EXTRAV2F0REQUIREKEY%
                 // v2p.extraV2F0 = d.extraV2F0;
                 // #endif

                 // #if %EXTRAV2F1REQUIREKEY%
                 // v2p.extraV2F1 = d.extraV2F1;
                 // #endif

                 // #if %EXTRAV2F2REQUIREKEY%
                 // v2p.extraV2F2 = d.extraV2F2;
                 // #endif

                 // #if %EXTRAV2F3REQUIREKEY%
                 // v2p.extraV2F3 = d.extraV2F3;
                 // #endif

                 // #if %EXTRAV2F4REQUIREKEY%
                 // v2p.extraV2F4 = d.extraV2F4;
                 // #endif

                 // #if %EXTRAV2F5REQUIREKEY%
                 // v2p.extraV2F5 = d.extraV2F5;
                 // #endif

                 // #if %EXTRAV2F6REQUIREKEY%
                 // v2p.extraV2F6 = d.extraV2F6;
                 // #endif

                 // #if %EXTRAV2F7REQUIREKEY%
                 // v2p.extraV2F7 = d.extraV2F7;
                 // #endif
            }

            void ChainModifyTessellatedVertex(inout VertexData v, inout VertexToPixel v2p)
            {
               ExtraV2F d;
               ZERO_INITIALIZE(ExtraV2F, d);
               ZERO_INITIALIZE(Blackboard, d.blackboard);

               // #if %EXTRAV2F0REQUIREKEY%
               // d.extraV2F0 = v2p.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // d.extraV2F1 = v2p.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // d.extraV2F2 = v2p.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // d.extraV2F3 = v2p.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // d.extraV2F4 = v2p.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // d.extraV2F5 = v2p.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // d.extraV2F6 = v2p.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // d.extraV2F7 = v2p.extraV2F7;
               // #endif


               // Ext_ModifyTessellatedVertex0(v, d);
               // Ext_ModifyTessellatedVertex1(v, d);
               // Ext_ModifyTessellatedVertex2(v, d);
               // Ext_ModifyTessellatedVertex3(v, d);
               // Ext_ModifyTessellatedVertex4(v, d);
               // Ext_ModifyTessellatedVertex5(v, d);
               // Ext_ModifyTessellatedVertex6(v, d);
               // Ext_ModifyTessellatedVertex7(v, d);
               // Ext_ModifyTessellatedVertex8(v, d);
               // Ext_ModifyTessellatedVertex9(v, d);
               // Ext_ModifyTessellatedVertex10(v, d);
               // Ext_ModifyTessellatedVertex11(v, d);
               // Ext_ModifyTessellatedVertex12(v, d);
               // Ext_ModifyTessellatedVertex13(v, d);
               // Ext_ModifyTessellatedVertex14(v, d);
               // Ext_ModifyTessellatedVertex15(v, d);
               // Ext_ModifyTessellatedVertex16(v, d);
               // Ext_ModifyTessellatedVertex17(v, d);
               // Ext_ModifyTessellatedVertex18(v, d);
               // Ext_ModifyTessellatedVertex19(v, d);
               // Ext_ModifyTessellatedVertex20(v, d);
               // Ext_ModifyTessellatedVertex21(v, d);
               // Ext_ModifyTessellatedVertex22(v, d);
               // Ext_ModifyTessellatedVertex23(v, d);
               // Ext_ModifyTessellatedVertex24(v, d);
               // Ext_ModifyTessellatedVertex25(v, d);
               // Ext_ModifyTessellatedVertex26(v, d);
               // Ext_ModifyTessellatedVertex27(v, d);
               // Ext_ModifyTessellatedVertex28(v, d);
               // Ext_ModifyTessellatedVertex29(v, d);

               // #if %EXTRAV2F0REQUIREKEY%
               // v2p.extraV2F0 = d.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // v2p.extraV2F1 = d.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // v2p.extraV2F2 = d.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // v2p.extraV2F3 = d.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // v2p.extraV2F4 = d.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // v2p.extraV2F5 = d.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // v2p.extraV2F6 = d.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // v2p.extraV2F7 = d.extraV2F7;
               // #endif
            }

            void ChainFinalColorForward(inout Surface l, inout ShaderData d, inout half4 color)
            {
               //   Ext_FinalColorForward0(l, d, color);
               //   Ext_FinalColorForward1(l, d, color);
               //   Ext_FinalColorForward2(l, d, color);
               //   Ext_FinalColorForward3(l, d, color);
               //   Ext_FinalColorForward4(l, d, color);
               //   Ext_FinalColorForward5(l, d, color);
               //   Ext_FinalColorForward6(l, d, color);
               //   Ext_FinalColorForward7(l, d, color);
               //   Ext_FinalColorForward8(l, d, color);
               //   Ext_FinalColorForward9(l, d, color);
               //  Ext_FinalColorForward10(l, d, color);
               //  Ext_FinalColorForward11(l, d, color);
               //  Ext_FinalColorForward12(l, d, color);
               //  Ext_FinalColorForward13(l, d, color);
               //  Ext_FinalColorForward14(l, d, color);
               //  Ext_FinalColorForward15(l, d, color);
               //  Ext_FinalColorForward16(l, d, color);
               //  Ext_FinalColorForward17(l, d, color);
               //  Ext_FinalColorForward18(l, d, color);
               //  Ext_FinalColorForward19(l, d, color);
               //  Ext_FinalColorForward20(l, d, color);
               //  Ext_FinalColorForward21(l, d, color);
               //  Ext_FinalColorForward22(l, d, color);
               //  Ext_FinalColorForward23(l, d, color);
               //  Ext_FinalColorForward24(l, d, color);
               //  Ext_FinalColorForward25(l, d, color);
               //  Ext_FinalColorForward26(l, d, color);
               //  Ext_FinalColorForward27(l, d, color);
               //  Ext_FinalColorForward28(l, d, color);
               //  Ext_FinalColorForward29(l, d, color);
            }

            void ChainFinalGBufferStandard(inout Surface s, inout ShaderData d, inout half4 GBuffer0, inout half4 GBuffer1, inout half4 GBuffer2, inout half4 outEmission, inout half4 outShadowMask)
            {
               //   Ext_FinalGBufferStandard0(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard1(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard2(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard3(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard4(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard5(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard6(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard7(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard8(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard9(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard10(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard11(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard12(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard13(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard14(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard15(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard16(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard17(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard18(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard19(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard20(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard21(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard22(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard23(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard24(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard25(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard26(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard27(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard28(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard29(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
            }



            

         ShaderData CreateShaderData(VertexToPixel i
                  #if NEED_FACING
                     , bool facing
                  #endif
         )
         {
            ShaderData d = (ShaderData)0;
            d.clipPos = i.pos;
            d.worldSpacePosition = i.worldPos;

            d.worldSpaceNormal = normalize(i.worldNormal);
            d.worldSpaceTangent = normalize(i.worldTangent.xyz);
            d.tangentSign = i.worldTangent.w;
            float3 bitangent = cross(i.worldTangent.xyz, i.worldNormal) * d.tangentSign * -1;
            

            d.TBNMatrix = float3x3(d.worldSpaceTangent, bitangent, d.worldSpaceNormal);
            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - i.worldPos);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);
             d.texcoord0 = i.texcoord0;
             d.texcoord1 = i.texcoord1;
             d.texcoord2 = i.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
            // d.texcoord3 = i.texcoord3;
            // #endif

            // d.isFrontFace = facing;
            // #if %VERTEXCOLORREQUIREKEY%
            // d.vertexColor = i.vertexColor;
            // #endif

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(unity_WorldToObject, float4(GetCameraRelativePositionWS(i.worldPos), 1)).xyz;
            #else
                // d.localSpacePosition = mul(unity_WorldToObject, float4(i.worldPos, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)unity_WorldToObject, i.worldNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)unity_WorldToObject, i.worldTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
             d.screenPos = i.screenPos;
             d.screenUV = (i.screenPos.xy / i.screenPos.w);
            // #endif


            // #if %EXTRAV2F0REQUIREKEY%
            // d.extraV2F0 = i.extraV2F0;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
            // d.extraV2F1 = i.extraV2F1;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
            // d.extraV2F2 = i.extraV2F2;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
            // d.extraV2F3 = i.extraV2F3;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // d.extraV2F4 = i.extraV2F4;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // d.extraV2F5 = i.extraV2F5;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // d.extraV2F6 = i.extraV2F6;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // d.extraV2F7 = i.extraV2F7;
            // #endif

            return d;
         }
         

            

#if (SHADERPASS == SHADERPASS_LIGHT_TRANSPORT)

   // This was not in constant buffer in original unity, so keep outiside. But should be in as ShaderRenderPass frequency
   float unity_OneOverOutputBoost;
   float unity_MaxOutputValue;

   CBUFFER_START(UnityMetaPass)
   // x = use uv1 as raster position
   // y = use uv2 as raster position
   bool4 unity_MetaVertexControl;

   // x = return albedo
   // y = return normal
   bool4 unity_MetaFragmentControl;
   CBUFFER_END

   VertexToPixel Vert(VertexData inputMesh)
   {
       VertexToPixel output;
       ZERO_INITIALIZE(VertexToPixel, output);
       UNITY_SETUP_INSTANCE_ID(inputMesh);
       UNITY_TRANSFER_INSTANCE_ID(inputMesh, output);
       UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

       // Output UV coordinate in vertex shader
       float2 uv = float2(0.0, 0.0);

       if (unity_MetaVertexControl.x)
       {
           uv = inputMesh.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
       }
       else if (unity_MetaVertexControl.y)
       {
           uv = inputMesh.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
       }

       // OpenGL right now needs to actually use the incoming vertex position
       // so we create a fake dependency on it here that haven't any impact.
       output.pos = float4(uv * 2.0 - 1.0, inputMesh.vertex.z > 0 ? 1.0e-4 : 0.0, 1.0);

       output.worldPos = TransformObjectToWorld(inputMesh.vertex.xyz).xyz;

       // Normal is required for triplanar mapping
       output.worldNormal = TransformObjectToWorldNormal(inputMesh.normal);
       // Not required but assign to silent compiler warning
       output.worldTangent = float4(1.0, 0.0, 0.0, 0.0);

       output.texcoord0 = inputMesh.texcoord0;
       output.texcoord1 = inputMesh.texcoord1;
       output.texcoord2 = inputMesh.texcoord2;
       // #if %TEXCOORD3REQUIREKEY%
       // output.texcoord3 = inputMesh.texcoord3;
       // #endif
       // #if %VERTEXCOLORREQUIREKEY%
       // output.vertexColor = inputMesh.vertexColor;
       // #endif

       return output;
   }
#else

   #if (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
      #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariablesMatrixDefsHDCamera.hlsl"

      void MotionVectorPositionZBias(VertexToPixel input)
      {
      #if UNITY_REVERSED_Z
          input.pos.z -= unity_MotionVectorsParams.z * input.pos.w;
      #else
          input.pos.z += unity_MotionVectorsParams.z * input.pos.w;
      #endif
      }

   #endif

   VertexToPixel Vert(VertexData input)
   {
       VertexToPixel output;
       ZERO_INITIALIZE(VertexToPixel, output);

       UNITY_SETUP_INSTANCE_ID(input);
       UNITY_TRANSFER_INSTANCE_ID(input, output);
       UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

       #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
         VertexData previousMesh = input;
       #endif

       ChainModifyVertex(input, output, _Time);

       // This return the camera relative position (if enable)
       float3 positionRWS = TransformObjectToWorld(input.vertex.xyz);
       float3 normalWS = TransformObjectToWorldNormal(input.normal);
       float4 tangentWS = float4(TransformObjectToWorldDir(input.tangent.xyz), input.tangent.w);


       output.worldPos = GetAbsolutePositionWS(positionRWS);
       output.pos = TransformWorldToHClip(positionRWS);
       output.worldNormal = normalWS;
       output.worldTangent = tangentWS;


       output.texcoord0 = input.texcoord0;
       output.texcoord1 = input.texcoord1;
       output.texcoord2 = input.texcoord2;

       // #if %TEXCOORD3REQUIREKEY%
       // output.texcoord3 = input.texcoord3;
       // #endif

       // #if %VERTEXCOLORREQUIREKEY%
       // output.vertexColor = input.vertexColor;
       // #endif

       // #if %SCREENPOSREQUIREKEY%
        output.screenPos = ComputeScreenPos(output.pos, _ProjectionParams.x);
       // #endif
   
       #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))

          #if !defined(TESSELLATION_ON)
            MotionVectorPositionZBias(output);
          #endif

          output.motionVectorCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(positionRWS.xyz, 1.0));
          // Note: unity_MotionVectorsParams.y is 0 is forceNoMotion is enabled
          bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
          if (forceNoMotion)
          {
              output.previousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
          }
          else
          {
            bool hasDeformation = unity_MotionVectorsParams.x > 0.0; // Skin or morph target

            float3 effectivePositionOS = (hasDeformation ? previousMesh.previousPositionOS : previousMesh.vertex.xyz);
            #if defined(_ADD_PRECOMPUTED_VELOCITY)
               effectivePositionOS -= input.precomputedVelocity;
            #endif

            previousMesh.vertex = float4(effectivePositionOS, 1);
            VertexToPixel dummy = (VertexToPixel)0;
            

            ChainModifyVertex(previousMesh, dummy, _LastTimeParameters);

            // we might need this for skinned objects?
            //float3 normalWS = TransformPreviousObjectToWorldNormal(input.normal).xyz;
            float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.vertex.xyz);

            #ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
            if (_TransparentCameraOnlyMotionVectors > 0)
            {
               previousPositionRWS = positionRWS.xyz;
            }
            #endif // _WRITE_TRANSPARENT_MOTION_VECTOR

            output.previousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
         }
       #endif // _HDRP && _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))


       return output;
   }


#endif



            

            

               #if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
                  #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalPrepassBuffer.hlsl"
               #endif

                FragInputs BuildFragInputs(VertexToPixel input)
                {
                    UNITY_SETUP_INSTANCE_ID(input);
                    FragInputs output;
                    ZERO_INITIALIZE(FragInputs, output);
            
                    // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                    // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                    // to compute normals which are then passed on elsewhere to compute other values...
                    output.tangentToWorld = k_identity3x3;
                    output.positionSS = input.pos;       // input.positionCS is SV_Position
                    // BETTER SHADERS: because we transform world position into actual world space for things like
                    // triplanar, etc, we have to back transform it here for lighting
                    output.positionRWS = GetCameraRelativePositionWS(input.worldPos);
                    output.tangentToWorld = BuildTangentToWorld(input.worldTangent, input.worldNormal);
                    output.texCoord0 = input.texcoord0;
                    output.texCoord1 = input.texcoord1;
                    output.texCoord2 = input.texcoord2;
            
                    return output;
                }
            
               void BuildSurfaceData(FragInputs fragInputs, inout Surface surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
               {
                   // setup defaults -- these are used if the graph doesn't output a value
                   ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                   // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                   // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                   surfaceData.specularOcclusion = 1.0;

                   // copy across graph values, if defined
                   surfaceData.baseColor =                 surfaceDescription.Albedo;
                   surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                   surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                   surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                   surfaceData.metallic =                  surfaceDescription.Metallic;
                   surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                   surfaceData.thickness =                 surfaceDescription.Thickness;
                   surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                   #if _USESPECULAR
                      surfaceData.specularColor =             surfaceDescription.Specular;
                   #endif
                   surfaceData.coatMask =                  surfaceDescription.CoatMask;
                   surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                   surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                   surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;



                   #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                        if (_EnableSSRefraction)
                        {
                            surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                            surfaceDescription.Alpha = 1.0;
                        }
                        else
                        {
                            surfaceData.ior = 1.0;
                            surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                            surfaceData.atDistance = 1.0;
                            surfaceData.transmittanceMask = 0.0;
                            surfaceDescription.Alpha = 1.0;
                        }
                    #else
                        surfaceData.ior = 1.0;
                        surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                        surfaceData.atDistance = 1.0;
                        surfaceData.transmittanceMask = 0.0;
                    #endif

                    

                    // These static material feature allow compile time optimization
                    surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
                    #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_TRANSMISSION
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_ANISOTROPY
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
                        surfaceData.normalWS = float3(0, 1, 0);
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
                    #endif
                
                    #if defined(_MATERIAL_FEATURE_CLEAR_COAT) || _CLEARCOAT
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
                    #endif
                
                    #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                        // Require to have setup baseColor
                        // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                        surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
                    #endif
                


                   // compute world space normal
                   #if !_WORLDSPACENORMAL
                      surfaceData.normalWS = mul(surfaceDescription.Normal, fragInputs.tangentToWorld);
                   #else
                      surfaceData.normalWS = surfaceDescription.Normal;
                   #endif

                   surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                   surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT

         
                    #if HAVE_DECALS
                        if (_EnableDecals)
                        {
                            float alpha = 1.0;
                            alpha = surfaceDescription.Alpha;
                
                            // Both uses and modifies 'surfaceData.normalWS'.
                            DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], alpha);
                            ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
                        }
                    #endif
                
                    bentNormalWS = surfaceData.normalWS;
                
                    surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
                
                    #ifdef DEBUG_DISPLAY
                        if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                        {
                            // TODO: need to update mip info
                            surfaceData.metallic = 0;
                        }
                
                        // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                        // as it can modify attribute use for static lighting
                        ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
                    #endif
                
                    // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                    // If user provide bent normal then we process a better term
                    #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                        // Just use the value passed through via the slot (not active otherwise)
                    #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                        // If we have bent normal and ambient occlusion, process a specular occlusion
                        surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                    #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                        surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                    #endif
                
                    #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                        surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
                    #endif
               }
        
               void GetSurfaceAndBuiltinData(VertexToPixel m2ps, FragInputs fragInputs, float3 V, inout PositionInputs posInput,
                     out SurfaceData surfaceData, out BuiltinData builtinData, inout Surface l, inout ShaderData d
                     #if NEED_FACING
                        , bool facing
                     #endif
                  )
               {
                 // Removed since crossfade does not work, probably needs extra material setup.   
                 //#if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                 //   #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                 //      LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                 //   #endif
                 //#endif

                 d = CreateShaderData(m2ps
                    #if NEED_FACING
                       , facing
                    #endif
                 );

                 l = (Surface)0;

                 l.Albedo = half3(0.5, 0.5, 0.5);
                 l.Normal = float3(0,0,1);
                 l.Occlusion = 1;
                 l.Alpha = 1;
                 l.SpecularOcclusion = 1;

                 #if !defined(SHADER_STAGE_RAY_TRACING) && defined(_DEPTHOFFSET_ON)
                    l.outputDepth = d.clipPos.z;
                 #endif

                 ChainSurfaceFunction(l, d);

                 #if !defined(SHADER_STAGE_RAY_TRACING) && defined(_DEPTHOFFSET_ON)
                    //posInput.deviceDepth = l.outputDepth;
                 #endif

                 #if _UNLIT
                     //l.Emission = l.Albedo;
                     //l.Albedo = 0;
                     l.Normal = half3(0,0,1);
                     l.Occlusion = 1;
                     l.Metallic = 0;
                     l.Specular = 0;
                 #endif

                 surfaceData.geomNormalWS = d.worldSpaceNormal;
                 surfaceData.tangentWS = d.worldSpaceTangent;
                 fragInputs.tangentToWorld = d.TBNMatrix;

                 float3 bentNormalWS;
                 BuildSurfaceData(fragInputs, l, V, posInput, surfaceData, bentNormalWS);


                 InitBuiltinData(posInput, l.Alpha, bentNormalWS, -d.worldSpaceNormal, fragInputs.texCoord1, fragInputs.texCoord2, builtinData);

                 

                 builtinData.emissiveColor = l.Emission;

                 #if defined(_OVERRIDE_BAKEDGI)
                    builtinData.bakeDiffuseLighting = l.DiffuseGI;
                    builtinData.backBakeDiffuseLighting = l.BackDiffuseGI;
                    builtinData.emissiveColor += l.SpecularGI;
                 #endif

                 #if defined(_OVERRIDE_SHADOWMASK)
                    builtinData.shadowMask0 = l.ShadowMask.x;
                    builtinData.shadowMask1 = l.ShadowMask.y;
                    builtinData.shadowMask2 = l.ShadowMask.z;
                    builtinData.shadowMask3 = l.ShadowMask.w;
                 #endif

                  #ifdef UNITY_VIRTUAL_TEXTURING
                     builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                  #endif

                  #if (SHADERPASS == SHADERPASS_DISTORTION)
                     builtinData.distortion = surfaceData.Distortion;
                     builtinData.distortionBlur = surfaceData.DistortionBlur;
                  #endif

                  #ifndef SHADER_UNLIT
                    // PostInitBuiltinData call ApplyDebugToBuiltinData
                    PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                  #else
                    ApplyDebugToBuiltinData(builtinData);
                  #endif
         
                  RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
               }


              #if defined(WRITE_NORMAL_BUFFER) && defined(WRITE_MSAA_DEPTH)
              #define SV_TARGET_DECAL SV_Target2
              #elif defined(WRITE_NORMAL_BUFFER) || defined(WRITE_MSAA_DEPTH)
              #define SV_TARGET_DECAL SV_Target1
              #else
              #define SV_TARGET_DECAL SV_Target0
              #endif


              void Frag(  VertexToPixel v2p
                          #if defined(SCENESELECTIONPASS) || defined(SCENEPICKINGPASS)
                          , out float4 outColor : SV_Target0
                          #else
                          #ifdef WRITE_MSAA_DEPTH
                            // We need the depth color as SV_Target0 for alpha to coverage
                            , out float4 depthColor : SV_Target0
                                #ifdef WRITE_NORMAL_BUFFER
                                , out float4 outNormalBuffer : SV_Target1
                                #endif
                            #else
                                #ifdef WRITE_NORMAL_BUFFER
                                , out float4 outNormalBuffer : SV_Target0
                                #endif
                            #endif

                            // Decal buffer must be last as it is bind but we can optionally write into it (based on _DISABLE_DECALS)
                            #if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
                            , out float4 outDecalBuffer : SV_TARGET_DECAL
                            #endif
                        #endif

                        #if defined(_DEPTHOFFSET_ON) && !defined(SCENEPICKINGPASS)
                        , out float outputDepth : SV_Depth
                        #endif
                        #if NEED_FACING
                           , bool facing : SV_IsFrontFace
                        #endif
                      )
              {
                  UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(v2p);
                  FragInputs input = BuildFragInputs(v2p);

                  // input.positionSS is SV_Position
                  PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

      
                  float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);
    

                  SurfaceData surfaceData;
                  BuiltinData builtinData;
                  Surface l;
                  ShaderData d;
                  GetSurfaceAndBuiltinData(v2p, input, V, posInput, surfaceData, builtinData, l, d
               #if NEED_FACING
                  , facing
               #endif
               );


                  #ifdef _DEPTHOFFSET_ON
                     outputDepth = l.outputDepth;
                  #endif

                  #ifdef SCENESELECTIONPASS
                      // We use depth prepass for scene selection in the editor, this code allow to output the outline correctly
                      outColor = float4(_ObjectId, _PassValue, 1.0, 1.0);
                  #elif defined(SCENEPICKINGPASS)
                      outColor = _SelectionID;
                  #else
                     #ifdef WRITE_MSAA_DEPTH
                       // In case we are rendering in MSAA, reading the an MSAA depth buffer is way too expensive. To avoid that, we export the depth to a color buffer
                       depthColor = v2p.pos.z;

                       #ifdef _ALPHATOMASK_ON
                          // Alpha channel is used for alpha to coverage
                          depthColor.a = SharpenAlpha(builtinData.opacity, builtinData.alphaClipTreshold);
                       #endif // alphatomask
                     #endif // msaa_depth
                  

                     #if defined(WRITE_NORMAL_BUFFER)
                        EncodeIntoNormalBuffer(ConvertSurfaceDataToNormalData(surfaceData), outNormalBuffer);
                     #endif

                     #if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
                        DecalPrepassData decalPrepassData;
                        // We don't have the right to access SurfaceData in a shaderpass.
                        // However it would be painful to have to add a function like ConvertSurfaceDataToDecalPrepassData() to every Material to return geomNormalWS anyway
                        // Here we will put the constrain that any Material requiring to support Decal, will need to have geomNormalWS as member of surfaceData (and we already require normalWS anyway)
                        decalPrepassData.geomNormalWS = surfaceData.geomNormalWS;
                        decalPrepassData.decalLayerMask = GetMeshRenderingDecalLayer();
                        EncodeIntoDecalPrepassBuffer(decalPrepassData, outDecalBuffer);
                     #endif
                  #endif

              }



         ENDHLSL
    }


              Pass
        {
            // based on HDLitPass.template
            Name "META"
            Tags { "LightMode" = "META" }
            
            Cull Off
        
            	Cull [_SGT_Cull]

        
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch

        
            #pragma multi_compile_instancing

            //#pragma multi_compile_local _ _ALPHATEST_ON


 
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            #define _ENABLE_FOG_ON_TRANSPARENT 1
            // #define _AMBIENT_OCCLUSION 1
            // #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            // #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
            // #define _ADD_PRECOMPUTED_VELOCITY
            // #define _WRITE_TRANSPARENT_MOTION_VECTOR 1
            // #define _DEPTHOFFSET_ON 1
            // #define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1

            #define SHADERPASS SHADERPASS_LIGHT_TRANSPORT
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #define REQUIRE_DEPTH_TEXTURE
            #define _PASSMETA 1

        
            
	#define __SGT_LIGHTANDSHADOW 1
	#define SGT_MAX_LIGHTS 16
	#define SGT_MAX_SPHERE_SHADOWS 16
	#define SGT_MAX_RING_SHADOWS 1


	#define __SGT_MATRIX 1


	#define __SGT_OUTPUT 1


	#pragma shader_feature_local _SGT_LIGHTING
	#pragma shader_feature_local _SGT_SCATTERING
	#pragma shader_feature_local _SGT_HDR
	#pragma multi_compile_local _ _SGT_OUTER
	#pragma multi_compile_local _ _SGT_SOFTNESS


    #pragma shader_feature_local DISABLEFOG    


	#pragma shader_feature_local _ADD_PRECOMPUTED_VELOCITY
	#pragma shader_feature_local _TRANSPARENT_WRITES_MOTION_VEC
	#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
	#pragma shader_feature_local _DISABLE_DECALS
	#pragma shader_feature_local _DISABLE_SSR
	#pragma shader_feature_local _DISABLE_SSR_TRANSPARENT
	#pragma shader_feature_local _REFRACTION_OFF _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN         


   #define _HDRP 1
#define _BLENDMODE_ALPHA 1
#define _SURFACE_TYPE_TRANSPARENT 1

#define _UNLIT 1
#define REQUIRE_DEPTH_TEXTURE
#define _USINGTEXCOORD1 1
#define _USINGTEXCOORD2 1


               #pragma vertex Vert
   #pragma fragment Frag
        

            

                  // useful conversion functions to make surface shader code just work

      #define UNITY_DECLARE_TEX2D(name) TEXTURE2D(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2D_NOSAMPLER(name) TEXTURE2D(name);
      #define UNITY_DECLARE_TEX2DARRAY(name) TEXTURE2D_ARRAY(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(tex) TEXTURE2D_ARRAY(tex);

      #define UNITY_SAMPLE_TEX2DARRAY(tex,coord)            SAMPLE_TEXTURE2D_ARRAY(tex, sampler##tex, coord.xy, coord.z)
      #define UNITY_SAMPLE_TEX2DARRAY_LOD(tex,coord,lod)    SAMPLE_TEXTURE2D_ARRAY_LOD(tex, sampler##tex, coord.xy, coord.z, lod)
      #define UNITY_SAMPLE_TEX2D(tex, coord)                SAMPLE_TEXTURE2D(tex, sampler##tex, coord)
      #define UNITY_SAMPLE_TEX2D_SAMPLER(tex, samp, coord)  SAMPLE_TEXTURE2D(tex, sampler##samp, coord)

      #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod)   SAMPLE_TEXTURE2D_LOD(tex, sampler_##tex, coord, lod)
      #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) SAMPLE_TEXTURE2D_LOD (tex, sampler##samplertex,coord, lod)

      #if defined(UNITY_COMPILER_HLSL)
         #define UNITY_INITIALIZE_OUTPUT(type,name) name = (type)0;
      #else
         #define UNITY_INITIALIZE_OUTPUT(type,name)
      #endif

      #define sampler2D_float sampler2D
      #define sampler2D_half sampler2D

      #undef WorldNormalVector
      #define WorldNormalVector(data, normal) mul(normal, data.TBNMatrix)

      #define UnityObjectToWorldNormal(normal) mul(GetObjectToWorldMatrix(), normal)




// HDRP Adapter stuff
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl" // Need to be here for Gradient struct definition

            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT 
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
    
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
    



            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
               #define OUTPUT_SPLIT_LIGHTING
            #endif

            #define HAVE_RECURSIVE_RENDERING

            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
               #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                  #define WRITE_NORMAL_BUFFER
               #endif
            #endif

            #ifndef DEBUG_DISPLAY
               // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
               // Don't do it with debug display mode as it is possible there is no depth prepass in this case
               #if !defined(_SURFACE_TYPE_TRANSPARENT) && defined(_ALPHATEST)
                  #if SHADERPASS == SHADERPASS_FORWARD
                  #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                  #elif SHADERPASS == SHADERPASS_GBUFFER
                  #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                  #endif
               #endif
            #endif

            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
               #define _DEFERRED_CAPABLE_MATERIAL
            #endif
    
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
               #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif




            CBUFFER_START(UnityPerMaterial)
               float _UseShadowThreshold;
               float _BlendMode;
               float _EnableBlendModePreserveSpecularLighting;
               float _RayTracing;
               float _RefractionModel;

              
	int    _SGT_LightCount;
	float4 _SGT_LightColor[SGT_MAX_LIGHTS];
	float4 _SGT_LightPosition[SGT_MAX_LIGHTS];
	float3 _SGT_LightDirection[SGT_MAX_LIGHTS];

	int       _SGT_SphereShadowCount;
	float4x4  _SGT_SphereShadowMatrix[SGT_MAX_SPHERE_SHADOWS];
	float4    _SGT_SphereShadowPower[SGT_MAX_SPHERE_SHADOWS];

	int       _SGT_RingShadowCount;
	sampler2D _SGT_RingShadowTexture;
	float4    _SGT_RingShadowColor[SGT_MAX_RING_SHADOWS];
	float4x4  _SGT_RingShadowMatrix[SGT_MAX_RING_SHADOWS];
	float     _SGT_RingShadowRatio[SGT_MAX_RING_SHADOWS];






	float4    _SGT_Color; // Auto
	float     _SGT_Brightness; // Auto
	sampler2D _SGT_InnerDepthTex;
	sampler2D _SGT_OuterDepthTex;

	float     _SGT_HorizonLengthRecip;
	float     _SGT_Sky;
	float4x4  _SGT_WorldToLocal;
	float4x4  _SGT_LocalToWorld;

	sampler2D _SGT_LightingTex;
	float3    _SGT_AmbientColor;

	float4    _SGT_ScatteringTerms;
	float4    _SGT_ScatteringInner;
	float4    _SGT_ScatteringOuter;
	sampler2D _SGT_ScatteringTex;
	float     _SGT_InnerRatio;
	float     _SGT_InnerScale;

	float _SGT_SoftParticlesFactor; // Auto







            CBUFFER_END
    


             // -- Property used by ScenePickingPass
               #ifdef SCENEPICKINGPASS
               float4 _SelectionID;
               #endif
    
               // -- Properties used by SceneSelectionPass
               #ifdef SCENESELECTIONPASS
               int _ObjectId;
               int _PassValue;
               #endif
  
           
            // data across stages, stripped like the above.
            struct VertexToPixel
            {
               float4 pos : SV_POSITION;
               float3 worldPos : TEXCOORD0;
               float3 worldNormal : TEXCOORD1;
               float4 worldTangent : TEXCOORD2;
               float4 texcoord0 : TEXCOORD3;
               float4 texcoord1 : TEXCOORD4;
               float4 texcoord2 : TEXCOORD5;
               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD6;
               // #endif

               // #if %SCREENPOSREQUIREKEY%
                float4 screenPos : TEXCOORD7;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD12;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD13;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD14;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD15;
               // #endif

               #if UNITY_ANY_INSTANCING_ENABLED
                  uint instanceID : INSTANCEID_SEMANTIC;
               #endif // UNITY_ANY_INSTANCING_ENABLED

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float4 previousPositionCS : TEXCOORD16; // Contain previous transform position (in case of skinning for example)
                  float4 motionVectorCS : TEXCOORD17;
               #endif

               UNITY_VERTEX_OUTPUT_STEREO
            }; 


            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
    

  
            
            
            // data describing the user output of a pixel
            struct Surface
            {
               half3 Albedo;
               half Height;
               half3 Normal;
               half Smoothness;
               half3 Emission;
               half Metallic;
               half3 Specular;
               half Occlusion;
               half SpecularPower; // for simple lighting
               half Alpha;
               float outputDepth; // if written, SV_Depth semantic is used. ShaderData.clipPos.z is unused value
               // HDRP Only
               half SpecularOcclusion;
               half SubsurfaceMask;
               half Thickness;
               half CoatMask;
               half CoatSmoothness;
               half Anisotropy;
               half IridescenceMask;
               half IridescenceThickness;
               int DiffusionProfileHash;
               float SpecularAAThreshold;
               float SpecularAAScreenSpaceVariance;
               // requires _OVERRIDE_BAKEDGI to be defined, but is mapped in all pipelines
               float3 DiffuseGI;
               float3 BackDiffuseGI;
               float3 SpecularGI;
               // requires _OVERRIDE_SHADOWMASK to be defines
               float4 ShadowMask;
            };

            // Data the user declares in blackboard blocks
            struct Blackboard
            {
                
                float blackboardDummyData;
            };

            // data the user might need, this will grow to be big. But easy to strip
            struct ShaderData
            {
               float4 clipPos; // SV_POSITION
               float3 localSpacePosition;
               float3 localSpaceNormal;
               float3 localSpaceTangent;
        
               float3 worldSpacePosition;
               float3 worldSpaceNormal;
               float3 worldSpaceTangent;
               float tangentSign;

               float3 worldSpaceViewDir;
               float3 tangentSpaceViewDir;

               float4 texcoord0;
               float4 texcoord1;
               float4 texcoord2;
               float4 texcoord3;

               float2 screenUV;
               float4 screenPos;

               float4 vertexColor;
               bool isFrontFace;

               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;

               float3x3 TBNMatrix;
               Blackboard blackboard;
            };

            struct VertexData
            {
               #if SHADER_TARGET > 30
               // uint vertexID : SV_VertexID;
               #endif
               float4 vertex : POSITION;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;

               // optimize out mesh coords when not in use by user or lighting system
               #if _URP && (_USINGTEXCOORD1 || _PASSMETA || _PASSFORWARD || _PASSGBUFFER)
                  float4 texcoord1 : TEXCOORD1;
               #endif

               #if _URP && (_USINGTEXCOORD2 || _PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && defined(DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif

               #if _STANDARD && (_USINGTEXCOORD1 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER || _PASSFORWARDADD) && LIGHTMAP_ON)))
                  float4 texcoord1 : TEXCOORD1;
               #endif
               #if _STANDARD && (_USINGTEXCOORD2 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif


               #if _HDRP
                  float4 texcoord1 : TEXCOORD1;
                  float4 texcoord2 : TEXCOORD2;
               #endif

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float3 previousPositionOS : TEXCOORD4; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity    : TEXCOORD5; // Add Precomputed Velocity (Alembic computes velocities on runtime side).
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct TessVertex 
            {
               float4 vertex : INTERNALTESSPOS;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;
               float4 texcoord1 : TEXCOORD1;
               float4 texcoord2 : TEXCOORD2;

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD5;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD6;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD7;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD12;
               // #endif

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float3 previousPositionOS : TEXCOORD13; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity : TEXCOORD14;
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
               UNITY_VERTEX_OUTPUT_STEREO
            };

            struct ExtraV2F
            {
               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;
               Blackboard blackboard;
               float4 time;
            };


            float3 WorldToTangentSpace(ShaderData d, float3 normal)
            {
               return mul(d.TBNMatrix, normal);
            }

            float3 TangentToWorldSpace(ShaderData d, float3 normal)
            {
               return mul(normal, d.TBNMatrix);
            }

            // in this case, make standard more like SRPs, because we can't fix
            // unity_WorldToObject in HDRP, since it already does macro-fu there

            #if _STANDARD
               float3 TransformWorldToObject(float3 p) { return mul(unity_WorldToObject, float4(p, 1)); };
               float3 TransformObjectToWorld(float3 p) { return mul(unity_ObjectToWorld, float4(p, 1)); };
               float4 TransformWorldToObject(float4 p) { return mul(unity_WorldToObject, p); };
               float4 TransformObjectToWorld(float4 p) { return mul(unity_ObjectToWorld, p); };
               float4x4 GetWorldToObjectMatrix() { return unity_WorldToObject; }
               float4x4 GetObjectToWorldMatrix() { return unity_ObjectToWorld; }
               #if (defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (SHADER_TARGET_SURFACE_ANALYSIS && !SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod) tex.SampleLevel (sampler##tex,coord, lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) tex.SampleLevel (sampler##samplertex,coord, lod)
              #else
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord,lod) tex2D (tex,coord,0,lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord,lod) tex2D (tex,coord,0,lod)
              #endif

               #undef GetWorldToObjectMatrix()

               #define GetWorldToObjectMatrix()   unity_WorldToObject


            #endif

            float3 GetCameraWorldPosition()
            {
               #if _HDRP
                  return GetCameraRelativePositionWS(_WorldSpaceCameraPos);
               #else
                  return _WorldSpaceCameraPos;
               #endif
            }

            #if _GRABPASSUSED
               #if _STANDARD
                  TEXTURE2D(%GRABTEXTURE%);
                  SAMPLER(sampler_%GRABTEXTURE%);
               #endif

               half3 GetSceneColor(float2 uv)
               {
                  #if _STANDARD
                     return SAMPLE_TEXTURE2D(%GRABTEXTURE%, sampler_%GRABTEXTURE%, uv).rgb;
                  #else
                     return SHADERGRAPH_SAMPLE_SCENE_COLOR(uv);
                  #endif
               }
            #endif


      
            #if _STANDARD
               UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
               float GetSceneDepth(float2 uv) { return SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv)); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv)); } 
            #else
               float GetSceneDepth(float2 uv) { return SHADERGRAPH_SAMPLE_SCENE_DEPTH(uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv), _ZBufferParams); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv), _ZBufferParams); } 
            #endif

            float3 GetWorldPositionFromDepthBuffer(float2 uv, float3 worldSpaceViewDir)
            {
               float eye = GetLinearEyeDepth(uv);
               float3 camView = mul((float3x3)GetObjectToWorldMatrix(), transpose(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V)) [2].xyz);

               float dt = dot(worldSpaceViewDir, camView);
               float3 div = worldSpaceViewDir/dt;
               float3 wpos = (eye * div) + GetCameraWorldPosition();
               return wpos;
            }

            #if _HDRP
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return GetAbsolutePositionWS(TransformObjectToWorld(pos));
            }
            #else
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return TransformObjectToWorld(pos);
            }
            #endif

            #if _STANDARD
               UNITY_DECLARE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture);
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  float4 depthNorms = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture, uv);
                  float3 norms = DecodeViewNormalStereo(depthNorms);
                  norms = mul((float3x3)GetWorldToViewMatrix(), norms) * 0.5 + 0.5;
                  return norms;
               }
            #elif _HDRP
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  NormalData nd;
                  DecodeFromNormalBuffer(_ScreenSize.xy * uv, nd);
                  return nd.normalWS;
               }
            #elif _URP
               #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                  #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareNormalsTexture.hlsl"
               #endif

               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                     return SampleSceneNormals(uv);
                  #else
                     float3 wpos = GetWorldPositionFromDepthBuffer(uv, worldSpaceViewDir);
                     return normalize(-cross(ddx(wpos), ddy(wpos))) * 0.5 + 0.5;
                  #endif

                }
             #endif

             #if _HDRP

               half3 UnpackNormalmapRGorAG(half4 packednormal)
               {
                     // This do the trick
                  packednormal.x *= packednormal.w;

                  half3 normal;
                  normal.xy = packednormal.xy * 2 - 1;
                  normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                  return normal;
               }
               half3 UnpackNormal(half4 packednormal)
               {
                  #if defined(UNITY_NO_DXT5nm)
                     return packednormal.xyz * 2 - 1;
                  #else
                     return UnpackNormalmapRGorAG(packednormal);
                  #endif
               }
               #endif
               #if _HDRP || _URP

               half3 UnpackScaleNormal(half4 packednormal, half scale)
               {
                 #ifndef UNITY_NO_DXT5nm
                   // Unpack normal as DXT5nm (1, y, 1, x) or BC5 (x, y, 0, 1)
                   // Note neutral texture like "bump" is (0, 0, 1, 1) to work with both plain RGB normal and DXT5nm/BC5
                   packednormal.x *= packednormal.w;
                 #endif
                   half3 normal;
                   normal.xy = (packednormal.xy * 2 - 1) * scale;
                   normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                   return normal;
               }	

             #endif


            void GetSun(out float3 lightDir, out float3 color)
            {
               lightDir = float3(0.5, 0.5, 0);
               color = 1;
               #if _HDRP
                  if (_DirectionalLightCount > 0)
                  {
                     DirectionalLightData light = _DirectionalLightDatas[0];
                     lightDir = -light.forward.xyz;
                     color = light.color;
                  }
               #elif _STANDARD
			         lightDir = normalize(_WorldSpaceLightPos0.xyz);
                  color = _LightColor0.rgb;
               #elif _URP
	               Light light = GetMainLight();
	               lightDir = light.direction;
	               color = light.color;
               #endif
            }



            

            

            #ifdef unity_WorldToObject
#undef unity_WorldToObject
#endif
#ifdef unity_ObjectToWorld
#undef unity_ObjectToWorld
#endif
#define unity_ObjectToWorld GetObjectToWorldMatrix()
#define unity_WorldToObject GetWorldToObjectMatrix()

	float SGT_ScatteringPhase(float angle, float4 terms, float4 strengths)
	{
		return dot(pow(saturate(angle * sign(terms)), abs(terms)), strengths);
	}

	float4 SGT_SphereShadowColor(float4x4 shadowMatrix, float4 shadowPower, float4 worldPoint)
	{
		float4 shadowPoint = mul(shadowMatrix, worldPoint);
		float  shadowMag   = length(shadowPoint.xy);

		//shadowMag = 1.0f - (1.0f - shadowMag) * shadowRatio;

		//float4 shadow = 1.0f - pow(1.0f - shadowMag, shadowPower);
		float4 shadow = pow(shadowMag, shadowPower);

		shadow += shadowPoint.z < 0.0f;

		return saturate(shadow);
	}

	float4 SGT_RingShadowColor(float4x4 shadowMatrix, sampler2D shadowSampler, float shadowRatio, float4 worldPoint)
	{
		float4 shadowPoint = mul(shadowMatrix, worldPoint);
		float  shadowMag   = length(shadowPoint.xy);

		shadowMag = 1.0f - (1.0f - shadowMag) * shadowRatio;

		float4 shadow = tex2D(shadowSampler, shadowMag.xx);

		shadow += shadowPoint.z < 0.0f;

		return saturate(shadow);
	}

	float4 SGT_ShadowColor(float3 worldPoint3)
	{
		float4 worldPoint = float4(worldPoint3, 1.0f);
		float4 color      = 1.0f;

		for (int s = 0; s < _SGT_SphereShadowCount; s++)
		{
			color *= SGT_SphereShadowColor(_SGT_SphereShadowMatrix[s], _SGT_SphereShadowPower[s], worldPoint);
		}

		for (int r = 0; r < _SGT_RingShadowCount; r++)
		{
			color *= SGT_RingShadowColor(_SGT_RingShadowMatrix[r], _SGT_RingShadowTexture, _SGT_RingShadowRatio[r], worldPoint);
		}

		return color;
	}


	float4 SGT_O2W(float4 v)
	{
		v = mul(GetObjectToWorldMatrix(), v);
		#if _HDRP
			v.xyz = GetAbsolutePositionWS(v.xyz);
		#endif
		return v;
	}
	float4 SGT_W2O(float4 v)
	{
		#if _HDRP
			v.xyz = GetCameraRelativePositionWS(v.xyz);
		#endif
		return mul(GetWorldToObjectMatrix(), v);
	}

	float4 SGT_O2V(float4 v)
	{
		#if _STANDARD
			return float4(UnityObjectToViewPos(v.xyz), 1.0f);
		#else
			return float4(TransformWorldToView(TransformObjectToWorld(v.xyz)), 1.0f);
		#endif
	}
	float4 SGT_V2O(float4 v)
	{
		return mul(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V), v);
	}

	float4 SGT_W2V(float4 v)
	{
		#if _STANDARD
			return mul(GetWorldToViewMatrix(), v);
		#else
			return float4(TransformWorldToView(v.xyz), 1.0f);
		#endif
	}
	float4 SGT_V2M(float4 v)
	{
		v = mul(UNITY_MATRIX_I_V, v);
		#if _HDRP
			v.xyz = GetAbsolutePositionWS(v.xyz);
		#endif
		return v;
	}

	float4 SGT_W2P(float4 v)
	{
		#if _HDRP
			v.xyz = GetCameraRelativePositionWS(v.xyz);
		#endif
		#if _STANDARD
			return mul(GetWorldToHClipMatrix(), v);
		#else
			return TransformWorldToHClip(v.xyz);
		#endif
	}


	float4 SGT_ModifyUnlitOutput(float4 finalColor)
	{
		#if _HDRP
			finalColor.xyz *= 25000.0f;
		#endif
		return finalColor;
	}

	void SGT_OutputWithoutAlpha(inout Surface o, float4 finalColor)
	{
		#if _HDRP
			o.Emission = finalColor.xyz;
			o.Albedo   = 0.0f;
		#elif _URP
			o.Emission = finalColor.xyz;
			o.Albedo   = finalColor.xyz;
		#else
			o.Albedo = finalColor.xyz;
		#endif
	}

	void SGT_OutputWithAlpha(inout Surface o, float4 finalColor)
	{
		SGT_OutputWithoutAlpha(o, finalColor);

		o.Alpha = finalColor.w;
	}


	float SGT_GetOutsideDistance(float3 ray, float3 rayD)
	{
		float B = dot(ray, rayD);
		float C = dot(ray, ray) - 1.0f;
		float D = B * B - C;
		return -B - sqrt(max(D, 0.0f));
	}

	float SGT_GetOutsideDistance2(float3 ray, float3 rayD)
	{
		float B = dot(ray, rayD);
		float C = dot(ray, ray) - 1.0f;
		float D = B * B - C;
		return max(-B - sqrt(max(D, 0.0f)), 0.0f);
	}

	float3 SGT_GetNear(float3 far)
	{
		float3 wcam = _WorldSpaceCameraPos;
		float3 near = mul(_SGT_WorldToLocal, float4(wcam, 1.0f)).xyz;
		float3 dir  = normalize(far - near);

		return near + dir * SGT_GetOutsideDistance2(near, dir);
	}

	void ModifyInnerVertex(inout VertexData v, inout ExtraV2F e)
	{
		#if __SGT_MATRIX
			float3 wcam = _WorldSpaceCameraPos;
			float4 wpos = SGT_O2W(v.vertex);
			float3 far  = mul(_SGT_WorldToLocal, wpos).xyz;
			float3 near = mul(_SGT_WorldToLocal, float4(wcam, 1.0f)).xyz;

			float3 nearFar = far - near;
			float3 dir     = normalize(nearFar);
			float  depthA  = length(nearFar);
			float  depthB  = SGT_GetOutsideDistance(near, dir);
			near += dir * max(depthB, 0.0f);
			float depth = length(near - far);

			v.texcoord0.x   = depth * _SGT_HorizonLengthRecip;
			v.texcoord0.y   = (length(far) - _SGT_InnerRatio) * _SGT_InnerScale; // Altitude
			v.texcoord1.xyz = mul((float3x3)_SGT_LocalToWorld, near);
		#endif
	}

	void ModifyOuterVertex(inout VertexData v, inout ExtraV2F e)
	{
		#if __SGT_MATRIX
			float4 wPos = SGT_O2W(v.vertex);
			float3 far  = mul(_SGT_WorldToLocal, wPos).xyz;
			float3 near = SGT_GetNear(far);

			v.texcoord0.xy = length(near - far) * _SGT_HorizonLengthRecip;

			#if _SGT_SOFTNESS
				v.texcoord1.z = -SGT_O2V(v.vertex).z;
			#endif

			v.texcoord2.xyz = mul((float3x3)_SGT_LocalToWorld, near);
		#endif
	}

	void Ext_ModifyVertex0 (inout VertexData v, inout ExtraV2F e)
	{
		#if _SGT_OUTER
			ModifyOuterVertex(v, e);
		#else
			ModifyInnerVertex(v, e);
		#endif
	}

	void SurfaceInnerFunction(inout Surface o, inout ShaderData d)
	{
		#if __SGT_OUTPUT
			float4 depth = tex2D(_SGT_InnerDepthTex, d.texcoord0.xx);
			float4 main  = depth * _SGT_Color;
			float3 wcam  = _WorldSpaceCameraPos;
			float3 wnorm = normalize(d.texcoord1.xyz);

			main.rgb *= _SGT_Brightness;
			main.a   *= smoothstep(1.0f, 0.0f, saturate(d.texcoord0.y));

			float4 finalColor = main;

			#if __SGT_LIGHTANDSHADOW
				#if _SGT_LIGHTING
					finalColor.rgb *= _SGT_AmbientColor;

					float4 lighting   = 0.0f;
					float4 scattering = 0.0f;

					for (int i = 0; i < _SGT_LightCount; i++)
					{
						float theta = dot(wnorm, _SGT_LightDirection[i]) * 0.5f + 0.5f;

						lighting += tex2D(_SGT_LightingTex, theta) * main * _SGT_LightColor[i];

						#if _SGT_SCATTERING
							float3 worldViewDir  = normalize(d.worldSpacePosition - wcam);
							float3 worldLightDir = normalize(_SGT_LightPosition[i].xyz - wcam);
							float  angle         = dot(worldViewDir, worldLightDir);
							float  phase         = SGT_ScatteringPhase(angle, _SGT_ScatteringTerms, _SGT_ScatteringInner);

							scattering += tex2D(_SGT_ScatteringTex, theta) * _SGT_LightColor[i] * phase;
						#endif
					}

					#if _SGT_SCATTERING
						#if _SGT_HDR || _HDRP
							scattering *= main;
							lighting.xyz += scattering.xyz;
						#else
							scattering *= finalColor.a; // Fade scattering out according to optical depth
							scattering *= saturate(1.0f - (finalColor + lighting)); // Only scatter into remaining rgba
							lighting += scattering;
						#endif
					#endif

					finalColor += lighting * saturate(SGT_ShadowColor(d.worldSpacePosition) + finalColor.a * 0.5f);
					//finalColor += lighting * lerp(SGT_ShadowColor(d.worldSpacePosition), 1.0f, finalColor.a);
					finalColor.a = saturate(finalColor.a);
				#else
					finalColor = SGT_ModifyUnlitOutput(finalColor);
				#endif
			#endif

			SGT_OutputWithAlpha(o, finalColor);
		#endif
	}

	void SurfaceOuterFunction(inout Surface o, inout ShaderData d)
	{
		#if __SGT_OUTPUT
			float4 depth = tex2D(_SGT_OuterDepthTex, d.texcoord0.xx); depth.a = saturate(depth.a + (1.0f - depth.a) * _SGT_Sky);
			float4 main  = depth * _SGT_Color;
			float3 wcam  = _WorldSpaceCameraPos;
			float3 wnorm = normalize(d.texcoord2.xyz);

			main.rgb *= _SGT_Brightness;

			#if _SGT_SOFTNESS
				float sceneZ = GetLinearEyeDepth(d.screenUV);
				float partZ = d.texcoord1.z;

				main.a *= smoothstep(0.0f, 1.0f, _SGT_SoftParticlesFactor * abs(sceneZ - partZ));
			#endif

			float4 finalColor = main;

			#if __SGT_LIGHTANDSHADOW
				#if _SGT_LIGHTING
					finalColor.rgb *= _SGT_AmbientColor;

					float4 lighting   = 0.0f;
					float4 scattering = 0.0f;

					for (int i = 0; i < _SGT_LightCount; i++)
					{
						float theta = dot(wnorm, _SGT_LightDirection[i]) * 0.5f + 0.5f;

						lighting += tex2D(_SGT_LightingTex, theta) * main * _SGT_LightColor[i];

						#if _SGT_SCATTERING
							float3 worldViewDir  = normalize(d.worldSpacePosition - wcam);
							float3 worldLightDir = normalize(_SGT_LightPosition[i].xyz - wcam);
							float  angle         = dot(worldViewDir, worldLightDir);
							float  phase         = SGT_ScatteringPhase(angle, _SGT_ScatteringTerms, _SGT_ScatteringOuter);

							scattering += tex2D(_SGT_ScatteringTex, theta) * _SGT_LightColor[i] * phase;
						#endif
					}

					#if _SGT_SCATTERING
						#if _SGT_HDR || _HDRP
							scattering *= main;
							lighting.xyz += scattering.xyz;
						#else
							scattering *= finalColor.a; // Fade scattering out according to optical depth
							scattering *= saturate(1.0f - (finalColor + lighting)); // Only scatter into remaining rgba
							lighting += scattering;
						#endif
					#endif

					finalColor += lighting * SGT_ShadowColor(d.worldSpacePosition);
					finalColor.a = saturate(main.a);
				#else
					finalColor = SGT_ModifyUnlitOutput(finalColor);
				#endif
			#endif

			SGT_OutputWithAlpha(o, finalColor);
		#endif
	}

	void Ext_SurfaceFunction0 (inout Surface o, inout ShaderData d)
	{
		#if _SGT_OUTER
			SurfaceOuterFunction(o, d);
		#else
			SurfaceInnerFunction(o, d);
		#endif
	}







        
            void ChainSurfaceFunction(inout Surface l, inout ShaderData d)
            {
                  Ext_SurfaceFunction0(l, d);
                 // Ext_SurfaceFunction1(l, d);
                 // Ext_SurfaceFunction2(l, d);
                 // Ext_SurfaceFunction3(l, d);
                 // Ext_SurfaceFunction4(l, d);
                 // Ext_SurfaceFunction5(l, d);
                 // Ext_SurfaceFunction6(l, d);
                 // Ext_SurfaceFunction7(l, d);
                 // Ext_SurfaceFunction8(l, d);
                 // Ext_SurfaceFunction9(l, d);
		           // Ext_SurfaceFunction10(l, d);
                 // Ext_SurfaceFunction11(l, d);
                 // Ext_SurfaceFunction12(l, d);
                 // Ext_SurfaceFunction13(l, d);
                 // Ext_SurfaceFunction14(l, d);
                 // Ext_SurfaceFunction15(l, d);
                 // Ext_SurfaceFunction16(l, d);
                 // Ext_SurfaceFunction17(l, d);
                 // Ext_SurfaceFunction18(l, d);
		           // Ext_SurfaceFunction19(l, d);
                 // Ext_SurfaceFunction20(l, d);
                 // Ext_SurfaceFunction21(l, d);
                 // Ext_SurfaceFunction22(l, d);
                 // Ext_SurfaceFunction23(l, d);
                 // Ext_SurfaceFunction24(l, d);
                 // Ext_SurfaceFunction25(l, d);
                 // Ext_SurfaceFunction26(l, d);
                 // Ext_SurfaceFunction27(l, d);
                 // Ext_SurfaceFunction28(l, d);
		           // Ext_SurfaceFunction29(l, d);
            }

            void ChainModifyVertex(inout VertexData v, inout VertexToPixel v2p, float4 time)
            {
                 ExtraV2F d;
                 
                 ZERO_INITIALIZE(ExtraV2F, d);
                 ZERO_INITIALIZE(Blackboard, d.blackboard);
                 // due to motion vectors in HDRP, we need to use the last
                 // time in certain spots. So if you are going to use _Time to adjust vertices,
                 // you need to use this time or motion vectors will break. 
                 d.time = time;

                   Ext_ModifyVertex0(v, d);
                 // Ext_ModifyVertex1(v, d);
                 // Ext_ModifyVertex2(v, d);
                 // Ext_ModifyVertex3(v, d);
                 // Ext_ModifyVertex4(v, d);
                 // Ext_ModifyVertex5(v, d);
                 // Ext_ModifyVertex6(v, d);
                 // Ext_ModifyVertex7(v, d);
                 // Ext_ModifyVertex8(v, d);
                 // Ext_ModifyVertex9(v, d);
                 // Ext_ModifyVertex10(v, d);
                 // Ext_ModifyVertex11(v, d);
                 // Ext_ModifyVertex12(v, d);
                 // Ext_ModifyVertex13(v, d);
                 // Ext_ModifyVertex14(v, d);
                 // Ext_ModifyVertex15(v, d);
                 // Ext_ModifyVertex16(v, d);
                 // Ext_ModifyVertex17(v, d);
                 // Ext_ModifyVertex18(v, d);
                 // Ext_ModifyVertex19(v, d);
                 // Ext_ModifyVertex20(v, d);
                 // Ext_ModifyVertex21(v, d);
                 // Ext_ModifyVertex22(v, d);
                 // Ext_ModifyVertex23(v, d);
                 // Ext_ModifyVertex24(v, d);
                 // Ext_ModifyVertex25(v, d);
                 // Ext_ModifyVertex26(v, d);
                 // Ext_ModifyVertex27(v, d);
                 // Ext_ModifyVertex28(v, d);
                 // Ext_ModifyVertex29(v, d);


                 // #if %EXTRAV2F0REQUIREKEY%
                 // v2p.extraV2F0 = d.extraV2F0;
                 // #endif

                 // #if %EXTRAV2F1REQUIREKEY%
                 // v2p.extraV2F1 = d.extraV2F1;
                 // #endif

                 // #if %EXTRAV2F2REQUIREKEY%
                 // v2p.extraV2F2 = d.extraV2F2;
                 // #endif

                 // #if %EXTRAV2F3REQUIREKEY%
                 // v2p.extraV2F3 = d.extraV2F3;
                 // #endif

                 // #if %EXTRAV2F4REQUIREKEY%
                 // v2p.extraV2F4 = d.extraV2F4;
                 // #endif

                 // #if %EXTRAV2F5REQUIREKEY%
                 // v2p.extraV2F5 = d.extraV2F5;
                 // #endif

                 // #if %EXTRAV2F6REQUIREKEY%
                 // v2p.extraV2F6 = d.extraV2F6;
                 // #endif

                 // #if %EXTRAV2F7REQUIREKEY%
                 // v2p.extraV2F7 = d.extraV2F7;
                 // #endif
            }

            void ChainModifyTessellatedVertex(inout VertexData v, inout VertexToPixel v2p)
            {
               ExtraV2F d;
               ZERO_INITIALIZE(ExtraV2F, d);
               ZERO_INITIALIZE(Blackboard, d.blackboard);

               // #if %EXTRAV2F0REQUIREKEY%
               // d.extraV2F0 = v2p.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // d.extraV2F1 = v2p.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // d.extraV2F2 = v2p.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // d.extraV2F3 = v2p.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // d.extraV2F4 = v2p.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // d.extraV2F5 = v2p.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // d.extraV2F6 = v2p.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // d.extraV2F7 = v2p.extraV2F7;
               // #endif


               // Ext_ModifyTessellatedVertex0(v, d);
               // Ext_ModifyTessellatedVertex1(v, d);
               // Ext_ModifyTessellatedVertex2(v, d);
               // Ext_ModifyTessellatedVertex3(v, d);
               // Ext_ModifyTessellatedVertex4(v, d);
               // Ext_ModifyTessellatedVertex5(v, d);
               // Ext_ModifyTessellatedVertex6(v, d);
               // Ext_ModifyTessellatedVertex7(v, d);
               // Ext_ModifyTessellatedVertex8(v, d);
               // Ext_ModifyTessellatedVertex9(v, d);
               // Ext_ModifyTessellatedVertex10(v, d);
               // Ext_ModifyTessellatedVertex11(v, d);
               // Ext_ModifyTessellatedVertex12(v, d);
               // Ext_ModifyTessellatedVertex13(v, d);
               // Ext_ModifyTessellatedVertex14(v, d);
               // Ext_ModifyTessellatedVertex15(v, d);
               // Ext_ModifyTessellatedVertex16(v, d);
               // Ext_ModifyTessellatedVertex17(v, d);
               // Ext_ModifyTessellatedVertex18(v, d);
               // Ext_ModifyTessellatedVertex19(v, d);
               // Ext_ModifyTessellatedVertex20(v, d);
               // Ext_ModifyTessellatedVertex21(v, d);
               // Ext_ModifyTessellatedVertex22(v, d);
               // Ext_ModifyTessellatedVertex23(v, d);
               // Ext_ModifyTessellatedVertex24(v, d);
               // Ext_ModifyTessellatedVertex25(v, d);
               // Ext_ModifyTessellatedVertex26(v, d);
               // Ext_ModifyTessellatedVertex27(v, d);
               // Ext_ModifyTessellatedVertex28(v, d);
               // Ext_ModifyTessellatedVertex29(v, d);

               // #if %EXTRAV2F0REQUIREKEY%
               // v2p.extraV2F0 = d.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // v2p.extraV2F1 = d.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // v2p.extraV2F2 = d.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // v2p.extraV2F3 = d.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // v2p.extraV2F4 = d.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // v2p.extraV2F5 = d.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // v2p.extraV2F6 = d.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // v2p.extraV2F7 = d.extraV2F7;
               // #endif
            }

            void ChainFinalColorForward(inout Surface l, inout ShaderData d, inout half4 color)
            {
               //   Ext_FinalColorForward0(l, d, color);
               //   Ext_FinalColorForward1(l, d, color);
               //   Ext_FinalColorForward2(l, d, color);
               //   Ext_FinalColorForward3(l, d, color);
               //   Ext_FinalColorForward4(l, d, color);
               //   Ext_FinalColorForward5(l, d, color);
               //   Ext_FinalColorForward6(l, d, color);
               //   Ext_FinalColorForward7(l, d, color);
               //   Ext_FinalColorForward8(l, d, color);
               //   Ext_FinalColorForward9(l, d, color);
               //  Ext_FinalColorForward10(l, d, color);
               //  Ext_FinalColorForward11(l, d, color);
               //  Ext_FinalColorForward12(l, d, color);
               //  Ext_FinalColorForward13(l, d, color);
               //  Ext_FinalColorForward14(l, d, color);
               //  Ext_FinalColorForward15(l, d, color);
               //  Ext_FinalColorForward16(l, d, color);
               //  Ext_FinalColorForward17(l, d, color);
               //  Ext_FinalColorForward18(l, d, color);
               //  Ext_FinalColorForward19(l, d, color);
               //  Ext_FinalColorForward20(l, d, color);
               //  Ext_FinalColorForward21(l, d, color);
               //  Ext_FinalColorForward22(l, d, color);
               //  Ext_FinalColorForward23(l, d, color);
               //  Ext_FinalColorForward24(l, d, color);
               //  Ext_FinalColorForward25(l, d, color);
               //  Ext_FinalColorForward26(l, d, color);
               //  Ext_FinalColorForward27(l, d, color);
               //  Ext_FinalColorForward28(l, d, color);
               //  Ext_FinalColorForward29(l, d, color);
            }

            void ChainFinalGBufferStandard(inout Surface s, inout ShaderData d, inout half4 GBuffer0, inout half4 GBuffer1, inout half4 GBuffer2, inout half4 outEmission, inout half4 outShadowMask)
            {
               //   Ext_FinalGBufferStandard0(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard1(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard2(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard3(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard4(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard5(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard6(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard7(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard8(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard9(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard10(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard11(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard12(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard13(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard14(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard15(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard16(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard17(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard18(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard19(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard20(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard21(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard22(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard23(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard24(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard25(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard26(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard27(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard28(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard29(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
            }



            

         ShaderData CreateShaderData(VertexToPixel i
                  #if NEED_FACING
                     , bool facing
                  #endif
         )
         {
            ShaderData d = (ShaderData)0;
            d.clipPos = i.pos;
            d.worldSpacePosition = i.worldPos;

            d.worldSpaceNormal = normalize(i.worldNormal);
            d.worldSpaceTangent = normalize(i.worldTangent.xyz);
            d.tangentSign = i.worldTangent.w;
            float3 bitangent = cross(i.worldTangent.xyz, i.worldNormal) * d.tangentSign * -1;
            

            d.TBNMatrix = float3x3(d.worldSpaceTangent, bitangent, d.worldSpaceNormal);
            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - i.worldPos);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);
             d.texcoord0 = i.texcoord0;
             d.texcoord1 = i.texcoord1;
             d.texcoord2 = i.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
            // d.texcoord3 = i.texcoord3;
            // #endif

            // d.isFrontFace = facing;
            // #if %VERTEXCOLORREQUIREKEY%
            // d.vertexColor = i.vertexColor;
            // #endif

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(unity_WorldToObject, float4(GetCameraRelativePositionWS(i.worldPos), 1)).xyz;
            #else
                // d.localSpacePosition = mul(unity_WorldToObject, float4(i.worldPos, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)unity_WorldToObject, i.worldNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)unity_WorldToObject, i.worldTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
             d.screenPos = i.screenPos;
             d.screenUV = (i.screenPos.xy / i.screenPos.w);
            // #endif


            // #if %EXTRAV2F0REQUIREKEY%
            // d.extraV2F0 = i.extraV2F0;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
            // d.extraV2F1 = i.extraV2F1;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
            // d.extraV2F2 = i.extraV2F2;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
            // d.extraV2F3 = i.extraV2F3;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // d.extraV2F4 = i.extraV2F4;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // d.extraV2F5 = i.extraV2F5;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // d.extraV2F6 = i.extraV2F6;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // d.extraV2F7 = i.extraV2F7;
            // #endif

            return d;
         }
         

            

#if (SHADERPASS == SHADERPASS_LIGHT_TRANSPORT)

   // This was not in constant buffer in original unity, so keep outiside. But should be in as ShaderRenderPass frequency
   float unity_OneOverOutputBoost;
   float unity_MaxOutputValue;

   CBUFFER_START(UnityMetaPass)
   // x = use uv1 as raster position
   // y = use uv2 as raster position
   bool4 unity_MetaVertexControl;

   // x = return albedo
   // y = return normal
   bool4 unity_MetaFragmentControl;
   CBUFFER_END

   VertexToPixel Vert(VertexData inputMesh)
   {
       VertexToPixel output;
       ZERO_INITIALIZE(VertexToPixel, output);
       UNITY_SETUP_INSTANCE_ID(inputMesh);
       UNITY_TRANSFER_INSTANCE_ID(inputMesh, output);
       UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

       // Output UV coordinate in vertex shader
       float2 uv = float2(0.0, 0.0);

       if (unity_MetaVertexControl.x)
       {
           uv = inputMesh.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
       }
       else if (unity_MetaVertexControl.y)
       {
           uv = inputMesh.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
       }

       // OpenGL right now needs to actually use the incoming vertex position
       // so we create a fake dependency on it here that haven't any impact.
       output.pos = float4(uv * 2.0 - 1.0, inputMesh.vertex.z > 0 ? 1.0e-4 : 0.0, 1.0);

       output.worldPos = TransformObjectToWorld(inputMesh.vertex.xyz).xyz;

       // Normal is required for triplanar mapping
       output.worldNormal = TransformObjectToWorldNormal(inputMesh.normal);
       // Not required but assign to silent compiler warning
       output.worldTangent = float4(1.0, 0.0, 0.0, 0.0);

       output.texcoord0 = inputMesh.texcoord0;
       output.texcoord1 = inputMesh.texcoord1;
       output.texcoord2 = inputMesh.texcoord2;
       // #if %TEXCOORD3REQUIREKEY%
       // output.texcoord3 = inputMesh.texcoord3;
       // #endif
       // #if %VERTEXCOLORREQUIREKEY%
       // output.vertexColor = inputMesh.vertexColor;
       // #endif

       return output;
   }
#else

   #if (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
      #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariablesMatrixDefsHDCamera.hlsl"

      void MotionVectorPositionZBias(VertexToPixel input)
      {
      #if UNITY_REVERSED_Z
          input.pos.z -= unity_MotionVectorsParams.z * input.pos.w;
      #else
          input.pos.z += unity_MotionVectorsParams.z * input.pos.w;
      #endif
      }

   #endif

   VertexToPixel Vert(VertexData input)
   {
       VertexToPixel output;
       ZERO_INITIALIZE(VertexToPixel, output);

       UNITY_SETUP_INSTANCE_ID(input);
       UNITY_TRANSFER_INSTANCE_ID(input, output);
       UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

       #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
         VertexData previousMesh = input;
       #endif

       ChainModifyVertex(input, output, _Time);

       // This return the camera relative position (if enable)
       float3 positionRWS = TransformObjectToWorld(input.vertex.xyz);
       float3 normalWS = TransformObjectToWorldNormal(input.normal);
       float4 tangentWS = float4(TransformObjectToWorldDir(input.tangent.xyz), input.tangent.w);


       output.worldPos = GetAbsolutePositionWS(positionRWS);
       output.pos = TransformWorldToHClip(positionRWS);
       output.worldNormal = normalWS;
       output.worldTangent = tangentWS;


       output.texcoord0 = input.texcoord0;
       output.texcoord1 = input.texcoord1;
       output.texcoord2 = input.texcoord2;

       // #if %TEXCOORD3REQUIREKEY%
       // output.texcoord3 = input.texcoord3;
       // #endif

       // #if %VERTEXCOLORREQUIREKEY%
       // output.vertexColor = input.vertexColor;
       // #endif

       // #if %SCREENPOSREQUIREKEY%
        output.screenPos = ComputeScreenPos(output.pos, _ProjectionParams.x);
       // #endif
   
       #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))

          #if !defined(TESSELLATION_ON)
            MotionVectorPositionZBias(output);
          #endif

          output.motionVectorCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(positionRWS.xyz, 1.0));
          // Note: unity_MotionVectorsParams.y is 0 is forceNoMotion is enabled
          bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
          if (forceNoMotion)
          {
              output.previousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
          }
          else
          {
            bool hasDeformation = unity_MotionVectorsParams.x > 0.0; // Skin or morph target

            float3 effectivePositionOS = (hasDeformation ? previousMesh.previousPositionOS : previousMesh.vertex.xyz);
            #if defined(_ADD_PRECOMPUTED_VELOCITY)
               effectivePositionOS -= input.precomputedVelocity;
            #endif

            previousMesh.vertex = float4(effectivePositionOS, 1);
            VertexToPixel dummy = (VertexToPixel)0;
            

            ChainModifyVertex(previousMesh, dummy, _LastTimeParameters);

            // we might need this for skinned objects?
            //float3 normalWS = TransformPreviousObjectToWorldNormal(input.normal).xyz;
            float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.vertex.xyz);

            #ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
            if (_TransparentCameraOnlyMotionVectors > 0)
            {
               previousPositionRWS = positionRWS.xyz;
            }
            #endif // _WRITE_TRANSPARENT_MOTION_VECTOR

            output.previousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
         }
       #endif // _HDRP && _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))


       return output;
   }


#endif



            

            

               #if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
                  #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalPrepassBuffer.hlsl"
               #endif

                FragInputs BuildFragInputs(VertexToPixel input)
                {
                    UNITY_SETUP_INSTANCE_ID(input);
                    FragInputs output;
                    ZERO_INITIALIZE(FragInputs, output);
            
                    // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                    // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                    // to compute normals which are then passed on elsewhere to compute other values...
                    output.tangentToWorld = k_identity3x3;
                    output.positionSS = input.pos;       // input.positionCS is SV_Position
                    // BETTER SHADERS: because we transform world position into actual world space for things like
                    // triplanar, etc, we have to back transform it here for lighting
                    output.positionRWS = GetCameraRelativePositionWS(input.worldPos);
                    output.tangentToWorld = BuildTangentToWorld(input.worldTangent, input.worldNormal);
                    output.texCoord0 = input.texcoord0;
                    output.texCoord1 = input.texcoord1;
                    output.texCoord2 = input.texcoord2;
            
                    return output;
                }
            
               void BuildSurfaceData(FragInputs fragInputs, inout Surface surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
               {
                   // setup defaults -- these are used if the graph doesn't output a value
                   ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                   // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                   // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                   surfaceData.specularOcclusion = 1.0;

                   // copy across graph values, if defined
                   surfaceData.baseColor =                 surfaceDescription.Albedo;
                   surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                   surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                   surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                   surfaceData.metallic =                  surfaceDescription.Metallic;
                   surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                   surfaceData.thickness =                 surfaceDescription.Thickness;
                   surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                   #if _USESPECULAR
                      surfaceData.specularColor =             surfaceDescription.Specular;
                   #endif
                   surfaceData.coatMask =                  surfaceDescription.CoatMask;
                   surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                   surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                   surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;



                   #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                        if (_EnableSSRefraction)
                        {
                            surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                            surfaceDescription.Alpha = 1.0;
                        }
                        else
                        {
                            surfaceData.ior = 1.0;
                            surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                            surfaceData.atDistance = 1.0;
                            surfaceData.transmittanceMask = 0.0;
                            surfaceDescription.Alpha = 1.0;
                        }
                    #else
                        surfaceData.ior = 1.0;
                        surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                        surfaceData.atDistance = 1.0;
                        surfaceData.transmittanceMask = 0.0;
                    #endif

                    

                    // These static material feature allow compile time optimization
                    surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
                    #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_TRANSMISSION
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_ANISOTROPY
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
                        surfaceData.normalWS = float3(0, 1, 0);
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
                    #endif
                
                    #if defined(_MATERIAL_FEATURE_CLEAR_COAT) || _CLEARCOAT
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
                    #endif
                
                    #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                        // Require to have setup baseColor
                        // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                        surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
                    #endif
                


                   // compute world space normal
                   #if !_WORLDSPACENORMAL
                      surfaceData.normalWS = mul(surfaceDescription.Normal, fragInputs.tangentToWorld);
                   #else
                      surfaceData.normalWS = surfaceDescription.Normal;
                   #endif

                   surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                   surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT

         
                    #if HAVE_DECALS
                        if (_EnableDecals)
                        {
                            float alpha = 1.0;
                            alpha = surfaceDescription.Alpha;
                
                            // Both uses and modifies 'surfaceData.normalWS'.
                            DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], alpha);
                            ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
                        }
                    #endif
                
                    bentNormalWS = surfaceData.normalWS;
                
                    surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
                
                    #ifdef DEBUG_DISPLAY
                        if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                        {
                            // TODO: need to update mip info
                            surfaceData.metallic = 0;
                        }
                
                        // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                        // as it can modify attribute use for static lighting
                        ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
                    #endif
                
                    // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                    // If user provide bent normal then we process a better term
                    #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                        // Just use the value passed through via the slot (not active otherwise)
                    #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                        // If we have bent normal and ambient occlusion, process a specular occlusion
                        surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                    #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                        surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                    #endif
                
                    #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                        surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
                    #endif
               }
        
               void GetSurfaceAndBuiltinData(VertexToPixel m2ps, FragInputs fragInputs, float3 V, inout PositionInputs posInput,
                     out SurfaceData surfaceData, out BuiltinData builtinData, inout Surface l, inout ShaderData d
                     #if NEED_FACING
                        , bool facing
                     #endif
                  )
               {
                 // Removed since crossfade does not work, probably needs extra material setup.   
                 //#if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                 //   #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                 //      LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                 //   #endif
                 //#endif

                 d = CreateShaderData(m2ps
                    #if NEED_FACING
                       , facing
                    #endif
                 );

                 l = (Surface)0;

                 l.Albedo = half3(0.5, 0.5, 0.5);
                 l.Normal = float3(0,0,1);
                 l.Occlusion = 1;
                 l.Alpha = 1;
                 l.SpecularOcclusion = 1;

                 #if !defined(SHADER_STAGE_RAY_TRACING) && defined(_DEPTHOFFSET_ON)
                    l.outputDepth = d.clipPos.z;
                 #endif

                 ChainSurfaceFunction(l, d);

                 #if !defined(SHADER_STAGE_RAY_TRACING) && defined(_DEPTHOFFSET_ON)
                    //posInput.deviceDepth = l.outputDepth;
                 #endif

                 #if _UNLIT
                     //l.Emission = l.Albedo;
                     //l.Albedo = 0;
                     l.Normal = half3(0,0,1);
                     l.Occlusion = 1;
                     l.Metallic = 0;
                     l.Specular = 0;
                 #endif

                 surfaceData.geomNormalWS = d.worldSpaceNormal;
                 surfaceData.tangentWS = d.worldSpaceTangent;
                 fragInputs.tangentToWorld = d.TBNMatrix;

                 float3 bentNormalWS;
                 BuildSurfaceData(fragInputs, l, V, posInput, surfaceData, bentNormalWS);


                 InitBuiltinData(posInput, l.Alpha, bentNormalWS, -d.worldSpaceNormal, fragInputs.texCoord1, fragInputs.texCoord2, builtinData);

                 

                 builtinData.emissiveColor = l.Emission;

                 #if defined(_OVERRIDE_BAKEDGI)
                    builtinData.bakeDiffuseLighting = l.DiffuseGI;
                    builtinData.backBakeDiffuseLighting = l.BackDiffuseGI;
                    builtinData.emissiveColor += l.SpecularGI;
                 #endif

                 #if defined(_OVERRIDE_SHADOWMASK)
                    builtinData.shadowMask0 = l.ShadowMask.x;
                    builtinData.shadowMask1 = l.ShadowMask.y;
                    builtinData.shadowMask2 = l.ShadowMask.z;
                    builtinData.shadowMask3 = l.ShadowMask.w;
                 #endif

                  #ifdef UNITY_VIRTUAL_TEXTURING
                     builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                  #endif

                  #if (SHADERPASS == SHADERPASS_DISTORTION)
                     builtinData.distortion = surfaceData.Distortion;
                     builtinData.distortionBlur = surfaceData.DistortionBlur;
                  #endif

                  #ifndef SHADER_UNLIT
                    // PostInitBuiltinData call ApplyDebugToBuiltinData
                    PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                  #else
                    ApplyDebugToBuiltinData(builtinData);
                  #endif
         
                  RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
               }


            float4 Frag(VertexToPixel v2f
               #if NEED_FACING
                  , bool facing : SV_IsFrontFace
               #endif
            ) : SV_Target
            {
                FragInputs input = BuildFragInputs(v2f);

                // input.positionSS is SV_Position
                PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

                float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

                SurfaceData surfaceData;
                BuiltinData builtinData;
                Surface l;
                ShaderData d;
                GetSurfaceAndBuiltinData(v2f, input, V, posInput, surfaceData, builtinData, l, d
               #if NEED_FACING
                  , facing
               #endif
               );

                // no debug apply during light transport pass

                BSDFData bsdfData = ConvertSurfaceDataToBSDFData(input.positionSS.xy, surfaceData);
                LightTransportData lightTransportData = GetLightTransportData(surfaceData, builtinData, bsdfData);

                // This shader is call two times. Once for getting emissiveColor, the other time to get diffuseColor
                // We use unity_MetaFragmentControl to make the distinction.
                float4 res = float4(0.0, 0.0, 0.0, 1.0);

                if (unity_MetaFragmentControl.x)
                {
                    // Apply diffuseColor Boost from LightmapSettings.
                    // put abs here to silent a warning, no cost, no impact as color is assume to be positive.
                    res.rgb = clamp(pow(abs(lightTransportData.diffuseColor), saturate(unity_OneOverOutputBoost)), 0, unity_MaxOutputValue);
                }

                if (unity_MetaFragmentControl.y)
                {
                    // emissive use HDR format
                    res.rgb = lightTransportData.emissiveColor;
                }

                return res;
            }



            ENDHLSL
        }
        
              Pass
        {
            // based on HDLitPass.template
            Name "SceneSelectionPass"
            Tags { "LightMode" = "SceneSelectionPass" }
        
            Cull Off
            ColorMask 0

            	Cull [_SGT_Cull]


            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch
            #pragma multi_compile_instancing
            #pragma editor_sync_compilation
            #pragma instancing_options renderinglayer
        
            //#pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
            //#pragma shader_feature_local _BLENDMODE_OFF _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
            //#pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
            //#pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            //#pragma shader_feature_local _ _ENABLE_FOG_ON_TRANSPARENT
            //#pragma shader_feature_local _ _DISABLE_DECALS
            //#pragma shader_feature_local _ _DISABLE_SSR
            //#pragma shader_feature_local _ _DISABLE_SSR_TRANSPARENT
            //#pragma shader_feature_local _REFRACTION_OFF _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
                
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            #define _ENABLE_FOG_ON_TRANSPARENT 1
            // #define _AMBIENT_OCCLUSION 1
            // #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            // #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
            // #define _ADD_PRECOMPUTED_VELOCITY
            // #define _WRITE_TRANSPARENT_MOTION_VECTOR 1
            // #define _DEPTHOFFSET_ON 1
            // #define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1

            #define SHADERPASS SHADERPASS_DEPTH_ONLY
            #define RAYTRACING_SHADER_GRAPH_DEFAULT
            #define SCENESELECTIONPASS
            #define _PASSSCENESELECT 1

            
	#define __SGT_LIGHTANDSHADOW 1
	#define SGT_MAX_LIGHTS 16
	#define SGT_MAX_SPHERE_SHADOWS 16
	#define SGT_MAX_RING_SHADOWS 1


	#define __SGT_MATRIX 1


	#define __SGT_OUTPUT 1


	#pragma shader_feature_local _SGT_LIGHTING
	#pragma shader_feature_local _SGT_SCATTERING
	#pragma shader_feature_local _SGT_HDR
	#pragma multi_compile_local _ _SGT_OUTER
	#pragma multi_compile_local _ _SGT_SOFTNESS


    #pragma shader_feature_local DISABLEFOG    


	#pragma shader_feature_local _ADD_PRECOMPUTED_VELOCITY
	#pragma shader_feature_local _TRANSPARENT_WRITES_MOTION_VEC
	#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
	#pragma shader_feature_local _DISABLE_DECALS
	#pragma shader_feature_local _DISABLE_SSR
	#pragma shader_feature_local _DISABLE_SSR_TRANSPARENT
	#pragma shader_feature_local _REFRACTION_OFF _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN         


   #define _HDRP 1
#define _BLENDMODE_ALPHA 1
#define _SURFACE_TYPE_TRANSPARENT 1

#define _UNLIT 1
#define REQUIRE_DEPTH_TEXTURE
#define _USINGTEXCOORD1 1
#define _USINGTEXCOORD2 1


               #pragma vertex Vert
   #pragma fragment Frag
        
            

        
                  // useful conversion functions to make surface shader code just work

      #define UNITY_DECLARE_TEX2D(name) TEXTURE2D(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2D_NOSAMPLER(name) TEXTURE2D(name);
      #define UNITY_DECLARE_TEX2DARRAY(name) TEXTURE2D_ARRAY(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(tex) TEXTURE2D_ARRAY(tex);

      #define UNITY_SAMPLE_TEX2DARRAY(tex,coord)            SAMPLE_TEXTURE2D_ARRAY(tex, sampler##tex, coord.xy, coord.z)
      #define UNITY_SAMPLE_TEX2DARRAY_LOD(tex,coord,lod)    SAMPLE_TEXTURE2D_ARRAY_LOD(tex, sampler##tex, coord.xy, coord.z, lod)
      #define UNITY_SAMPLE_TEX2D(tex, coord)                SAMPLE_TEXTURE2D(tex, sampler##tex, coord)
      #define UNITY_SAMPLE_TEX2D_SAMPLER(tex, samp, coord)  SAMPLE_TEXTURE2D(tex, sampler##samp, coord)

      #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod)   SAMPLE_TEXTURE2D_LOD(tex, sampler_##tex, coord, lod)
      #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) SAMPLE_TEXTURE2D_LOD (tex, sampler##samplertex,coord, lod)

      #if defined(UNITY_COMPILER_HLSL)
         #define UNITY_INITIALIZE_OUTPUT(type,name) name = (type)0;
      #else
         #define UNITY_INITIALIZE_OUTPUT(type,name)
      #endif

      #define sampler2D_float sampler2D
      #define sampler2D_half sampler2D

      #undef WorldNormalVector
      #define WorldNormalVector(data, normal) mul(normal, data.TBNMatrix)

      #define UnityObjectToWorldNormal(normal) mul(GetObjectToWorldMatrix(), normal)




// HDRP Adapter stuff
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl" // Need to be here for Gradient struct definition

            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT 
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
    
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
    



            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
               #define OUTPUT_SPLIT_LIGHTING
            #endif

            #define HAVE_RECURSIVE_RENDERING

            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
               #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                  #define WRITE_NORMAL_BUFFER
               #endif
            #endif

            #ifndef DEBUG_DISPLAY
               // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
               // Don't do it with debug display mode as it is possible there is no depth prepass in this case
               #if !defined(_SURFACE_TYPE_TRANSPARENT) && defined(_ALPHATEST)
                  #if SHADERPASS == SHADERPASS_FORWARD
                  #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                  #elif SHADERPASS == SHADERPASS_GBUFFER
                  #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                  #endif
               #endif
            #endif

            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
               #define _DEFERRED_CAPABLE_MATERIAL
            #endif
    
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
               #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif




            CBUFFER_START(UnityPerMaterial)
               float _UseShadowThreshold;
               float _BlendMode;
               float _EnableBlendModePreserveSpecularLighting;
               float _RayTracing;
               float _RefractionModel;

              
	int    _SGT_LightCount;
	float4 _SGT_LightColor[SGT_MAX_LIGHTS];
	float4 _SGT_LightPosition[SGT_MAX_LIGHTS];
	float3 _SGT_LightDirection[SGT_MAX_LIGHTS];

	int       _SGT_SphereShadowCount;
	float4x4  _SGT_SphereShadowMatrix[SGT_MAX_SPHERE_SHADOWS];
	float4    _SGT_SphereShadowPower[SGT_MAX_SPHERE_SHADOWS];

	int       _SGT_RingShadowCount;
	sampler2D _SGT_RingShadowTexture;
	float4    _SGT_RingShadowColor[SGT_MAX_RING_SHADOWS];
	float4x4  _SGT_RingShadowMatrix[SGT_MAX_RING_SHADOWS];
	float     _SGT_RingShadowRatio[SGT_MAX_RING_SHADOWS];






	float4    _SGT_Color; // Auto
	float     _SGT_Brightness; // Auto
	sampler2D _SGT_InnerDepthTex;
	sampler2D _SGT_OuterDepthTex;

	float     _SGT_HorizonLengthRecip;
	float     _SGT_Sky;
	float4x4  _SGT_WorldToLocal;
	float4x4  _SGT_LocalToWorld;

	sampler2D _SGT_LightingTex;
	float3    _SGT_AmbientColor;

	float4    _SGT_ScatteringTerms;
	float4    _SGT_ScatteringInner;
	float4    _SGT_ScatteringOuter;
	sampler2D _SGT_ScatteringTex;
	float     _SGT_InnerRatio;
	float     _SGT_InnerScale;

	float _SGT_SoftParticlesFactor; // Auto







            CBUFFER_END
    


             // -- Property used by ScenePickingPass
               #ifdef SCENEPICKINGPASS
               float4 _SelectionID;
               #endif
    
               // -- Properties used by SceneSelectionPass
               #ifdef SCENESELECTIONPASS
               int _ObjectId;
               int _PassValue;
               #endif
  
           
            // data across stages, stripped like the above.
            struct VertexToPixel
            {
               float4 pos : SV_POSITION;
               float3 worldPos : TEXCOORD0;
               float3 worldNormal : TEXCOORD1;
               float4 worldTangent : TEXCOORD2;
               float4 texcoord0 : TEXCOORD3;
               float4 texcoord1 : TEXCOORD4;
               float4 texcoord2 : TEXCOORD5;
               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD6;
               // #endif

               // #if %SCREENPOSREQUIREKEY%
                float4 screenPos : TEXCOORD7;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD12;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD13;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD14;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD15;
               // #endif

               #if UNITY_ANY_INSTANCING_ENABLED
                  uint instanceID : INSTANCEID_SEMANTIC;
               #endif // UNITY_ANY_INSTANCING_ENABLED

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float4 previousPositionCS : TEXCOORD16; // Contain previous transform position (in case of skinning for example)
                  float4 motionVectorCS : TEXCOORD17;
               #endif

               UNITY_VERTEX_OUTPUT_STEREO
            }; 


            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
    
  
            
            
            // data describing the user output of a pixel
            struct Surface
            {
               half3 Albedo;
               half Height;
               half3 Normal;
               half Smoothness;
               half3 Emission;
               half Metallic;
               half3 Specular;
               half Occlusion;
               half SpecularPower; // for simple lighting
               half Alpha;
               float outputDepth; // if written, SV_Depth semantic is used. ShaderData.clipPos.z is unused value
               // HDRP Only
               half SpecularOcclusion;
               half SubsurfaceMask;
               half Thickness;
               half CoatMask;
               half CoatSmoothness;
               half Anisotropy;
               half IridescenceMask;
               half IridescenceThickness;
               int DiffusionProfileHash;
               float SpecularAAThreshold;
               float SpecularAAScreenSpaceVariance;
               // requires _OVERRIDE_BAKEDGI to be defined, but is mapped in all pipelines
               float3 DiffuseGI;
               float3 BackDiffuseGI;
               float3 SpecularGI;
               // requires _OVERRIDE_SHADOWMASK to be defines
               float4 ShadowMask;
            };

            // Data the user declares in blackboard blocks
            struct Blackboard
            {
                
                float blackboardDummyData;
            };

            // data the user might need, this will grow to be big. But easy to strip
            struct ShaderData
            {
               float4 clipPos; // SV_POSITION
               float3 localSpacePosition;
               float3 localSpaceNormal;
               float3 localSpaceTangent;
        
               float3 worldSpacePosition;
               float3 worldSpaceNormal;
               float3 worldSpaceTangent;
               float tangentSign;

               float3 worldSpaceViewDir;
               float3 tangentSpaceViewDir;

               float4 texcoord0;
               float4 texcoord1;
               float4 texcoord2;
               float4 texcoord3;

               float2 screenUV;
               float4 screenPos;

               float4 vertexColor;
               bool isFrontFace;

               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;

               float3x3 TBNMatrix;
               Blackboard blackboard;
            };

            struct VertexData
            {
               #if SHADER_TARGET > 30
               // uint vertexID : SV_VertexID;
               #endif
               float4 vertex : POSITION;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;

               // optimize out mesh coords when not in use by user or lighting system
               #if _URP && (_USINGTEXCOORD1 || _PASSMETA || _PASSFORWARD || _PASSGBUFFER)
                  float4 texcoord1 : TEXCOORD1;
               #endif

               #if _URP && (_USINGTEXCOORD2 || _PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && defined(DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif

               #if _STANDARD && (_USINGTEXCOORD1 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER || _PASSFORWARDADD) && LIGHTMAP_ON)))
                  float4 texcoord1 : TEXCOORD1;
               #endif
               #if _STANDARD && (_USINGTEXCOORD2 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif


               #if _HDRP
                  float4 texcoord1 : TEXCOORD1;
                  float4 texcoord2 : TEXCOORD2;
               #endif

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float3 previousPositionOS : TEXCOORD4; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity    : TEXCOORD5; // Add Precomputed Velocity (Alembic computes velocities on runtime side).
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct TessVertex 
            {
               float4 vertex : INTERNALTESSPOS;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;
               float4 texcoord1 : TEXCOORD1;
               float4 texcoord2 : TEXCOORD2;

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD5;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD6;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD7;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD12;
               // #endif

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float3 previousPositionOS : TEXCOORD13; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity : TEXCOORD14;
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
               UNITY_VERTEX_OUTPUT_STEREO
            };

            struct ExtraV2F
            {
               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;
               Blackboard blackboard;
               float4 time;
            };


            float3 WorldToTangentSpace(ShaderData d, float3 normal)
            {
               return mul(d.TBNMatrix, normal);
            }

            float3 TangentToWorldSpace(ShaderData d, float3 normal)
            {
               return mul(normal, d.TBNMatrix);
            }

            // in this case, make standard more like SRPs, because we can't fix
            // unity_WorldToObject in HDRP, since it already does macro-fu there

            #if _STANDARD
               float3 TransformWorldToObject(float3 p) { return mul(unity_WorldToObject, float4(p, 1)); };
               float3 TransformObjectToWorld(float3 p) { return mul(unity_ObjectToWorld, float4(p, 1)); };
               float4 TransformWorldToObject(float4 p) { return mul(unity_WorldToObject, p); };
               float4 TransformObjectToWorld(float4 p) { return mul(unity_ObjectToWorld, p); };
               float4x4 GetWorldToObjectMatrix() { return unity_WorldToObject; }
               float4x4 GetObjectToWorldMatrix() { return unity_ObjectToWorld; }
               #if (defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (SHADER_TARGET_SURFACE_ANALYSIS && !SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod) tex.SampleLevel (sampler##tex,coord, lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) tex.SampleLevel (sampler##samplertex,coord, lod)
              #else
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord,lod) tex2D (tex,coord,0,lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord,lod) tex2D (tex,coord,0,lod)
              #endif

               #undef GetWorldToObjectMatrix()

               #define GetWorldToObjectMatrix()   unity_WorldToObject


            #endif

            float3 GetCameraWorldPosition()
            {
               #if _HDRP
                  return GetCameraRelativePositionWS(_WorldSpaceCameraPos);
               #else
                  return _WorldSpaceCameraPos;
               #endif
            }

            #if _GRABPASSUSED
               #if _STANDARD
                  TEXTURE2D(%GRABTEXTURE%);
                  SAMPLER(sampler_%GRABTEXTURE%);
               #endif

               half3 GetSceneColor(float2 uv)
               {
                  #if _STANDARD
                     return SAMPLE_TEXTURE2D(%GRABTEXTURE%, sampler_%GRABTEXTURE%, uv).rgb;
                  #else
                     return SHADERGRAPH_SAMPLE_SCENE_COLOR(uv);
                  #endif
               }
            #endif


      
            #if _STANDARD
               UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
               float GetSceneDepth(float2 uv) { return SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv)); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv)); } 
            #else
               float GetSceneDepth(float2 uv) { return SHADERGRAPH_SAMPLE_SCENE_DEPTH(uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv), _ZBufferParams); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv), _ZBufferParams); } 
            #endif

            float3 GetWorldPositionFromDepthBuffer(float2 uv, float3 worldSpaceViewDir)
            {
               float eye = GetLinearEyeDepth(uv);
               float3 camView = mul((float3x3)GetObjectToWorldMatrix(), transpose(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V)) [2].xyz);

               float dt = dot(worldSpaceViewDir, camView);
               float3 div = worldSpaceViewDir/dt;
               float3 wpos = (eye * div) + GetCameraWorldPosition();
               return wpos;
            }

            #if _HDRP
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return GetAbsolutePositionWS(TransformObjectToWorld(pos));
            }
            #else
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return TransformObjectToWorld(pos);
            }
            #endif

            #if _STANDARD
               UNITY_DECLARE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture);
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  float4 depthNorms = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture, uv);
                  float3 norms = DecodeViewNormalStereo(depthNorms);
                  norms = mul((float3x3)GetWorldToViewMatrix(), norms) * 0.5 + 0.5;
                  return norms;
               }
            #elif _HDRP
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  NormalData nd;
                  DecodeFromNormalBuffer(_ScreenSize.xy * uv, nd);
                  return nd.normalWS;
               }
            #elif _URP
               #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                  #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareNormalsTexture.hlsl"
               #endif

               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                     return SampleSceneNormals(uv);
                  #else
                     float3 wpos = GetWorldPositionFromDepthBuffer(uv, worldSpaceViewDir);
                     return normalize(-cross(ddx(wpos), ddy(wpos))) * 0.5 + 0.5;
                  #endif

                }
             #endif

             #if _HDRP

               half3 UnpackNormalmapRGorAG(half4 packednormal)
               {
                     // This do the trick
                  packednormal.x *= packednormal.w;

                  half3 normal;
                  normal.xy = packednormal.xy * 2 - 1;
                  normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                  return normal;
               }
               half3 UnpackNormal(half4 packednormal)
               {
                  #if defined(UNITY_NO_DXT5nm)
                     return packednormal.xyz * 2 - 1;
                  #else
                     return UnpackNormalmapRGorAG(packednormal);
                  #endif
               }
               #endif
               #if _HDRP || _URP

               half3 UnpackScaleNormal(half4 packednormal, half scale)
               {
                 #ifndef UNITY_NO_DXT5nm
                   // Unpack normal as DXT5nm (1, y, 1, x) or BC5 (x, y, 0, 1)
                   // Note neutral texture like "bump" is (0, 0, 1, 1) to work with both plain RGB normal and DXT5nm/BC5
                   packednormal.x *= packednormal.w;
                 #endif
                   half3 normal;
                   normal.xy = (packednormal.xy * 2 - 1) * scale;
                   normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                   return normal;
               }	

             #endif


            void GetSun(out float3 lightDir, out float3 color)
            {
               lightDir = float3(0.5, 0.5, 0);
               color = 1;
               #if _HDRP
                  if (_DirectionalLightCount > 0)
                  {
                     DirectionalLightData light = _DirectionalLightDatas[0];
                     lightDir = -light.forward.xyz;
                     color = light.color;
                  }
               #elif _STANDARD
			         lightDir = normalize(_WorldSpaceLightPos0.xyz);
                  color = _LightColor0.rgb;
               #elif _URP
	               Light light = GetMainLight();
	               lightDir = light.direction;
	               color = light.color;
               #endif
            }



            

            

            #ifdef unity_WorldToObject
#undef unity_WorldToObject
#endif
#ifdef unity_ObjectToWorld
#undef unity_ObjectToWorld
#endif
#define unity_ObjectToWorld GetObjectToWorldMatrix()
#define unity_WorldToObject GetWorldToObjectMatrix()

	float SGT_ScatteringPhase(float angle, float4 terms, float4 strengths)
	{
		return dot(pow(saturate(angle * sign(terms)), abs(terms)), strengths);
	}

	float4 SGT_SphereShadowColor(float4x4 shadowMatrix, float4 shadowPower, float4 worldPoint)
	{
		float4 shadowPoint = mul(shadowMatrix, worldPoint);
		float  shadowMag   = length(shadowPoint.xy);

		//shadowMag = 1.0f - (1.0f - shadowMag) * shadowRatio;

		//float4 shadow = 1.0f - pow(1.0f - shadowMag, shadowPower);
		float4 shadow = pow(shadowMag, shadowPower);

		shadow += shadowPoint.z < 0.0f;

		return saturate(shadow);
	}

	float4 SGT_RingShadowColor(float4x4 shadowMatrix, sampler2D shadowSampler, float shadowRatio, float4 worldPoint)
	{
		float4 shadowPoint = mul(shadowMatrix, worldPoint);
		float  shadowMag   = length(shadowPoint.xy);

		shadowMag = 1.0f - (1.0f - shadowMag) * shadowRatio;

		float4 shadow = tex2D(shadowSampler, shadowMag.xx);

		shadow += shadowPoint.z < 0.0f;

		return saturate(shadow);
	}

	float4 SGT_ShadowColor(float3 worldPoint3)
	{
		float4 worldPoint = float4(worldPoint3, 1.0f);
		float4 color      = 1.0f;

		for (int s = 0; s < _SGT_SphereShadowCount; s++)
		{
			color *= SGT_SphereShadowColor(_SGT_SphereShadowMatrix[s], _SGT_SphereShadowPower[s], worldPoint);
		}

		for (int r = 0; r < _SGT_RingShadowCount; r++)
		{
			color *= SGT_RingShadowColor(_SGT_RingShadowMatrix[r], _SGT_RingShadowTexture, _SGT_RingShadowRatio[r], worldPoint);
		}

		return color;
	}


	float4 SGT_O2W(float4 v)
	{
		v = mul(GetObjectToWorldMatrix(), v);
		#if _HDRP
			v.xyz = GetAbsolutePositionWS(v.xyz);
		#endif
		return v;
	}
	float4 SGT_W2O(float4 v)
	{
		#if _HDRP
			v.xyz = GetCameraRelativePositionWS(v.xyz);
		#endif
		return mul(GetWorldToObjectMatrix(), v);
	}

	float4 SGT_O2V(float4 v)
	{
		#if _STANDARD
			return float4(UnityObjectToViewPos(v.xyz), 1.0f);
		#else
			return float4(TransformWorldToView(TransformObjectToWorld(v.xyz)), 1.0f);
		#endif
	}
	float4 SGT_V2O(float4 v)
	{
		return mul(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V), v);
	}

	float4 SGT_W2V(float4 v)
	{
		#if _STANDARD
			return mul(GetWorldToViewMatrix(), v);
		#else
			return float4(TransformWorldToView(v.xyz), 1.0f);
		#endif
	}
	float4 SGT_V2M(float4 v)
	{
		v = mul(UNITY_MATRIX_I_V, v);
		#if _HDRP
			v.xyz = GetAbsolutePositionWS(v.xyz);
		#endif
		return v;
	}

	float4 SGT_W2P(float4 v)
	{
		#if _HDRP
			v.xyz = GetCameraRelativePositionWS(v.xyz);
		#endif
		#if _STANDARD
			return mul(GetWorldToHClipMatrix(), v);
		#else
			return TransformWorldToHClip(v.xyz);
		#endif
	}


	float4 SGT_ModifyUnlitOutput(float4 finalColor)
	{
		#if _HDRP
			finalColor.xyz *= 25000.0f;
		#endif
		return finalColor;
	}

	void SGT_OutputWithoutAlpha(inout Surface o, float4 finalColor)
	{
		#if _HDRP
			o.Emission = finalColor.xyz;
			o.Albedo   = 0.0f;
		#elif _URP
			o.Emission = finalColor.xyz;
			o.Albedo   = finalColor.xyz;
		#else
			o.Albedo = finalColor.xyz;
		#endif
	}

	void SGT_OutputWithAlpha(inout Surface o, float4 finalColor)
	{
		SGT_OutputWithoutAlpha(o, finalColor);

		o.Alpha = finalColor.w;
	}


	float SGT_GetOutsideDistance(float3 ray, float3 rayD)
	{
		float B = dot(ray, rayD);
		float C = dot(ray, ray) - 1.0f;
		float D = B * B - C;
		return -B - sqrt(max(D, 0.0f));
	}

	float SGT_GetOutsideDistance2(float3 ray, float3 rayD)
	{
		float B = dot(ray, rayD);
		float C = dot(ray, ray) - 1.0f;
		float D = B * B - C;
		return max(-B - sqrt(max(D, 0.0f)), 0.0f);
	}

	float3 SGT_GetNear(float3 far)
	{
		float3 wcam = _WorldSpaceCameraPos;
		float3 near = mul(_SGT_WorldToLocal, float4(wcam, 1.0f)).xyz;
		float3 dir  = normalize(far - near);

		return near + dir * SGT_GetOutsideDistance2(near, dir);
	}

	void ModifyInnerVertex(inout VertexData v, inout ExtraV2F e)
	{
		#if __SGT_MATRIX
			float3 wcam = _WorldSpaceCameraPos;
			float4 wpos = SGT_O2W(v.vertex);
			float3 far  = mul(_SGT_WorldToLocal, wpos).xyz;
			float3 near = mul(_SGT_WorldToLocal, float4(wcam, 1.0f)).xyz;

			float3 nearFar = far - near;
			float3 dir     = normalize(nearFar);
			float  depthA  = length(nearFar);
			float  depthB  = SGT_GetOutsideDistance(near, dir);
			near += dir * max(depthB, 0.0f);
			float depth = length(near - far);

			v.texcoord0.x   = depth * _SGT_HorizonLengthRecip;
			v.texcoord0.y   = (length(far) - _SGT_InnerRatio) * _SGT_InnerScale; // Altitude
			v.texcoord1.xyz = mul((float3x3)_SGT_LocalToWorld, near);
		#endif
	}

	void ModifyOuterVertex(inout VertexData v, inout ExtraV2F e)
	{
		#if __SGT_MATRIX
			float4 wPos = SGT_O2W(v.vertex);
			float3 far  = mul(_SGT_WorldToLocal, wPos).xyz;
			float3 near = SGT_GetNear(far);

			v.texcoord0.xy = length(near - far) * _SGT_HorizonLengthRecip;

			#if _SGT_SOFTNESS
				v.texcoord1.z = -SGT_O2V(v.vertex).z;
			#endif

			v.texcoord2.xyz = mul((float3x3)_SGT_LocalToWorld, near);
		#endif
	}

	void Ext_ModifyVertex0 (inout VertexData v, inout ExtraV2F e)
	{
		#if _SGT_OUTER
			ModifyOuterVertex(v, e);
		#else
			ModifyInnerVertex(v, e);
		#endif
	}

	void SurfaceInnerFunction(inout Surface o, inout ShaderData d)
	{
		#if __SGT_OUTPUT
			float4 depth = tex2D(_SGT_InnerDepthTex, d.texcoord0.xx);
			float4 main  = depth * _SGT_Color;
			float3 wcam  = _WorldSpaceCameraPos;
			float3 wnorm = normalize(d.texcoord1.xyz);

			main.rgb *= _SGT_Brightness;
			main.a   *= smoothstep(1.0f, 0.0f, saturate(d.texcoord0.y));

			float4 finalColor = main;

			#if __SGT_LIGHTANDSHADOW
				#if _SGT_LIGHTING
					finalColor.rgb *= _SGT_AmbientColor;

					float4 lighting   = 0.0f;
					float4 scattering = 0.0f;

					for (int i = 0; i < _SGT_LightCount; i++)
					{
						float theta = dot(wnorm, _SGT_LightDirection[i]) * 0.5f + 0.5f;

						lighting += tex2D(_SGT_LightingTex, theta) * main * _SGT_LightColor[i];

						#if _SGT_SCATTERING
							float3 worldViewDir  = normalize(d.worldSpacePosition - wcam);
							float3 worldLightDir = normalize(_SGT_LightPosition[i].xyz - wcam);
							float  angle         = dot(worldViewDir, worldLightDir);
							float  phase         = SGT_ScatteringPhase(angle, _SGT_ScatteringTerms, _SGT_ScatteringInner);

							scattering += tex2D(_SGT_ScatteringTex, theta) * _SGT_LightColor[i] * phase;
						#endif
					}

					#if _SGT_SCATTERING
						#if _SGT_HDR || _HDRP
							scattering *= main;
							lighting.xyz += scattering.xyz;
						#else
							scattering *= finalColor.a; // Fade scattering out according to optical depth
							scattering *= saturate(1.0f - (finalColor + lighting)); // Only scatter into remaining rgba
							lighting += scattering;
						#endif
					#endif

					finalColor += lighting * saturate(SGT_ShadowColor(d.worldSpacePosition) + finalColor.a * 0.5f);
					//finalColor += lighting * lerp(SGT_ShadowColor(d.worldSpacePosition), 1.0f, finalColor.a);
					finalColor.a = saturate(finalColor.a);
				#else
					finalColor = SGT_ModifyUnlitOutput(finalColor);
				#endif
			#endif

			SGT_OutputWithAlpha(o, finalColor);
		#endif
	}

	void SurfaceOuterFunction(inout Surface o, inout ShaderData d)
	{
		#if __SGT_OUTPUT
			float4 depth = tex2D(_SGT_OuterDepthTex, d.texcoord0.xx); depth.a = saturate(depth.a + (1.0f - depth.a) * _SGT_Sky);
			float4 main  = depth * _SGT_Color;
			float3 wcam  = _WorldSpaceCameraPos;
			float3 wnorm = normalize(d.texcoord2.xyz);

			main.rgb *= _SGT_Brightness;

			#if _SGT_SOFTNESS
				float sceneZ = GetLinearEyeDepth(d.screenUV);
				float partZ = d.texcoord1.z;

				main.a *= smoothstep(0.0f, 1.0f, _SGT_SoftParticlesFactor * abs(sceneZ - partZ));
			#endif

			float4 finalColor = main;

			#if __SGT_LIGHTANDSHADOW
				#if _SGT_LIGHTING
					finalColor.rgb *= _SGT_AmbientColor;

					float4 lighting   = 0.0f;
					float4 scattering = 0.0f;

					for (int i = 0; i < _SGT_LightCount; i++)
					{
						float theta = dot(wnorm, _SGT_LightDirection[i]) * 0.5f + 0.5f;

						lighting += tex2D(_SGT_LightingTex, theta) * main * _SGT_LightColor[i];

						#if _SGT_SCATTERING
							float3 worldViewDir  = normalize(d.worldSpacePosition - wcam);
							float3 worldLightDir = normalize(_SGT_LightPosition[i].xyz - wcam);
							float  angle         = dot(worldViewDir, worldLightDir);
							float  phase         = SGT_ScatteringPhase(angle, _SGT_ScatteringTerms, _SGT_ScatteringOuter);

							scattering += tex2D(_SGT_ScatteringTex, theta) * _SGT_LightColor[i] * phase;
						#endif
					}

					#if _SGT_SCATTERING
						#if _SGT_HDR || _HDRP
							scattering *= main;
							lighting.xyz += scattering.xyz;
						#else
							scattering *= finalColor.a; // Fade scattering out according to optical depth
							scattering *= saturate(1.0f - (finalColor + lighting)); // Only scatter into remaining rgba
							lighting += scattering;
						#endif
					#endif

					finalColor += lighting * SGT_ShadowColor(d.worldSpacePosition);
					finalColor.a = saturate(main.a);
				#else
					finalColor = SGT_ModifyUnlitOutput(finalColor);
				#endif
			#endif

			SGT_OutputWithAlpha(o, finalColor);
		#endif
	}

	void Ext_SurfaceFunction0 (inout Surface o, inout ShaderData d)
	{
		#if _SGT_OUTER
			SurfaceOuterFunction(o, d);
		#else
			SurfaceInnerFunction(o, d);
		#endif
	}







        
            void ChainSurfaceFunction(inout Surface l, inout ShaderData d)
            {
                  Ext_SurfaceFunction0(l, d);
                 // Ext_SurfaceFunction1(l, d);
                 // Ext_SurfaceFunction2(l, d);
                 // Ext_SurfaceFunction3(l, d);
                 // Ext_SurfaceFunction4(l, d);
                 // Ext_SurfaceFunction5(l, d);
                 // Ext_SurfaceFunction6(l, d);
                 // Ext_SurfaceFunction7(l, d);
                 // Ext_SurfaceFunction8(l, d);
                 // Ext_SurfaceFunction9(l, d);
		           // Ext_SurfaceFunction10(l, d);
                 // Ext_SurfaceFunction11(l, d);
                 // Ext_SurfaceFunction12(l, d);
                 // Ext_SurfaceFunction13(l, d);
                 // Ext_SurfaceFunction14(l, d);
                 // Ext_SurfaceFunction15(l, d);
                 // Ext_SurfaceFunction16(l, d);
                 // Ext_SurfaceFunction17(l, d);
                 // Ext_SurfaceFunction18(l, d);
		           // Ext_SurfaceFunction19(l, d);
                 // Ext_SurfaceFunction20(l, d);
                 // Ext_SurfaceFunction21(l, d);
                 // Ext_SurfaceFunction22(l, d);
                 // Ext_SurfaceFunction23(l, d);
                 // Ext_SurfaceFunction24(l, d);
                 // Ext_SurfaceFunction25(l, d);
                 // Ext_SurfaceFunction26(l, d);
                 // Ext_SurfaceFunction27(l, d);
                 // Ext_SurfaceFunction28(l, d);
		           // Ext_SurfaceFunction29(l, d);
            }

            void ChainModifyVertex(inout VertexData v, inout VertexToPixel v2p, float4 time)
            {
                 ExtraV2F d;
                 
                 ZERO_INITIALIZE(ExtraV2F, d);
                 ZERO_INITIALIZE(Blackboard, d.blackboard);
                 // due to motion vectors in HDRP, we need to use the last
                 // time in certain spots. So if you are going to use _Time to adjust vertices,
                 // you need to use this time or motion vectors will break. 
                 d.time = time;

                   Ext_ModifyVertex0(v, d);
                 // Ext_ModifyVertex1(v, d);
                 // Ext_ModifyVertex2(v, d);
                 // Ext_ModifyVertex3(v, d);
                 // Ext_ModifyVertex4(v, d);
                 // Ext_ModifyVertex5(v, d);
                 // Ext_ModifyVertex6(v, d);
                 // Ext_ModifyVertex7(v, d);
                 // Ext_ModifyVertex8(v, d);
                 // Ext_ModifyVertex9(v, d);
                 // Ext_ModifyVertex10(v, d);
                 // Ext_ModifyVertex11(v, d);
                 // Ext_ModifyVertex12(v, d);
                 // Ext_ModifyVertex13(v, d);
                 // Ext_ModifyVertex14(v, d);
                 // Ext_ModifyVertex15(v, d);
                 // Ext_ModifyVertex16(v, d);
                 // Ext_ModifyVertex17(v, d);
                 // Ext_ModifyVertex18(v, d);
                 // Ext_ModifyVertex19(v, d);
                 // Ext_ModifyVertex20(v, d);
                 // Ext_ModifyVertex21(v, d);
                 // Ext_ModifyVertex22(v, d);
                 // Ext_ModifyVertex23(v, d);
                 // Ext_ModifyVertex24(v, d);
                 // Ext_ModifyVertex25(v, d);
                 // Ext_ModifyVertex26(v, d);
                 // Ext_ModifyVertex27(v, d);
                 // Ext_ModifyVertex28(v, d);
                 // Ext_ModifyVertex29(v, d);


                 // #if %EXTRAV2F0REQUIREKEY%
                 // v2p.extraV2F0 = d.extraV2F0;
                 // #endif

                 // #if %EXTRAV2F1REQUIREKEY%
                 // v2p.extraV2F1 = d.extraV2F1;
                 // #endif

                 // #if %EXTRAV2F2REQUIREKEY%
                 // v2p.extraV2F2 = d.extraV2F2;
                 // #endif

                 // #if %EXTRAV2F3REQUIREKEY%
                 // v2p.extraV2F3 = d.extraV2F3;
                 // #endif

                 // #if %EXTRAV2F4REQUIREKEY%
                 // v2p.extraV2F4 = d.extraV2F4;
                 // #endif

                 // #if %EXTRAV2F5REQUIREKEY%
                 // v2p.extraV2F5 = d.extraV2F5;
                 // #endif

                 // #if %EXTRAV2F6REQUIREKEY%
                 // v2p.extraV2F6 = d.extraV2F6;
                 // #endif

                 // #if %EXTRAV2F7REQUIREKEY%
                 // v2p.extraV2F7 = d.extraV2F7;
                 // #endif
            }

            void ChainModifyTessellatedVertex(inout VertexData v, inout VertexToPixel v2p)
            {
               ExtraV2F d;
               ZERO_INITIALIZE(ExtraV2F, d);
               ZERO_INITIALIZE(Blackboard, d.blackboard);

               // #if %EXTRAV2F0REQUIREKEY%
               // d.extraV2F0 = v2p.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // d.extraV2F1 = v2p.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // d.extraV2F2 = v2p.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // d.extraV2F3 = v2p.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // d.extraV2F4 = v2p.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // d.extraV2F5 = v2p.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // d.extraV2F6 = v2p.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // d.extraV2F7 = v2p.extraV2F7;
               // #endif


               // Ext_ModifyTessellatedVertex0(v, d);
               // Ext_ModifyTessellatedVertex1(v, d);
               // Ext_ModifyTessellatedVertex2(v, d);
               // Ext_ModifyTessellatedVertex3(v, d);
               // Ext_ModifyTessellatedVertex4(v, d);
               // Ext_ModifyTessellatedVertex5(v, d);
               // Ext_ModifyTessellatedVertex6(v, d);
               // Ext_ModifyTessellatedVertex7(v, d);
               // Ext_ModifyTessellatedVertex8(v, d);
               // Ext_ModifyTessellatedVertex9(v, d);
               // Ext_ModifyTessellatedVertex10(v, d);
               // Ext_ModifyTessellatedVertex11(v, d);
               // Ext_ModifyTessellatedVertex12(v, d);
               // Ext_ModifyTessellatedVertex13(v, d);
               // Ext_ModifyTessellatedVertex14(v, d);
               // Ext_ModifyTessellatedVertex15(v, d);
               // Ext_ModifyTessellatedVertex16(v, d);
               // Ext_ModifyTessellatedVertex17(v, d);
               // Ext_ModifyTessellatedVertex18(v, d);
               // Ext_ModifyTessellatedVertex19(v, d);
               // Ext_ModifyTessellatedVertex20(v, d);
               // Ext_ModifyTessellatedVertex21(v, d);
               // Ext_ModifyTessellatedVertex22(v, d);
               // Ext_ModifyTessellatedVertex23(v, d);
               // Ext_ModifyTessellatedVertex24(v, d);
               // Ext_ModifyTessellatedVertex25(v, d);
               // Ext_ModifyTessellatedVertex26(v, d);
               // Ext_ModifyTessellatedVertex27(v, d);
               // Ext_ModifyTessellatedVertex28(v, d);
               // Ext_ModifyTessellatedVertex29(v, d);

               // #if %EXTRAV2F0REQUIREKEY%
               // v2p.extraV2F0 = d.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // v2p.extraV2F1 = d.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // v2p.extraV2F2 = d.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // v2p.extraV2F3 = d.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // v2p.extraV2F4 = d.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // v2p.extraV2F5 = d.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // v2p.extraV2F6 = d.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // v2p.extraV2F7 = d.extraV2F7;
               // #endif
            }

            void ChainFinalColorForward(inout Surface l, inout ShaderData d, inout half4 color)
            {
               //   Ext_FinalColorForward0(l, d, color);
               //   Ext_FinalColorForward1(l, d, color);
               //   Ext_FinalColorForward2(l, d, color);
               //   Ext_FinalColorForward3(l, d, color);
               //   Ext_FinalColorForward4(l, d, color);
               //   Ext_FinalColorForward5(l, d, color);
               //   Ext_FinalColorForward6(l, d, color);
               //   Ext_FinalColorForward7(l, d, color);
               //   Ext_FinalColorForward8(l, d, color);
               //   Ext_FinalColorForward9(l, d, color);
               //  Ext_FinalColorForward10(l, d, color);
               //  Ext_FinalColorForward11(l, d, color);
               //  Ext_FinalColorForward12(l, d, color);
               //  Ext_FinalColorForward13(l, d, color);
               //  Ext_FinalColorForward14(l, d, color);
               //  Ext_FinalColorForward15(l, d, color);
               //  Ext_FinalColorForward16(l, d, color);
               //  Ext_FinalColorForward17(l, d, color);
               //  Ext_FinalColorForward18(l, d, color);
               //  Ext_FinalColorForward19(l, d, color);
               //  Ext_FinalColorForward20(l, d, color);
               //  Ext_FinalColorForward21(l, d, color);
               //  Ext_FinalColorForward22(l, d, color);
               //  Ext_FinalColorForward23(l, d, color);
               //  Ext_FinalColorForward24(l, d, color);
               //  Ext_FinalColorForward25(l, d, color);
               //  Ext_FinalColorForward26(l, d, color);
               //  Ext_FinalColorForward27(l, d, color);
               //  Ext_FinalColorForward28(l, d, color);
               //  Ext_FinalColorForward29(l, d, color);
            }

            void ChainFinalGBufferStandard(inout Surface s, inout ShaderData d, inout half4 GBuffer0, inout half4 GBuffer1, inout half4 GBuffer2, inout half4 outEmission, inout half4 outShadowMask)
            {
               //   Ext_FinalGBufferStandard0(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard1(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard2(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard3(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard4(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard5(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard6(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard7(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard8(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard9(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard10(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard11(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard12(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard13(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard14(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard15(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard16(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard17(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard18(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard19(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard20(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard21(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard22(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard23(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard24(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard25(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard26(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard27(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard28(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard29(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
            }



            

         ShaderData CreateShaderData(VertexToPixel i
                  #if NEED_FACING
                     , bool facing
                  #endif
         )
         {
            ShaderData d = (ShaderData)0;
            d.clipPos = i.pos;
            d.worldSpacePosition = i.worldPos;

            d.worldSpaceNormal = normalize(i.worldNormal);
            d.worldSpaceTangent = normalize(i.worldTangent.xyz);
            d.tangentSign = i.worldTangent.w;
            float3 bitangent = cross(i.worldTangent.xyz, i.worldNormal) * d.tangentSign * -1;
            

            d.TBNMatrix = float3x3(d.worldSpaceTangent, bitangent, d.worldSpaceNormal);
            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - i.worldPos);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);
             d.texcoord0 = i.texcoord0;
             d.texcoord1 = i.texcoord1;
             d.texcoord2 = i.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
            // d.texcoord3 = i.texcoord3;
            // #endif

            // d.isFrontFace = facing;
            // #if %VERTEXCOLORREQUIREKEY%
            // d.vertexColor = i.vertexColor;
            // #endif

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(unity_WorldToObject, float4(GetCameraRelativePositionWS(i.worldPos), 1)).xyz;
            #else
                // d.localSpacePosition = mul(unity_WorldToObject, float4(i.worldPos, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)unity_WorldToObject, i.worldNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)unity_WorldToObject, i.worldTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
             d.screenPos = i.screenPos;
             d.screenUV = (i.screenPos.xy / i.screenPos.w);
            // #endif


            // #if %EXTRAV2F0REQUIREKEY%
            // d.extraV2F0 = i.extraV2F0;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
            // d.extraV2F1 = i.extraV2F1;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
            // d.extraV2F2 = i.extraV2F2;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
            // d.extraV2F3 = i.extraV2F3;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // d.extraV2F4 = i.extraV2F4;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // d.extraV2F5 = i.extraV2F5;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // d.extraV2F6 = i.extraV2F6;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // d.extraV2F7 = i.extraV2F7;
            // #endif

            return d;
         }
         

            

#if (SHADERPASS == SHADERPASS_LIGHT_TRANSPORT)

   // This was not in constant buffer in original unity, so keep outiside. But should be in as ShaderRenderPass frequency
   float unity_OneOverOutputBoost;
   float unity_MaxOutputValue;

   CBUFFER_START(UnityMetaPass)
   // x = use uv1 as raster position
   // y = use uv2 as raster position
   bool4 unity_MetaVertexControl;

   // x = return albedo
   // y = return normal
   bool4 unity_MetaFragmentControl;
   CBUFFER_END

   VertexToPixel Vert(VertexData inputMesh)
   {
       VertexToPixel output;
       ZERO_INITIALIZE(VertexToPixel, output);
       UNITY_SETUP_INSTANCE_ID(inputMesh);
       UNITY_TRANSFER_INSTANCE_ID(inputMesh, output);
       UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

       // Output UV coordinate in vertex shader
       float2 uv = float2(0.0, 0.0);

       if (unity_MetaVertexControl.x)
       {
           uv = inputMesh.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
       }
       else if (unity_MetaVertexControl.y)
       {
           uv = inputMesh.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
       }

       // OpenGL right now needs to actually use the incoming vertex position
       // so we create a fake dependency on it here that haven't any impact.
       output.pos = float4(uv * 2.0 - 1.0, inputMesh.vertex.z > 0 ? 1.0e-4 : 0.0, 1.0);

       output.worldPos = TransformObjectToWorld(inputMesh.vertex.xyz).xyz;

       // Normal is required for triplanar mapping
       output.worldNormal = TransformObjectToWorldNormal(inputMesh.normal);
       // Not required but assign to silent compiler warning
       output.worldTangent = float4(1.0, 0.0, 0.0, 0.0);

       output.texcoord0 = inputMesh.texcoord0;
       output.texcoord1 = inputMesh.texcoord1;
       output.texcoord2 = inputMesh.texcoord2;
       // #if %TEXCOORD3REQUIREKEY%
       // output.texcoord3 = inputMesh.texcoord3;
       // #endif
       // #if %VERTEXCOLORREQUIREKEY%
       // output.vertexColor = inputMesh.vertexColor;
       // #endif

       return output;
   }
#else

   #if (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
      #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariablesMatrixDefsHDCamera.hlsl"

      void MotionVectorPositionZBias(VertexToPixel input)
      {
      #if UNITY_REVERSED_Z
          input.pos.z -= unity_MotionVectorsParams.z * input.pos.w;
      #else
          input.pos.z += unity_MotionVectorsParams.z * input.pos.w;
      #endif
      }

   #endif

   VertexToPixel Vert(VertexData input)
   {
       VertexToPixel output;
       ZERO_INITIALIZE(VertexToPixel, output);

       UNITY_SETUP_INSTANCE_ID(input);
       UNITY_TRANSFER_INSTANCE_ID(input, output);
       UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

       #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
         VertexData previousMesh = input;
       #endif

       ChainModifyVertex(input, output, _Time);

       // This return the camera relative position (if enable)
       float3 positionRWS = TransformObjectToWorld(input.vertex.xyz);
       float3 normalWS = TransformObjectToWorldNormal(input.normal);
       float4 tangentWS = float4(TransformObjectToWorldDir(input.tangent.xyz), input.tangent.w);


       output.worldPos = GetAbsolutePositionWS(positionRWS);
       output.pos = TransformWorldToHClip(positionRWS);
       output.worldNormal = normalWS;
       output.worldTangent = tangentWS;


       output.texcoord0 = input.texcoord0;
       output.texcoord1 = input.texcoord1;
       output.texcoord2 = input.texcoord2;

       // #if %TEXCOORD3REQUIREKEY%
       // output.texcoord3 = input.texcoord3;
       // #endif

       // #if %VERTEXCOLORREQUIREKEY%
       // output.vertexColor = input.vertexColor;
       // #endif

       // #if %SCREENPOSREQUIREKEY%
        output.screenPos = ComputeScreenPos(output.pos, _ProjectionParams.x);
       // #endif
   
       #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))

          #if !defined(TESSELLATION_ON)
            MotionVectorPositionZBias(output);
          #endif

          output.motionVectorCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(positionRWS.xyz, 1.0));
          // Note: unity_MotionVectorsParams.y is 0 is forceNoMotion is enabled
          bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
          if (forceNoMotion)
          {
              output.previousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
          }
          else
          {
            bool hasDeformation = unity_MotionVectorsParams.x > 0.0; // Skin or morph target

            float3 effectivePositionOS = (hasDeformation ? previousMesh.previousPositionOS : previousMesh.vertex.xyz);
            #if defined(_ADD_PRECOMPUTED_VELOCITY)
               effectivePositionOS -= input.precomputedVelocity;
            #endif

            previousMesh.vertex = float4(effectivePositionOS, 1);
            VertexToPixel dummy = (VertexToPixel)0;
            

            ChainModifyVertex(previousMesh, dummy, _LastTimeParameters);

            // we might need this for skinned objects?
            //float3 normalWS = TransformPreviousObjectToWorldNormal(input.normal).xyz;
            float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.vertex.xyz);

            #ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
            if (_TransparentCameraOnlyMotionVectors > 0)
            {
               previousPositionRWS = positionRWS.xyz;
            }
            #endif // _WRITE_TRANSPARENT_MOTION_VECTOR

            output.previousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
         }
       #endif // _HDRP && _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))


       return output;
   }


#endif



            

            

               #if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
                  #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalPrepassBuffer.hlsl"
               #endif

                FragInputs BuildFragInputs(VertexToPixel input)
                {
                    UNITY_SETUP_INSTANCE_ID(input);
                    FragInputs output;
                    ZERO_INITIALIZE(FragInputs, output);
            
                    // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                    // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                    // to compute normals which are then passed on elsewhere to compute other values...
                    output.tangentToWorld = k_identity3x3;
                    output.positionSS = input.pos;       // input.positionCS is SV_Position
                    // BETTER SHADERS: because we transform world position into actual world space for things like
                    // triplanar, etc, we have to back transform it here for lighting
                    output.positionRWS = GetCameraRelativePositionWS(input.worldPos);
                    output.tangentToWorld = BuildTangentToWorld(input.worldTangent, input.worldNormal);
                    output.texCoord0 = input.texcoord0;
                    output.texCoord1 = input.texcoord1;
                    output.texCoord2 = input.texcoord2;
            
                    return output;
                }
            
               void BuildSurfaceData(FragInputs fragInputs, inout Surface surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
               {
                   // setup defaults -- these are used if the graph doesn't output a value
                   ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                   // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                   // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                   surfaceData.specularOcclusion = 1.0;

                   // copy across graph values, if defined
                   surfaceData.baseColor =                 surfaceDescription.Albedo;
                   surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                   surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                   surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                   surfaceData.metallic =                  surfaceDescription.Metallic;
                   surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                   surfaceData.thickness =                 surfaceDescription.Thickness;
                   surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                   #if _USESPECULAR
                      surfaceData.specularColor =             surfaceDescription.Specular;
                   #endif
                   surfaceData.coatMask =                  surfaceDescription.CoatMask;
                   surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                   surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                   surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;



                   #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                        if (_EnableSSRefraction)
                        {
                            surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                            surfaceDescription.Alpha = 1.0;
                        }
                        else
                        {
                            surfaceData.ior = 1.0;
                            surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                            surfaceData.atDistance = 1.0;
                            surfaceData.transmittanceMask = 0.0;
                            surfaceDescription.Alpha = 1.0;
                        }
                    #else
                        surfaceData.ior = 1.0;
                        surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                        surfaceData.atDistance = 1.0;
                        surfaceData.transmittanceMask = 0.0;
                    #endif

                    

                    // These static material feature allow compile time optimization
                    surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
                    #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_TRANSMISSION
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_ANISOTROPY
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
                        surfaceData.normalWS = float3(0, 1, 0);
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
                    #endif
                
                    #if defined(_MATERIAL_FEATURE_CLEAR_COAT) || _CLEARCOAT
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
                    #endif
                
                    #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                        // Require to have setup baseColor
                        // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                        surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
                    #endif
                


                   // compute world space normal
                   #if !_WORLDSPACENORMAL
                      surfaceData.normalWS = mul(surfaceDescription.Normal, fragInputs.tangentToWorld);
                   #else
                      surfaceData.normalWS = surfaceDescription.Normal;
                   #endif

                   surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                   surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT

         
                    #if HAVE_DECALS
                        if (_EnableDecals)
                        {
                            float alpha = 1.0;
                            alpha = surfaceDescription.Alpha;
                
                            // Both uses and modifies 'surfaceData.normalWS'.
                            DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], alpha);
                            ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
                        }
                    #endif
                
                    bentNormalWS = surfaceData.normalWS;
                
                    surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
                
                    #ifdef DEBUG_DISPLAY
                        if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                        {
                            // TODO: need to update mip info
                            surfaceData.metallic = 0;
                        }
                
                        // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                        // as it can modify attribute use for static lighting
                        ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
                    #endif
                
                    // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                    // If user provide bent normal then we process a better term
                    #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                        // Just use the value passed through via the slot (not active otherwise)
                    #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                        // If we have bent normal and ambient occlusion, process a specular occlusion
                        surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                    #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                        surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                    #endif
                
                    #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                        surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
                    #endif
               }
        
               void GetSurfaceAndBuiltinData(VertexToPixel m2ps, FragInputs fragInputs, float3 V, inout PositionInputs posInput,
                     out SurfaceData surfaceData, out BuiltinData builtinData, inout Surface l, inout ShaderData d
                     #if NEED_FACING
                        , bool facing
                     #endif
                  )
               {
                 // Removed since crossfade does not work, probably needs extra material setup.   
                 //#if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                 //   #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                 //      LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                 //   #endif
                 //#endif

                 d = CreateShaderData(m2ps
                    #if NEED_FACING
                       , facing
                    #endif
                 );

                 l = (Surface)0;

                 l.Albedo = half3(0.5, 0.5, 0.5);
                 l.Normal = float3(0,0,1);
                 l.Occlusion = 1;
                 l.Alpha = 1;
                 l.SpecularOcclusion = 1;

                 #if !defined(SHADER_STAGE_RAY_TRACING) && defined(_DEPTHOFFSET_ON)
                    l.outputDepth = d.clipPos.z;
                 #endif

                 ChainSurfaceFunction(l, d);

                 #if !defined(SHADER_STAGE_RAY_TRACING) && defined(_DEPTHOFFSET_ON)
                    //posInput.deviceDepth = l.outputDepth;
                 #endif

                 #if _UNLIT
                     //l.Emission = l.Albedo;
                     //l.Albedo = 0;
                     l.Normal = half3(0,0,1);
                     l.Occlusion = 1;
                     l.Metallic = 0;
                     l.Specular = 0;
                 #endif

                 surfaceData.geomNormalWS = d.worldSpaceNormal;
                 surfaceData.tangentWS = d.worldSpaceTangent;
                 fragInputs.tangentToWorld = d.TBNMatrix;

                 float3 bentNormalWS;
                 BuildSurfaceData(fragInputs, l, V, posInput, surfaceData, bentNormalWS);


                 InitBuiltinData(posInput, l.Alpha, bentNormalWS, -d.worldSpaceNormal, fragInputs.texCoord1, fragInputs.texCoord2, builtinData);

                 

                 builtinData.emissiveColor = l.Emission;

                 #if defined(_OVERRIDE_BAKEDGI)
                    builtinData.bakeDiffuseLighting = l.DiffuseGI;
                    builtinData.backBakeDiffuseLighting = l.BackDiffuseGI;
                    builtinData.emissiveColor += l.SpecularGI;
                 #endif

                 #if defined(_OVERRIDE_SHADOWMASK)
                    builtinData.shadowMask0 = l.ShadowMask.x;
                    builtinData.shadowMask1 = l.ShadowMask.y;
                    builtinData.shadowMask2 = l.ShadowMask.z;
                    builtinData.shadowMask3 = l.ShadowMask.w;
                 #endif

                  #ifdef UNITY_VIRTUAL_TEXTURING
                     builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                  #endif

                  #if (SHADERPASS == SHADERPASS_DISTORTION)
                     builtinData.distortion = surfaceData.Distortion;
                     builtinData.distortionBlur = surfaceData.DistortionBlur;
                  #endif

                  #ifndef SHADER_UNLIT
                    // PostInitBuiltinData call ApplyDebugToBuiltinData
                    PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                  #else
                    ApplyDebugToBuiltinData(builtinData);
                  #endif
         
                  RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
               }
        

            
            void Frag(  VertexToPixel IN
            #ifdef WRITE_NORMAL_BUFFER
            , out float4 outNormalBuffer : SV_Target0
                #ifdef WRITE_MSAA_DEPTH
                , out float1 depthColor : SV_Target1
                #endif
            #elif defined(WRITE_MSAA_DEPTH) // When only WRITE_MSAA_DEPTH is define and not WRITE_NORMAL_BUFFER it mean we are Unlit and only need depth, but we still have normal buffer binded
            , out float4 outNormalBuffer : SV_Target0
            , out float1 depthColor : SV_Target1
            #elif defined(SCENESELECTIONPASS)
            , out float4 outColor : SV_Target0
            #endif

            #ifdef _DEPTHOFFSET_ON
            , out float outputDepth : SV_Depth
            #endif
            #if NEED_FACING
               , bool facing : SV_IsFrontFace
            #endif
        )
         {
             UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);
             FragInputs input = BuildFragInputs(IN);

             // input.positionSS is SV_Position
             PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);


             float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);


            SurfaceData surfaceData;
            BuiltinData builtinData;
            Surface l;
            ShaderData d;
            GetSurfaceAndBuiltinData(IN, input, V, posInput, surfaceData, builtinData, l, d
               #if NEED_FACING
                  , facing
               #endif
               );


         #ifdef _DEPTHOFFSET_ON
             outputDepth = l.outputDepth;
         #endif

         #ifdef WRITE_NORMAL_BUFFER
             EncodeIntoNormalBuffer(ConvertSurfaceDataToNormalData(surfaceData), posInput.positionSS, outNormalBuffer);
             #ifdef WRITE_MSAA_DEPTH
             // In case we are rendering in MSAA, reading the an MSAA depth buffer is way too expensive. To avoid that, we export the depth to a color buffer
             depthColor = v2f.pos.z;
             #endif
         #elif defined(WRITE_MSAA_DEPTH) // When we are MSAA depth only without normal buffer
             // Due to the binding order of these two render targets, we need to have them both declared
             outNormalBuffer = float4(0.0, 0.0, 0.0, 1.0);
             // In case we are rendering in MSAA, reading the an MSAA depth buffer is way too expensive. To avoid that, we export the depth to a color buffer
             depthColor = v2f.pos.z;
         #elif defined(SCENESELECTIONPASS)
             // We use depth prepass for scene selection in the editor, this code allow to output the outline correctly
             outColor = float4(_ObjectId, _PassValue, 1.0, 1.0);
         #endif
         }

         ENDHLSL
     }

        
              Pass
        {
            Name "ScenePickingPass"
            Tags
            {
               "LightMode" = "Picking"
            }
            
            	Cull [_SGT_Cull]

            
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch
            #pragma multi_compile_instancing
            #pragma editor_sync_compilation
            #pragma instancing_options renderinglayer

            //#pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
            //#pragma shader_feature_local _BLENDMODE_OFF _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
            //#pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
            //#pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            //#pragma shader_feature_local _ _ENABLE_FOG_ON_TRANSPARENT
            //#pragma shader_feature_local _ _DISABLE_DECALS
            //#pragma shader_feature_local _ _DISABLE_SSR
            //#pragma shader_feature_local _ _DISABLE_SSR_TRANSPARENT
            //#pragma shader_feature_local _REFRACTION_OFF _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
            #pragma multi_compile _ WRITE_DECAL_BUFFER
        

            #define SHADERPASS SHADERPASS_DEPTH_ONLY
            #define SCENEPICKINGPASS

            
            
	#define __SGT_LIGHTANDSHADOW 1
	#define SGT_MAX_LIGHTS 16
	#define SGT_MAX_SPHERE_SHADOWS 16
	#define SGT_MAX_RING_SHADOWS 1


	#define __SGT_MATRIX 1


	#define __SGT_OUTPUT 1


	#pragma shader_feature_local _SGT_LIGHTING
	#pragma shader_feature_local _SGT_SCATTERING
	#pragma shader_feature_local _SGT_HDR
	#pragma multi_compile_local _ _SGT_OUTER
	#pragma multi_compile_local _ _SGT_SOFTNESS


    #pragma shader_feature_local DISABLEFOG    


	#pragma shader_feature_local _ADD_PRECOMPUTED_VELOCITY
	#pragma shader_feature_local _TRANSPARENT_WRITES_MOTION_VEC
	#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
	#pragma shader_feature_local _DISABLE_DECALS
	#pragma shader_feature_local _DISABLE_SSR
	#pragma shader_feature_local _DISABLE_SSR_TRANSPARENT
	#pragma shader_feature_local _REFRACTION_OFF _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN         


   #define _HDRP 1
#define _BLENDMODE_ALPHA 1
#define _SURFACE_TYPE_TRANSPARENT 1

#define _UNLIT 1
#define REQUIRE_DEPTH_TEXTURE
#define _USINGTEXCOORD1 1
#define _USINGTEXCOORD2 1


               #pragma vertex Vert
   #pragma fragment Frag

                  // useful conversion functions to make surface shader code just work

      #define UNITY_DECLARE_TEX2D(name) TEXTURE2D(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2D_NOSAMPLER(name) TEXTURE2D(name);
      #define UNITY_DECLARE_TEX2DARRAY(name) TEXTURE2D_ARRAY(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(tex) TEXTURE2D_ARRAY(tex);

      #define UNITY_SAMPLE_TEX2DARRAY(tex,coord)            SAMPLE_TEXTURE2D_ARRAY(tex, sampler##tex, coord.xy, coord.z)
      #define UNITY_SAMPLE_TEX2DARRAY_LOD(tex,coord,lod)    SAMPLE_TEXTURE2D_ARRAY_LOD(tex, sampler##tex, coord.xy, coord.z, lod)
      #define UNITY_SAMPLE_TEX2D(tex, coord)                SAMPLE_TEXTURE2D(tex, sampler##tex, coord)
      #define UNITY_SAMPLE_TEX2D_SAMPLER(tex, samp, coord)  SAMPLE_TEXTURE2D(tex, sampler##samp, coord)

      #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod)   SAMPLE_TEXTURE2D_LOD(tex, sampler_##tex, coord, lod)
      #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) SAMPLE_TEXTURE2D_LOD (tex, sampler##samplertex,coord, lod)

      #if defined(UNITY_COMPILER_HLSL)
         #define UNITY_INITIALIZE_OUTPUT(type,name) name = (type)0;
      #else
         #define UNITY_INITIALIZE_OUTPUT(type,name)
      #endif

      #define sampler2D_float sampler2D
      #define sampler2D_half sampler2D

      #undef WorldNormalVector
      #define WorldNormalVector(data, normal) mul(normal, data.TBNMatrix)

      #define UnityObjectToWorldNormal(normal) mul(GetObjectToWorldMatrix(), normal)




// HDRP Adapter stuff
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl" // Need to be here for Gradient struct definition

            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT 
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
    
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
    



            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
               #define OUTPUT_SPLIT_LIGHTING
            #endif

            #define HAVE_RECURSIVE_RENDERING

            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
               #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                  #define WRITE_NORMAL_BUFFER
               #endif
            #endif

            #ifndef DEBUG_DISPLAY
               // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
               // Don't do it with debug display mode as it is possible there is no depth prepass in this case
               #if !defined(_SURFACE_TYPE_TRANSPARENT) && defined(_ALPHATEST)
                  #if SHADERPASS == SHADERPASS_FORWARD
                  #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                  #elif SHADERPASS == SHADERPASS_GBUFFER
                  #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                  #endif
               #endif
            #endif

            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
               #define _DEFERRED_CAPABLE_MATERIAL
            #endif
    
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
               #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif




            CBUFFER_START(UnityPerMaterial)
               float _UseShadowThreshold;
               float _BlendMode;
               float _EnableBlendModePreserveSpecularLighting;
               float _RayTracing;
               float _RefractionModel;

              
	int    _SGT_LightCount;
	float4 _SGT_LightColor[SGT_MAX_LIGHTS];
	float4 _SGT_LightPosition[SGT_MAX_LIGHTS];
	float3 _SGT_LightDirection[SGT_MAX_LIGHTS];

	int       _SGT_SphereShadowCount;
	float4x4  _SGT_SphereShadowMatrix[SGT_MAX_SPHERE_SHADOWS];
	float4    _SGT_SphereShadowPower[SGT_MAX_SPHERE_SHADOWS];

	int       _SGT_RingShadowCount;
	sampler2D _SGT_RingShadowTexture;
	float4    _SGT_RingShadowColor[SGT_MAX_RING_SHADOWS];
	float4x4  _SGT_RingShadowMatrix[SGT_MAX_RING_SHADOWS];
	float     _SGT_RingShadowRatio[SGT_MAX_RING_SHADOWS];






	float4    _SGT_Color; // Auto
	float     _SGT_Brightness; // Auto
	sampler2D _SGT_InnerDepthTex;
	sampler2D _SGT_OuterDepthTex;

	float     _SGT_HorizonLengthRecip;
	float     _SGT_Sky;
	float4x4  _SGT_WorldToLocal;
	float4x4  _SGT_LocalToWorld;

	sampler2D _SGT_LightingTex;
	float3    _SGT_AmbientColor;

	float4    _SGT_ScatteringTerms;
	float4    _SGT_ScatteringInner;
	float4    _SGT_ScatteringOuter;
	sampler2D _SGT_ScatteringTex;
	float     _SGT_InnerRatio;
	float     _SGT_InnerScale;

	float _SGT_SoftParticlesFactor; // Auto







            CBUFFER_END
    


             // -- Property used by ScenePickingPass
               #ifdef SCENEPICKINGPASS
               float4 _SelectionID;
               #endif
    
               // -- Properties used by SceneSelectionPass
               #ifdef SCENESELECTIONPASS
               int _ObjectId;
               int _PassValue;
               #endif
  
           
            // data across stages, stripped like the above.
            struct VertexToPixel
            {
               float4 pos : SV_POSITION;
               float3 worldPos : TEXCOORD0;
               float3 worldNormal : TEXCOORD1;
               float4 worldTangent : TEXCOORD2;
               float4 texcoord0 : TEXCOORD3;
               float4 texcoord1 : TEXCOORD4;
               float4 texcoord2 : TEXCOORD5;
               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD6;
               // #endif

               // #if %SCREENPOSREQUIREKEY%
                float4 screenPos : TEXCOORD7;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD12;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD13;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD14;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD15;
               // #endif

               #if UNITY_ANY_INSTANCING_ENABLED
                  uint instanceID : INSTANCEID_SEMANTIC;
               #endif // UNITY_ANY_INSTANCING_ENABLED

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float4 previousPositionCS : TEXCOORD16; // Contain previous transform position (in case of skinning for example)
                  float4 motionVectorCS : TEXCOORD17;
               #endif

               UNITY_VERTEX_OUTPUT_STEREO
            }; 


            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/PickingSpaceTransforms.hlsl"
    

            
            
            // data describing the user output of a pixel
            struct Surface
            {
               half3 Albedo;
               half Height;
               half3 Normal;
               half Smoothness;
               half3 Emission;
               half Metallic;
               half3 Specular;
               half Occlusion;
               half SpecularPower; // for simple lighting
               half Alpha;
               float outputDepth; // if written, SV_Depth semantic is used. ShaderData.clipPos.z is unused value
               // HDRP Only
               half SpecularOcclusion;
               half SubsurfaceMask;
               half Thickness;
               half CoatMask;
               half CoatSmoothness;
               half Anisotropy;
               half IridescenceMask;
               half IridescenceThickness;
               int DiffusionProfileHash;
               float SpecularAAThreshold;
               float SpecularAAScreenSpaceVariance;
               // requires _OVERRIDE_BAKEDGI to be defined, but is mapped in all pipelines
               float3 DiffuseGI;
               float3 BackDiffuseGI;
               float3 SpecularGI;
               // requires _OVERRIDE_SHADOWMASK to be defines
               float4 ShadowMask;
            };

            // Data the user declares in blackboard blocks
            struct Blackboard
            {
                
                float blackboardDummyData;
            };

            // data the user might need, this will grow to be big. But easy to strip
            struct ShaderData
            {
               float4 clipPos; // SV_POSITION
               float3 localSpacePosition;
               float3 localSpaceNormal;
               float3 localSpaceTangent;
        
               float3 worldSpacePosition;
               float3 worldSpaceNormal;
               float3 worldSpaceTangent;
               float tangentSign;

               float3 worldSpaceViewDir;
               float3 tangentSpaceViewDir;

               float4 texcoord0;
               float4 texcoord1;
               float4 texcoord2;
               float4 texcoord3;

               float2 screenUV;
               float4 screenPos;

               float4 vertexColor;
               bool isFrontFace;

               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;

               float3x3 TBNMatrix;
               Blackboard blackboard;
            };

            struct VertexData
            {
               #if SHADER_TARGET > 30
               // uint vertexID : SV_VertexID;
               #endif
               float4 vertex : POSITION;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;

               // optimize out mesh coords when not in use by user or lighting system
               #if _URP && (_USINGTEXCOORD1 || _PASSMETA || _PASSFORWARD || _PASSGBUFFER)
                  float4 texcoord1 : TEXCOORD1;
               #endif

               #if _URP && (_USINGTEXCOORD2 || _PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && defined(DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif

               #if _STANDARD && (_USINGTEXCOORD1 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER || _PASSFORWARDADD) && LIGHTMAP_ON)))
                  float4 texcoord1 : TEXCOORD1;
               #endif
               #if _STANDARD && (_USINGTEXCOORD2 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif


               #if _HDRP
                  float4 texcoord1 : TEXCOORD1;
                  float4 texcoord2 : TEXCOORD2;
               #endif

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float3 previousPositionOS : TEXCOORD4; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity    : TEXCOORD5; // Add Precomputed Velocity (Alembic computes velocities on runtime side).
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct TessVertex 
            {
               float4 vertex : INTERNALTESSPOS;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;
               float4 texcoord1 : TEXCOORD1;
               float4 texcoord2 : TEXCOORD2;

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD5;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD6;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD7;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD12;
               // #endif

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float3 previousPositionOS : TEXCOORD13; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity : TEXCOORD14;
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
               UNITY_VERTEX_OUTPUT_STEREO
            };

            struct ExtraV2F
            {
               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;
               Blackboard blackboard;
               float4 time;
            };


            float3 WorldToTangentSpace(ShaderData d, float3 normal)
            {
               return mul(d.TBNMatrix, normal);
            }

            float3 TangentToWorldSpace(ShaderData d, float3 normal)
            {
               return mul(normal, d.TBNMatrix);
            }

            // in this case, make standard more like SRPs, because we can't fix
            // unity_WorldToObject in HDRP, since it already does macro-fu there

            #if _STANDARD
               float3 TransformWorldToObject(float3 p) { return mul(unity_WorldToObject, float4(p, 1)); };
               float3 TransformObjectToWorld(float3 p) { return mul(unity_ObjectToWorld, float4(p, 1)); };
               float4 TransformWorldToObject(float4 p) { return mul(unity_WorldToObject, p); };
               float4 TransformObjectToWorld(float4 p) { return mul(unity_ObjectToWorld, p); };
               float4x4 GetWorldToObjectMatrix() { return unity_WorldToObject; }
               float4x4 GetObjectToWorldMatrix() { return unity_ObjectToWorld; }
               #if (defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (SHADER_TARGET_SURFACE_ANALYSIS && !SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod) tex.SampleLevel (sampler##tex,coord, lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) tex.SampleLevel (sampler##samplertex,coord, lod)
              #else
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord,lod) tex2D (tex,coord,0,lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord,lod) tex2D (tex,coord,0,lod)
              #endif

               #undef GetWorldToObjectMatrix()

               #define GetWorldToObjectMatrix()   unity_WorldToObject


            #endif

            float3 GetCameraWorldPosition()
            {
               #if _HDRP
                  return GetCameraRelativePositionWS(_WorldSpaceCameraPos);
               #else
                  return _WorldSpaceCameraPos;
               #endif
            }

            #if _GRABPASSUSED
               #if _STANDARD
                  TEXTURE2D(%GRABTEXTURE%);
                  SAMPLER(sampler_%GRABTEXTURE%);
               #endif

               half3 GetSceneColor(float2 uv)
               {
                  #if _STANDARD
                     return SAMPLE_TEXTURE2D(%GRABTEXTURE%, sampler_%GRABTEXTURE%, uv).rgb;
                  #else
                     return SHADERGRAPH_SAMPLE_SCENE_COLOR(uv);
                  #endif
               }
            #endif


      
            #if _STANDARD
               UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
               float GetSceneDepth(float2 uv) { return SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv)); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv)); } 
            #else
               float GetSceneDepth(float2 uv) { return SHADERGRAPH_SAMPLE_SCENE_DEPTH(uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv), _ZBufferParams); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv), _ZBufferParams); } 
            #endif

            float3 GetWorldPositionFromDepthBuffer(float2 uv, float3 worldSpaceViewDir)
            {
               float eye = GetLinearEyeDepth(uv);
               float3 camView = mul((float3x3)GetObjectToWorldMatrix(), transpose(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V)) [2].xyz);

               float dt = dot(worldSpaceViewDir, camView);
               float3 div = worldSpaceViewDir/dt;
               float3 wpos = (eye * div) + GetCameraWorldPosition();
               return wpos;
            }

            #if _HDRP
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return GetAbsolutePositionWS(TransformObjectToWorld(pos));
            }
            #else
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return TransformObjectToWorld(pos);
            }
            #endif

            #if _STANDARD
               UNITY_DECLARE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture);
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  float4 depthNorms = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture, uv);
                  float3 norms = DecodeViewNormalStereo(depthNorms);
                  norms = mul((float3x3)GetWorldToViewMatrix(), norms) * 0.5 + 0.5;
                  return norms;
               }
            #elif _HDRP
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  NormalData nd;
                  DecodeFromNormalBuffer(_ScreenSize.xy * uv, nd);
                  return nd.normalWS;
               }
            #elif _URP
               #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                  #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareNormalsTexture.hlsl"
               #endif

               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                     return SampleSceneNormals(uv);
                  #else
                     float3 wpos = GetWorldPositionFromDepthBuffer(uv, worldSpaceViewDir);
                     return normalize(-cross(ddx(wpos), ddy(wpos))) * 0.5 + 0.5;
                  #endif

                }
             #endif

             #if _HDRP

               half3 UnpackNormalmapRGorAG(half4 packednormal)
               {
                     // This do the trick
                  packednormal.x *= packednormal.w;

                  half3 normal;
                  normal.xy = packednormal.xy * 2 - 1;
                  normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                  return normal;
               }
               half3 UnpackNormal(half4 packednormal)
               {
                  #if defined(UNITY_NO_DXT5nm)
                     return packednormal.xyz * 2 - 1;
                  #else
                     return UnpackNormalmapRGorAG(packednormal);
                  #endif
               }
               #endif
               #if _HDRP || _URP

               half3 UnpackScaleNormal(half4 packednormal, half scale)
               {
                 #ifndef UNITY_NO_DXT5nm
                   // Unpack normal as DXT5nm (1, y, 1, x) or BC5 (x, y, 0, 1)
                   // Note neutral texture like "bump" is (0, 0, 1, 1) to work with both plain RGB normal and DXT5nm/BC5
                   packednormal.x *= packednormal.w;
                 #endif
                   half3 normal;
                   normal.xy = (packednormal.xy * 2 - 1) * scale;
                   normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                   return normal;
               }	

             #endif


            void GetSun(out float3 lightDir, out float3 color)
            {
               lightDir = float3(0.5, 0.5, 0);
               color = 1;
               #if _HDRP
                  if (_DirectionalLightCount > 0)
                  {
                     DirectionalLightData light = _DirectionalLightDatas[0];
                     lightDir = -light.forward.xyz;
                     color = light.color;
                  }
               #elif _STANDARD
			         lightDir = normalize(_WorldSpaceLightPos0.xyz);
                  color = _LightColor0.rgb;
               #elif _URP
	               Light light = GetMainLight();
	               lightDir = light.direction;
	               color = light.color;
               #endif
            }



            

            

            #ifdef unity_WorldToObject
#undef unity_WorldToObject
#endif
#ifdef unity_ObjectToWorld
#undef unity_ObjectToWorld
#endif
#define unity_ObjectToWorld GetObjectToWorldMatrix()
#define unity_WorldToObject GetWorldToObjectMatrix()

	float SGT_ScatteringPhase(float angle, float4 terms, float4 strengths)
	{
		return dot(pow(saturate(angle * sign(terms)), abs(terms)), strengths);
	}

	float4 SGT_SphereShadowColor(float4x4 shadowMatrix, float4 shadowPower, float4 worldPoint)
	{
		float4 shadowPoint = mul(shadowMatrix, worldPoint);
		float  shadowMag   = length(shadowPoint.xy);

		//shadowMag = 1.0f - (1.0f - shadowMag) * shadowRatio;

		//float4 shadow = 1.0f - pow(1.0f - shadowMag, shadowPower);
		float4 shadow = pow(shadowMag, shadowPower);

		shadow += shadowPoint.z < 0.0f;

		return saturate(shadow);
	}

	float4 SGT_RingShadowColor(float4x4 shadowMatrix, sampler2D shadowSampler, float shadowRatio, float4 worldPoint)
	{
		float4 shadowPoint = mul(shadowMatrix, worldPoint);
		float  shadowMag   = length(shadowPoint.xy);

		shadowMag = 1.0f - (1.0f - shadowMag) * shadowRatio;

		float4 shadow = tex2D(shadowSampler, shadowMag.xx);

		shadow += shadowPoint.z < 0.0f;

		return saturate(shadow);
	}

	float4 SGT_ShadowColor(float3 worldPoint3)
	{
		float4 worldPoint = float4(worldPoint3, 1.0f);
		float4 color      = 1.0f;

		for (int s = 0; s < _SGT_SphereShadowCount; s++)
		{
			color *= SGT_SphereShadowColor(_SGT_SphereShadowMatrix[s], _SGT_SphereShadowPower[s], worldPoint);
		}

		for (int r = 0; r < _SGT_RingShadowCount; r++)
		{
			color *= SGT_RingShadowColor(_SGT_RingShadowMatrix[r], _SGT_RingShadowTexture, _SGT_RingShadowRatio[r], worldPoint);
		}

		return color;
	}


	float4 SGT_O2W(float4 v)
	{
		v = mul(GetObjectToWorldMatrix(), v);
		#if _HDRP
			v.xyz = GetAbsolutePositionWS(v.xyz);
		#endif
		return v;
	}
	float4 SGT_W2O(float4 v)
	{
		#if _HDRP
			v.xyz = GetCameraRelativePositionWS(v.xyz);
		#endif
		return mul(GetWorldToObjectMatrix(), v);
	}

	float4 SGT_O2V(float4 v)
	{
		#if _STANDARD
			return float4(UnityObjectToViewPos(v.xyz), 1.0f);
		#else
			return float4(TransformWorldToView(TransformObjectToWorld(v.xyz)), 1.0f);
		#endif
	}
	float4 SGT_V2O(float4 v)
	{
		return mul(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V), v);
	}

	float4 SGT_W2V(float4 v)
	{
		#if _STANDARD
			return mul(GetWorldToViewMatrix(), v);
		#else
			return float4(TransformWorldToView(v.xyz), 1.0f);
		#endif
	}
	float4 SGT_V2M(float4 v)
	{
		v = mul(UNITY_MATRIX_I_V, v);
		#if _HDRP
			v.xyz = GetAbsolutePositionWS(v.xyz);
		#endif
		return v;
	}

	float4 SGT_W2P(float4 v)
	{
		#if _HDRP
			v.xyz = GetCameraRelativePositionWS(v.xyz);
		#endif
		#if _STANDARD
			return mul(GetWorldToHClipMatrix(), v);
		#else
			return TransformWorldToHClip(v.xyz);
		#endif
	}


	float4 SGT_ModifyUnlitOutput(float4 finalColor)
	{
		#if _HDRP
			finalColor.xyz *= 25000.0f;
		#endif
		return finalColor;
	}

	void SGT_OutputWithoutAlpha(inout Surface o, float4 finalColor)
	{
		#if _HDRP
			o.Emission = finalColor.xyz;
			o.Albedo   = 0.0f;
		#elif _URP
			o.Emission = finalColor.xyz;
			o.Albedo   = finalColor.xyz;
		#else
			o.Albedo = finalColor.xyz;
		#endif
	}

	void SGT_OutputWithAlpha(inout Surface o, float4 finalColor)
	{
		SGT_OutputWithoutAlpha(o, finalColor);

		o.Alpha = finalColor.w;
	}


	float SGT_GetOutsideDistance(float3 ray, float3 rayD)
	{
		float B = dot(ray, rayD);
		float C = dot(ray, ray) - 1.0f;
		float D = B * B - C;
		return -B - sqrt(max(D, 0.0f));
	}

	float SGT_GetOutsideDistance2(float3 ray, float3 rayD)
	{
		float B = dot(ray, rayD);
		float C = dot(ray, ray) - 1.0f;
		float D = B * B - C;
		return max(-B - sqrt(max(D, 0.0f)), 0.0f);
	}

	float3 SGT_GetNear(float3 far)
	{
		float3 wcam = _WorldSpaceCameraPos;
		float3 near = mul(_SGT_WorldToLocal, float4(wcam, 1.0f)).xyz;
		float3 dir  = normalize(far - near);

		return near + dir * SGT_GetOutsideDistance2(near, dir);
	}

	void ModifyInnerVertex(inout VertexData v, inout ExtraV2F e)
	{
		#if __SGT_MATRIX
			float3 wcam = _WorldSpaceCameraPos;
			float4 wpos = SGT_O2W(v.vertex);
			float3 far  = mul(_SGT_WorldToLocal, wpos).xyz;
			float3 near = mul(_SGT_WorldToLocal, float4(wcam, 1.0f)).xyz;

			float3 nearFar = far - near;
			float3 dir     = normalize(nearFar);
			float  depthA  = length(nearFar);
			float  depthB  = SGT_GetOutsideDistance(near, dir);
			near += dir * max(depthB, 0.0f);
			float depth = length(near - far);

			v.texcoord0.x   = depth * _SGT_HorizonLengthRecip;
			v.texcoord0.y   = (length(far) - _SGT_InnerRatio) * _SGT_InnerScale; // Altitude
			v.texcoord1.xyz = mul((float3x3)_SGT_LocalToWorld, near);
		#endif
	}

	void ModifyOuterVertex(inout VertexData v, inout ExtraV2F e)
	{
		#if __SGT_MATRIX
			float4 wPos = SGT_O2W(v.vertex);
			float3 far  = mul(_SGT_WorldToLocal, wPos).xyz;
			float3 near = SGT_GetNear(far);

			v.texcoord0.xy = length(near - far) * _SGT_HorizonLengthRecip;

			#if _SGT_SOFTNESS
				v.texcoord1.z = -SGT_O2V(v.vertex).z;
			#endif

			v.texcoord2.xyz = mul((float3x3)_SGT_LocalToWorld, near);
		#endif
	}

	void Ext_ModifyVertex0 (inout VertexData v, inout ExtraV2F e)
	{
		#if _SGT_OUTER
			ModifyOuterVertex(v, e);
		#else
			ModifyInnerVertex(v, e);
		#endif
	}

	void SurfaceInnerFunction(inout Surface o, inout ShaderData d)
	{
		#if __SGT_OUTPUT
			float4 depth = tex2D(_SGT_InnerDepthTex, d.texcoord0.xx);
			float4 main  = depth * _SGT_Color;
			float3 wcam  = _WorldSpaceCameraPos;
			float3 wnorm = normalize(d.texcoord1.xyz);

			main.rgb *= _SGT_Brightness;
			main.a   *= smoothstep(1.0f, 0.0f, saturate(d.texcoord0.y));

			float4 finalColor = main;

			#if __SGT_LIGHTANDSHADOW
				#if _SGT_LIGHTING
					finalColor.rgb *= _SGT_AmbientColor;

					float4 lighting   = 0.0f;
					float4 scattering = 0.0f;

					for (int i = 0; i < _SGT_LightCount; i++)
					{
						float theta = dot(wnorm, _SGT_LightDirection[i]) * 0.5f + 0.5f;

						lighting += tex2D(_SGT_LightingTex, theta) * main * _SGT_LightColor[i];

						#if _SGT_SCATTERING
							float3 worldViewDir  = normalize(d.worldSpacePosition - wcam);
							float3 worldLightDir = normalize(_SGT_LightPosition[i].xyz - wcam);
							float  angle         = dot(worldViewDir, worldLightDir);
							float  phase         = SGT_ScatteringPhase(angle, _SGT_ScatteringTerms, _SGT_ScatteringInner);

							scattering += tex2D(_SGT_ScatteringTex, theta) * _SGT_LightColor[i] * phase;
						#endif
					}

					#if _SGT_SCATTERING
						#if _SGT_HDR || _HDRP
							scattering *= main;
							lighting.xyz += scattering.xyz;
						#else
							scattering *= finalColor.a; // Fade scattering out according to optical depth
							scattering *= saturate(1.0f - (finalColor + lighting)); // Only scatter into remaining rgba
							lighting += scattering;
						#endif
					#endif

					finalColor += lighting * saturate(SGT_ShadowColor(d.worldSpacePosition) + finalColor.a * 0.5f);
					//finalColor += lighting * lerp(SGT_ShadowColor(d.worldSpacePosition), 1.0f, finalColor.a);
					finalColor.a = saturate(finalColor.a);
				#else
					finalColor = SGT_ModifyUnlitOutput(finalColor);
				#endif
			#endif

			SGT_OutputWithAlpha(o, finalColor);
		#endif
	}

	void SurfaceOuterFunction(inout Surface o, inout ShaderData d)
	{
		#if __SGT_OUTPUT
			float4 depth = tex2D(_SGT_OuterDepthTex, d.texcoord0.xx); depth.a = saturate(depth.a + (1.0f - depth.a) * _SGT_Sky);
			float4 main  = depth * _SGT_Color;
			float3 wcam  = _WorldSpaceCameraPos;
			float3 wnorm = normalize(d.texcoord2.xyz);

			main.rgb *= _SGT_Brightness;

			#if _SGT_SOFTNESS
				float sceneZ = GetLinearEyeDepth(d.screenUV);
				float partZ = d.texcoord1.z;

				main.a *= smoothstep(0.0f, 1.0f, _SGT_SoftParticlesFactor * abs(sceneZ - partZ));
			#endif

			float4 finalColor = main;

			#if __SGT_LIGHTANDSHADOW
				#if _SGT_LIGHTING
					finalColor.rgb *= _SGT_AmbientColor;

					float4 lighting   = 0.0f;
					float4 scattering = 0.0f;

					for (int i = 0; i < _SGT_LightCount; i++)
					{
						float theta = dot(wnorm, _SGT_LightDirection[i]) * 0.5f + 0.5f;

						lighting += tex2D(_SGT_LightingTex, theta) * main * _SGT_LightColor[i];

						#if _SGT_SCATTERING
							float3 worldViewDir  = normalize(d.worldSpacePosition - wcam);
							float3 worldLightDir = normalize(_SGT_LightPosition[i].xyz - wcam);
							float  angle         = dot(worldViewDir, worldLightDir);
							float  phase         = SGT_ScatteringPhase(angle, _SGT_ScatteringTerms, _SGT_ScatteringOuter);

							scattering += tex2D(_SGT_ScatteringTex, theta) * _SGT_LightColor[i] * phase;
						#endif
					}

					#if _SGT_SCATTERING
						#if _SGT_HDR || _HDRP
							scattering *= main;
							lighting.xyz += scattering.xyz;
						#else
							scattering *= finalColor.a; // Fade scattering out according to optical depth
							scattering *= saturate(1.0f - (finalColor + lighting)); // Only scatter into remaining rgba
							lighting += scattering;
						#endif
					#endif

					finalColor += lighting * SGT_ShadowColor(d.worldSpacePosition);
					finalColor.a = saturate(main.a);
				#else
					finalColor = SGT_ModifyUnlitOutput(finalColor);
				#endif
			#endif

			SGT_OutputWithAlpha(o, finalColor);
		#endif
	}

	void Ext_SurfaceFunction0 (inout Surface o, inout ShaderData d)
	{
		#if _SGT_OUTER
			SurfaceOuterFunction(o, d);
		#else
			SurfaceInnerFunction(o, d);
		#endif
	}







        
            void ChainSurfaceFunction(inout Surface l, inout ShaderData d)
            {
                  Ext_SurfaceFunction0(l, d);
                 // Ext_SurfaceFunction1(l, d);
                 // Ext_SurfaceFunction2(l, d);
                 // Ext_SurfaceFunction3(l, d);
                 // Ext_SurfaceFunction4(l, d);
                 // Ext_SurfaceFunction5(l, d);
                 // Ext_SurfaceFunction6(l, d);
                 // Ext_SurfaceFunction7(l, d);
                 // Ext_SurfaceFunction8(l, d);
                 // Ext_SurfaceFunction9(l, d);
		           // Ext_SurfaceFunction10(l, d);
                 // Ext_SurfaceFunction11(l, d);
                 // Ext_SurfaceFunction12(l, d);
                 // Ext_SurfaceFunction13(l, d);
                 // Ext_SurfaceFunction14(l, d);
                 // Ext_SurfaceFunction15(l, d);
                 // Ext_SurfaceFunction16(l, d);
                 // Ext_SurfaceFunction17(l, d);
                 // Ext_SurfaceFunction18(l, d);
		           // Ext_SurfaceFunction19(l, d);
                 // Ext_SurfaceFunction20(l, d);
                 // Ext_SurfaceFunction21(l, d);
                 // Ext_SurfaceFunction22(l, d);
                 // Ext_SurfaceFunction23(l, d);
                 // Ext_SurfaceFunction24(l, d);
                 // Ext_SurfaceFunction25(l, d);
                 // Ext_SurfaceFunction26(l, d);
                 // Ext_SurfaceFunction27(l, d);
                 // Ext_SurfaceFunction28(l, d);
		           // Ext_SurfaceFunction29(l, d);
            }

            void ChainModifyVertex(inout VertexData v, inout VertexToPixel v2p, float4 time)
            {
                 ExtraV2F d;
                 
                 ZERO_INITIALIZE(ExtraV2F, d);
                 ZERO_INITIALIZE(Blackboard, d.blackboard);
                 // due to motion vectors in HDRP, we need to use the last
                 // time in certain spots. So if you are going to use _Time to adjust vertices,
                 // you need to use this time or motion vectors will break. 
                 d.time = time;

                   Ext_ModifyVertex0(v, d);
                 // Ext_ModifyVertex1(v, d);
                 // Ext_ModifyVertex2(v, d);
                 // Ext_ModifyVertex3(v, d);
                 // Ext_ModifyVertex4(v, d);
                 // Ext_ModifyVertex5(v, d);
                 // Ext_ModifyVertex6(v, d);
                 // Ext_ModifyVertex7(v, d);
                 // Ext_ModifyVertex8(v, d);
                 // Ext_ModifyVertex9(v, d);
                 // Ext_ModifyVertex10(v, d);
                 // Ext_ModifyVertex11(v, d);
                 // Ext_ModifyVertex12(v, d);
                 // Ext_ModifyVertex13(v, d);
                 // Ext_ModifyVertex14(v, d);
                 // Ext_ModifyVertex15(v, d);
                 // Ext_ModifyVertex16(v, d);
                 // Ext_ModifyVertex17(v, d);
                 // Ext_ModifyVertex18(v, d);
                 // Ext_ModifyVertex19(v, d);
                 // Ext_ModifyVertex20(v, d);
                 // Ext_ModifyVertex21(v, d);
                 // Ext_ModifyVertex22(v, d);
                 // Ext_ModifyVertex23(v, d);
                 // Ext_ModifyVertex24(v, d);
                 // Ext_ModifyVertex25(v, d);
                 // Ext_ModifyVertex26(v, d);
                 // Ext_ModifyVertex27(v, d);
                 // Ext_ModifyVertex28(v, d);
                 // Ext_ModifyVertex29(v, d);


                 // #if %EXTRAV2F0REQUIREKEY%
                 // v2p.extraV2F0 = d.extraV2F0;
                 // #endif

                 // #if %EXTRAV2F1REQUIREKEY%
                 // v2p.extraV2F1 = d.extraV2F1;
                 // #endif

                 // #if %EXTRAV2F2REQUIREKEY%
                 // v2p.extraV2F2 = d.extraV2F2;
                 // #endif

                 // #if %EXTRAV2F3REQUIREKEY%
                 // v2p.extraV2F3 = d.extraV2F3;
                 // #endif

                 // #if %EXTRAV2F4REQUIREKEY%
                 // v2p.extraV2F4 = d.extraV2F4;
                 // #endif

                 // #if %EXTRAV2F5REQUIREKEY%
                 // v2p.extraV2F5 = d.extraV2F5;
                 // #endif

                 // #if %EXTRAV2F6REQUIREKEY%
                 // v2p.extraV2F6 = d.extraV2F6;
                 // #endif

                 // #if %EXTRAV2F7REQUIREKEY%
                 // v2p.extraV2F7 = d.extraV2F7;
                 // #endif
            }

            void ChainModifyTessellatedVertex(inout VertexData v, inout VertexToPixel v2p)
            {
               ExtraV2F d;
               ZERO_INITIALIZE(ExtraV2F, d);
               ZERO_INITIALIZE(Blackboard, d.blackboard);

               // #if %EXTRAV2F0REQUIREKEY%
               // d.extraV2F0 = v2p.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // d.extraV2F1 = v2p.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // d.extraV2F2 = v2p.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // d.extraV2F3 = v2p.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // d.extraV2F4 = v2p.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // d.extraV2F5 = v2p.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // d.extraV2F6 = v2p.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // d.extraV2F7 = v2p.extraV2F7;
               // #endif


               // Ext_ModifyTessellatedVertex0(v, d);
               // Ext_ModifyTessellatedVertex1(v, d);
               // Ext_ModifyTessellatedVertex2(v, d);
               // Ext_ModifyTessellatedVertex3(v, d);
               // Ext_ModifyTessellatedVertex4(v, d);
               // Ext_ModifyTessellatedVertex5(v, d);
               // Ext_ModifyTessellatedVertex6(v, d);
               // Ext_ModifyTessellatedVertex7(v, d);
               // Ext_ModifyTessellatedVertex8(v, d);
               // Ext_ModifyTessellatedVertex9(v, d);
               // Ext_ModifyTessellatedVertex10(v, d);
               // Ext_ModifyTessellatedVertex11(v, d);
               // Ext_ModifyTessellatedVertex12(v, d);
               // Ext_ModifyTessellatedVertex13(v, d);
               // Ext_ModifyTessellatedVertex14(v, d);
               // Ext_ModifyTessellatedVertex15(v, d);
               // Ext_ModifyTessellatedVertex16(v, d);
               // Ext_ModifyTessellatedVertex17(v, d);
               // Ext_ModifyTessellatedVertex18(v, d);
               // Ext_ModifyTessellatedVertex19(v, d);
               // Ext_ModifyTessellatedVertex20(v, d);
               // Ext_ModifyTessellatedVertex21(v, d);
               // Ext_ModifyTessellatedVertex22(v, d);
               // Ext_ModifyTessellatedVertex23(v, d);
               // Ext_ModifyTessellatedVertex24(v, d);
               // Ext_ModifyTessellatedVertex25(v, d);
               // Ext_ModifyTessellatedVertex26(v, d);
               // Ext_ModifyTessellatedVertex27(v, d);
               // Ext_ModifyTessellatedVertex28(v, d);
               // Ext_ModifyTessellatedVertex29(v, d);

               // #if %EXTRAV2F0REQUIREKEY%
               // v2p.extraV2F0 = d.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // v2p.extraV2F1 = d.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // v2p.extraV2F2 = d.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // v2p.extraV2F3 = d.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // v2p.extraV2F4 = d.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // v2p.extraV2F5 = d.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // v2p.extraV2F6 = d.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // v2p.extraV2F7 = d.extraV2F7;
               // #endif
            }

            void ChainFinalColorForward(inout Surface l, inout ShaderData d, inout half4 color)
            {
               //   Ext_FinalColorForward0(l, d, color);
               //   Ext_FinalColorForward1(l, d, color);
               //   Ext_FinalColorForward2(l, d, color);
               //   Ext_FinalColorForward3(l, d, color);
               //   Ext_FinalColorForward4(l, d, color);
               //   Ext_FinalColorForward5(l, d, color);
               //   Ext_FinalColorForward6(l, d, color);
               //   Ext_FinalColorForward7(l, d, color);
               //   Ext_FinalColorForward8(l, d, color);
               //   Ext_FinalColorForward9(l, d, color);
               //  Ext_FinalColorForward10(l, d, color);
               //  Ext_FinalColorForward11(l, d, color);
               //  Ext_FinalColorForward12(l, d, color);
               //  Ext_FinalColorForward13(l, d, color);
               //  Ext_FinalColorForward14(l, d, color);
               //  Ext_FinalColorForward15(l, d, color);
               //  Ext_FinalColorForward16(l, d, color);
               //  Ext_FinalColorForward17(l, d, color);
               //  Ext_FinalColorForward18(l, d, color);
               //  Ext_FinalColorForward19(l, d, color);
               //  Ext_FinalColorForward20(l, d, color);
               //  Ext_FinalColorForward21(l, d, color);
               //  Ext_FinalColorForward22(l, d, color);
               //  Ext_FinalColorForward23(l, d, color);
               //  Ext_FinalColorForward24(l, d, color);
               //  Ext_FinalColorForward25(l, d, color);
               //  Ext_FinalColorForward26(l, d, color);
               //  Ext_FinalColorForward27(l, d, color);
               //  Ext_FinalColorForward28(l, d, color);
               //  Ext_FinalColorForward29(l, d, color);
            }

            void ChainFinalGBufferStandard(inout Surface s, inout ShaderData d, inout half4 GBuffer0, inout half4 GBuffer1, inout half4 GBuffer2, inout half4 outEmission, inout half4 outShadowMask)
            {
               //   Ext_FinalGBufferStandard0(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard1(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard2(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard3(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard4(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard5(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard6(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard7(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard8(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard9(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard10(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard11(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard12(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard13(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard14(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard15(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard16(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard17(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard18(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard19(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard20(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard21(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard22(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard23(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard24(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard25(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard26(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard27(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard28(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard29(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
            }



            

         ShaderData CreateShaderData(VertexToPixel i
                  #if NEED_FACING
                     , bool facing
                  #endif
         )
         {
            ShaderData d = (ShaderData)0;
            d.clipPos = i.pos;
            d.worldSpacePosition = i.worldPos;

            d.worldSpaceNormal = normalize(i.worldNormal);
            d.worldSpaceTangent = normalize(i.worldTangent.xyz);
            d.tangentSign = i.worldTangent.w;
            float3 bitangent = cross(i.worldTangent.xyz, i.worldNormal) * d.tangentSign * -1;
            

            d.TBNMatrix = float3x3(d.worldSpaceTangent, bitangent, d.worldSpaceNormal);
            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - i.worldPos);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);
             d.texcoord0 = i.texcoord0;
             d.texcoord1 = i.texcoord1;
             d.texcoord2 = i.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
            // d.texcoord3 = i.texcoord3;
            // #endif

            // d.isFrontFace = facing;
            // #if %VERTEXCOLORREQUIREKEY%
            // d.vertexColor = i.vertexColor;
            // #endif

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(unity_WorldToObject, float4(GetCameraRelativePositionWS(i.worldPos), 1)).xyz;
            #else
                // d.localSpacePosition = mul(unity_WorldToObject, float4(i.worldPos, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)unity_WorldToObject, i.worldNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)unity_WorldToObject, i.worldTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
             d.screenPos = i.screenPos;
             d.screenUV = (i.screenPos.xy / i.screenPos.w);
            // #endif


            // #if %EXTRAV2F0REQUIREKEY%
            // d.extraV2F0 = i.extraV2F0;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
            // d.extraV2F1 = i.extraV2F1;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
            // d.extraV2F2 = i.extraV2F2;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
            // d.extraV2F3 = i.extraV2F3;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // d.extraV2F4 = i.extraV2F4;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // d.extraV2F5 = i.extraV2F5;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // d.extraV2F6 = i.extraV2F6;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // d.extraV2F7 = i.extraV2F7;
            // #endif

            return d;
         }
         

            

#if (SHADERPASS == SHADERPASS_LIGHT_TRANSPORT)

   // This was not in constant buffer in original unity, so keep outiside. But should be in as ShaderRenderPass frequency
   float unity_OneOverOutputBoost;
   float unity_MaxOutputValue;

   CBUFFER_START(UnityMetaPass)
   // x = use uv1 as raster position
   // y = use uv2 as raster position
   bool4 unity_MetaVertexControl;

   // x = return albedo
   // y = return normal
   bool4 unity_MetaFragmentControl;
   CBUFFER_END

   VertexToPixel Vert(VertexData inputMesh)
   {
       VertexToPixel output;
       ZERO_INITIALIZE(VertexToPixel, output);
       UNITY_SETUP_INSTANCE_ID(inputMesh);
       UNITY_TRANSFER_INSTANCE_ID(inputMesh, output);
       UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

       // Output UV coordinate in vertex shader
       float2 uv = float2(0.0, 0.0);

       if (unity_MetaVertexControl.x)
       {
           uv = inputMesh.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
       }
       else if (unity_MetaVertexControl.y)
       {
           uv = inputMesh.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
       }

       // OpenGL right now needs to actually use the incoming vertex position
       // so we create a fake dependency on it here that haven't any impact.
       output.pos = float4(uv * 2.0 - 1.0, inputMesh.vertex.z > 0 ? 1.0e-4 : 0.0, 1.0);

       output.worldPos = TransformObjectToWorld(inputMesh.vertex.xyz).xyz;

       // Normal is required for triplanar mapping
       output.worldNormal = TransformObjectToWorldNormal(inputMesh.normal);
       // Not required but assign to silent compiler warning
       output.worldTangent = float4(1.0, 0.0, 0.0, 0.0);

       output.texcoord0 = inputMesh.texcoord0;
       output.texcoord1 = inputMesh.texcoord1;
       output.texcoord2 = inputMesh.texcoord2;
       // #if %TEXCOORD3REQUIREKEY%
       // output.texcoord3 = inputMesh.texcoord3;
       // #endif
       // #if %VERTEXCOLORREQUIREKEY%
       // output.vertexColor = inputMesh.vertexColor;
       // #endif

       return output;
   }
#else

   #if (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
      #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariablesMatrixDefsHDCamera.hlsl"

      void MotionVectorPositionZBias(VertexToPixel input)
      {
      #if UNITY_REVERSED_Z
          input.pos.z -= unity_MotionVectorsParams.z * input.pos.w;
      #else
          input.pos.z += unity_MotionVectorsParams.z * input.pos.w;
      #endif
      }

   #endif

   VertexToPixel Vert(VertexData input)
   {
       VertexToPixel output;
       ZERO_INITIALIZE(VertexToPixel, output);

       UNITY_SETUP_INSTANCE_ID(input);
       UNITY_TRANSFER_INSTANCE_ID(input, output);
       UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

       #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
         VertexData previousMesh = input;
       #endif

       ChainModifyVertex(input, output, _Time);

       // This return the camera relative position (if enable)
       float3 positionRWS = TransformObjectToWorld(input.vertex.xyz);
       float3 normalWS = TransformObjectToWorldNormal(input.normal);
       float4 tangentWS = float4(TransformObjectToWorldDir(input.tangent.xyz), input.tangent.w);


       output.worldPos = GetAbsolutePositionWS(positionRWS);
       output.pos = TransformWorldToHClip(positionRWS);
       output.worldNormal = normalWS;
       output.worldTangent = tangentWS;


       output.texcoord0 = input.texcoord0;
       output.texcoord1 = input.texcoord1;
       output.texcoord2 = input.texcoord2;

       // #if %TEXCOORD3REQUIREKEY%
       // output.texcoord3 = input.texcoord3;
       // #endif

       // #if %VERTEXCOLORREQUIREKEY%
       // output.vertexColor = input.vertexColor;
       // #endif

       // #if %SCREENPOSREQUIREKEY%
        output.screenPos = ComputeScreenPos(output.pos, _ProjectionParams.x);
       // #endif
   
       #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))

          #if !defined(TESSELLATION_ON)
            MotionVectorPositionZBias(output);
          #endif

          output.motionVectorCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(positionRWS.xyz, 1.0));
          // Note: unity_MotionVectorsParams.y is 0 is forceNoMotion is enabled
          bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
          if (forceNoMotion)
          {
              output.previousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
          }
          else
          {
            bool hasDeformation = unity_MotionVectorsParams.x > 0.0; // Skin or morph target

            float3 effectivePositionOS = (hasDeformation ? previousMesh.previousPositionOS : previousMesh.vertex.xyz);
            #if defined(_ADD_PRECOMPUTED_VELOCITY)
               effectivePositionOS -= input.precomputedVelocity;
            #endif

            previousMesh.vertex = float4(effectivePositionOS, 1);
            VertexToPixel dummy = (VertexToPixel)0;
            

            ChainModifyVertex(previousMesh, dummy, _LastTimeParameters);

            // we might need this for skinned objects?
            //float3 normalWS = TransformPreviousObjectToWorldNormal(input.normal).xyz;
            float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.vertex.xyz);

            #ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
            if (_TransparentCameraOnlyMotionVectors > 0)
            {
               previousPositionRWS = positionRWS.xyz;
            }
            #endif // _WRITE_TRANSPARENT_MOTION_VECTOR

            output.previousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
         }
       #endif // _HDRP && _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))


       return output;
   }


#endif



            

            

               #if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
                  #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalPrepassBuffer.hlsl"
               #endif

                FragInputs BuildFragInputs(VertexToPixel input)
                {
                    UNITY_SETUP_INSTANCE_ID(input);
                    FragInputs output;
                    ZERO_INITIALIZE(FragInputs, output);
            
                    // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                    // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                    // to compute normals which are then passed on elsewhere to compute other values...
                    output.tangentToWorld = k_identity3x3;
                    output.positionSS = input.pos;       // input.positionCS is SV_Position
                    // BETTER SHADERS: because we transform world position into actual world space for things like
                    // triplanar, etc, we have to back transform it here for lighting
                    output.positionRWS = GetCameraRelativePositionWS(input.worldPos);
                    output.tangentToWorld = BuildTangentToWorld(input.worldTangent, input.worldNormal);
                    output.texCoord0 = input.texcoord0;
                    output.texCoord1 = input.texcoord1;
                    output.texCoord2 = input.texcoord2;
            
                    return output;
                }
            
               void BuildSurfaceData(FragInputs fragInputs, inout Surface surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
               {
                   // setup defaults -- these are used if the graph doesn't output a value
                   ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                   // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                   // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                   surfaceData.specularOcclusion = 1.0;

                   // copy across graph values, if defined
                   surfaceData.baseColor =                 surfaceDescription.Albedo;
                   surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                   surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                   surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                   surfaceData.metallic =                  surfaceDescription.Metallic;
                   surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                   surfaceData.thickness =                 surfaceDescription.Thickness;
                   surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                   #if _USESPECULAR
                      surfaceData.specularColor =             surfaceDescription.Specular;
                   #endif
                   surfaceData.coatMask =                  surfaceDescription.CoatMask;
                   surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                   surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                   surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;



                   #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                        if (_EnableSSRefraction)
                        {
                            surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                            surfaceDescription.Alpha = 1.0;
                        }
                        else
                        {
                            surfaceData.ior = 1.0;
                            surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                            surfaceData.atDistance = 1.0;
                            surfaceData.transmittanceMask = 0.0;
                            surfaceDescription.Alpha = 1.0;
                        }
                    #else
                        surfaceData.ior = 1.0;
                        surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                        surfaceData.atDistance = 1.0;
                        surfaceData.transmittanceMask = 0.0;
                    #endif

                    

                    // These static material feature allow compile time optimization
                    surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
                    #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_TRANSMISSION
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_ANISOTROPY
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
                        surfaceData.normalWS = float3(0, 1, 0);
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
                    #endif
                
                    #if defined(_MATERIAL_FEATURE_CLEAR_COAT) || _CLEARCOAT
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
                    #endif
                
                    #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                        // Require to have setup baseColor
                        // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                        surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
                    #endif
                


                   // compute world space normal
                   #if !_WORLDSPACENORMAL
                      surfaceData.normalWS = mul(surfaceDescription.Normal, fragInputs.tangentToWorld);
                   #else
                      surfaceData.normalWS = surfaceDescription.Normal;
                   #endif

                   surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                   surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT

         
                    #if HAVE_DECALS
                        if (_EnableDecals)
                        {
                            float alpha = 1.0;
                            alpha = surfaceDescription.Alpha;
                
                            // Both uses and modifies 'surfaceData.normalWS'.
                            DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], alpha);
                            ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
                        }
                    #endif
                
                    bentNormalWS = surfaceData.normalWS;
                
                    surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
                
                    #ifdef DEBUG_DISPLAY
                        if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                        {
                            // TODO: need to update mip info
                            surfaceData.metallic = 0;
                        }
                
                        // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                        // as it can modify attribute use for static lighting
                        ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
                    #endif
                
                    // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                    // If user provide bent normal then we process a better term
                    #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                        // Just use the value passed through via the slot (not active otherwise)
                    #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                        // If we have bent normal and ambient occlusion, process a specular occlusion
                        surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                    #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                        surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                    #endif
                
                    #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                        surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
                    #endif
               }
        
               void GetSurfaceAndBuiltinData(VertexToPixel m2ps, FragInputs fragInputs, float3 V, inout PositionInputs posInput,
                     out SurfaceData surfaceData, out BuiltinData builtinData, inout Surface l, inout ShaderData d
                     #if NEED_FACING
                        , bool facing
                     #endif
                  )
               {
                 // Removed since crossfade does not work, probably needs extra material setup.   
                 //#if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                 //   #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                 //      LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                 //   #endif
                 //#endif

                 d = CreateShaderData(m2ps
                    #if NEED_FACING
                       , facing
                    #endif
                 );

                 l = (Surface)0;

                 l.Albedo = half3(0.5, 0.5, 0.5);
                 l.Normal = float3(0,0,1);
                 l.Occlusion = 1;
                 l.Alpha = 1;
                 l.SpecularOcclusion = 1;

                 #if !defined(SHADER_STAGE_RAY_TRACING) && defined(_DEPTHOFFSET_ON)
                    l.outputDepth = d.clipPos.z;
                 #endif

                 ChainSurfaceFunction(l, d);

                 #if !defined(SHADER_STAGE_RAY_TRACING) && defined(_DEPTHOFFSET_ON)
                    //posInput.deviceDepth = l.outputDepth;
                 #endif

                 #if _UNLIT
                     //l.Emission = l.Albedo;
                     //l.Albedo = 0;
                     l.Normal = half3(0,0,1);
                     l.Occlusion = 1;
                     l.Metallic = 0;
                     l.Specular = 0;
                 #endif

                 surfaceData.geomNormalWS = d.worldSpaceNormal;
                 surfaceData.tangentWS = d.worldSpaceTangent;
                 fragInputs.tangentToWorld = d.TBNMatrix;

                 float3 bentNormalWS;
                 BuildSurfaceData(fragInputs, l, V, posInput, surfaceData, bentNormalWS);


                 InitBuiltinData(posInput, l.Alpha, bentNormalWS, -d.worldSpaceNormal, fragInputs.texCoord1, fragInputs.texCoord2, builtinData);

                 

                 builtinData.emissiveColor = l.Emission;

                 #if defined(_OVERRIDE_BAKEDGI)
                    builtinData.bakeDiffuseLighting = l.DiffuseGI;
                    builtinData.backBakeDiffuseLighting = l.BackDiffuseGI;
                    builtinData.emissiveColor += l.SpecularGI;
                 #endif

                 #if defined(_OVERRIDE_SHADOWMASK)
                    builtinData.shadowMask0 = l.ShadowMask.x;
                    builtinData.shadowMask1 = l.ShadowMask.y;
                    builtinData.shadowMask2 = l.ShadowMask.z;
                    builtinData.shadowMask3 = l.ShadowMask.w;
                 #endif

                  #ifdef UNITY_VIRTUAL_TEXTURING
                     builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                  #endif

                  #if (SHADERPASS == SHADERPASS_DISTORTION)
                     builtinData.distortion = surfaceData.Distortion;
                     builtinData.distortionBlur = surfaceData.DistortionBlur;
                  #endif

                  #ifndef SHADER_UNLIT
                    // PostInitBuiltinData call ApplyDebugToBuiltinData
                    PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                  #else
                    ApplyDebugToBuiltinData(builtinData);
                  #endif
         
                  RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
               }


            void Frag( VertexToPixel v2f
                          #if defined(SCENESELECTIONPASS) || defined(SCENEPICKINGPASS)
                          , out float4 outColor : SV_Target0
                          #else
                          #ifdef WRITE_MSAA_DEPTH
                            // We need the depth color as SV_Target0 for alpha to coverage
                            , out float4 depthColor : SV_Target0
                                #ifdef WRITE_NORMAL_BUFFER
                                , out float4 outNormalBuffer : SV_Target1
                                #endif
                            #else
                                #ifdef WRITE_NORMAL_BUFFER
                                , out float4 outNormalBuffer : SV_Target0
                                #endif
                            #endif

                            // Decal buffer must be last as it is bind but we can optionally write into it (based on _DISABLE_DECALS)
                            #if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
                            , out float4 outDecalBuffer : SV_TARGET_DECAL
                            #endif
                        #endif
                        #if NEED_FACING
                           , bool facing : SV_IsFrontFace
                        #endif

                      )
              {
                  UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(v2f);
                  FragInputs input = BuildFragInputs(v2f);

                  // input.positionSS is SV_Position
                  PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

                  float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);


                  SurfaceData surfaceData;
                  BuiltinData builtinData;
                  Surface l;
                  ShaderData d;
                  GetSurfaceAndBuiltinData(v2f, input, V, posInput, surfaceData, builtinData, l, d
               #if NEED_FACING
                  , facing
               #endif
               );


                  
                  #ifdef SCENESELECTIONPASS
                      // We use depth prepass for scene selection in the editor, this code allow to output the outline correctly
                      outColor = float4(_ObjectId, _PassValue, 1.0, 1.0);
                  #elif defined(SCENEPICKINGPASS)
                      outColor = _SelectionID;
                  #else
                     #ifdef WRITE_MSAA_DEPTH
                       // In case we are rendering in MSAA, reading the an MSAA depth buffer is way too expensive. To avoid that, we export the depth to a color buffer
                       depthColor = v2p.pos.z;

                       #ifdef _ALPHATOMASK_ON
                          // Alpha channel is used for alpha to coverage
                          depthColor.a = SharpenAlpha(builtinData.opacity, builtinData.alphaClipTreshold);
                       #endif // alphatomask
                     #endif // msaa_depth
                  

                     #if defined(WRITE_NORMAL_BUFFER)
                        EncodeIntoNormalBuffer(ConvertSurfaceDataToNormalData(surfaceData), outNormalBuffer);
                     #endif

                     #if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
                        DecalPrepassData decalPrepassData;
                        // We don't have the right to access SurfaceData in a shaderpass.
                        // However it would be painful to have to add a function like ConvertSurfaceDataToDecalPrepassData() to every Material to return geomNormalWS anyway
                        // Here we will put the constrain that any Material requiring to support Decal, will need to have geomNormalWS as member of surfaceData (and we already require normalWS anyway)
                        decalPrepassData.geomNormalWS = surfaceData.geomNormalWS;
                        decalPrepassData.decalLayerMask = GetMeshRenderingDecalLayer();
                        EncodeIntoDecalPrepassBuffer(decalPrepassData, outDecalBuffer);
                     #endif
                  #endif


              }

         ENDHLSL
        }

              Pass
        {
            Name "MotionVectors"
            Tags
            {
               "LightMode" = "MotionVectors"
            }
    
            // Render State
            Cull Back
            ZWrite On
            Stencil
               {
                  WriteMask [_StencilWriteMaskMV]
                  Ref [_StencilRefMV]
                  CompFront Always
                  PassFront Replace
                  CompBack Always
                  PassBack Replace
               }

            	Cull [_SGT_Cull]

            
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch
            #pragma multi_compile_instancing
            #pragma instancing_options renderinglayer


            #pragma multi_compile _ WRITE_MSAA_DEPTH
            //#pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
            //#pragma shader_feature_local _BLENDMODE_OFF _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
            //#pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
            //#pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            //#pragma shader_feature_local _ _ENABLE_FOG_ON_TRANSPARENT
            #pragma multi_compile _ WRITE_NORMAL_BUFFER
            //#pragma shader_feature_local _ _DISABLE_DECALS
            //#pragma shader_feature_local _ _DISABLE_SSR
            //#pragma shader_feature_local _ _DISABLE_SSR_TRANSPARENT
            #pragma multi_compile _ WRITE_DECAL_BUFFER
            //#pragma shader_feature_local _REFRACTION_OFF _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
                
        

            #define SHADERPASS SHADERPASS_MOTION_VECTORS
            #define RAYTRACING_SHADER_GRAPH_DEFAULT
            #define VARYINGS_NEED_PASS
            #define _PASSMOTIONVECTOR 1

            
            
	#define __SGT_LIGHTANDSHADOW 1
	#define SGT_MAX_LIGHTS 16
	#define SGT_MAX_SPHERE_SHADOWS 16
	#define SGT_MAX_RING_SHADOWS 1


	#define __SGT_MATRIX 1


	#define __SGT_OUTPUT 1


	#pragma shader_feature_local _SGT_LIGHTING
	#pragma shader_feature_local _SGT_SCATTERING
	#pragma shader_feature_local _SGT_HDR
	#pragma multi_compile_local _ _SGT_OUTER
	#pragma multi_compile_local _ _SGT_SOFTNESS


    #pragma shader_feature_local DISABLEFOG    


	#pragma shader_feature_local _ADD_PRECOMPUTED_VELOCITY
	#pragma shader_feature_local _TRANSPARENT_WRITES_MOTION_VEC
	#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
	#pragma shader_feature_local _DISABLE_DECALS
	#pragma shader_feature_local _DISABLE_SSR
	#pragma shader_feature_local _DISABLE_SSR_TRANSPARENT
	#pragma shader_feature_local _REFRACTION_OFF _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN         


   #define _HDRP 1
#define _BLENDMODE_ALPHA 1
#define _SURFACE_TYPE_TRANSPARENT 1

#define _UNLIT 1
#define REQUIRE_DEPTH_TEXTURE
#define _USINGTEXCOORD1 1
#define _USINGTEXCOORD2 1


               #pragma vertex Vert
   #pragma fragment Frag

                  // useful conversion functions to make surface shader code just work

      #define UNITY_DECLARE_TEX2D(name) TEXTURE2D(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2D_NOSAMPLER(name) TEXTURE2D(name);
      #define UNITY_DECLARE_TEX2DARRAY(name) TEXTURE2D_ARRAY(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(tex) TEXTURE2D_ARRAY(tex);

      #define UNITY_SAMPLE_TEX2DARRAY(tex,coord)            SAMPLE_TEXTURE2D_ARRAY(tex, sampler##tex, coord.xy, coord.z)
      #define UNITY_SAMPLE_TEX2DARRAY_LOD(tex,coord,lod)    SAMPLE_TEXTURE2D_ARRAY_LOD(tex, sampler##tex, coord.xy, coord.z, lod)
      #define UNITY_SAMPLE_TEX2D(tex, coord)                SAMPLE_TEXTURE2D(tex, sampler##tex, coord)
      #define UNITY_SAMPLE_TEX2D_SAMPLER(tex, samp, coord)  SAMPLE_TEXTURE2D(tex, sampler##samp, coord)

      #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod)   SAMPLE_TEXTURE2D_LOD(tex, sampler_##tex, coord, lod)
      #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) SAMPLE_TEXTURE2D_LOD (tex, sampler##samplertex,coord, lod)

      #if defined(UNITY_COMPILER_HLSL)
         #define UNITY_INITIALIZE_OUTPUT(type,name) name = (type)0;
      #else
         #define UNITY_INITIALIZE_OUTPUT(type,name)
      #endif

      #define sampler2D_float sampler2D
      #define sampler2D_half sampler2D

      #undef WorldNormalVector
      #define WorldNormalVector(data, normal) mul(normal, data.TBNMatrix)

      #define UnityObjectToWorldNormal(normal) mul(GetObjectToWorldMatrix(), normal)




// HDRP Adapter stuff
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl" // Need to be here for Gradient struct definition

            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT 
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
    
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
    



            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
               #define OUTPUT_SPLIT_LIGHTING
            #endif

            #define HAVE_RECURSIVE_RENDERING

            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
               #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                  #define WRITE_NORMAL_BUFFER
               #endif
            #endif

            #ifndef DEBUG_DISPLAY
               // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
               // Don't do it with debug display mode as it is possible there is no depth prepass in this case
               #if !defined(_SURFACE_TYPE_TRANSPARENT) && defined(_ALPHATEST)
                  #if SHADERPASS == SHADERPASS_FORWARD
                  #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                  #elif SHADERPASS == SHADERPASS_GBUFFER
                  #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                  #endif
               #endif
            #endif

            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
               #define _DEFERRED_CAPABLE_MATERIAL
            #endif
    
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
               #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif




            CBUFFER_START(UnityPerMaterial)
               float _UseShadowThreshold;
               float _BlendMode;
               float _EnableBlendModePreserveSpecularLighting;
               float _RayTracing;
               float _RefractionModel;

              
	int    _SGT_LightCount;
	float4 _SGT_LightColor[SGT_MAX_LIGHTS];
	float4 _SGT_LightPosition[SGT_MAX_LIGHTS];
	float3 _SGT_LightDirection[SGT_MAX_LIGHTS];

	int       _SGT_SphereShadowCount;
	float4x4  _SGT_SphereShadowMatrix[SGT_MAX_SPHERE_SHADOWS];
	float4    _SGT_SphereShadowPower[SGT_MAX_SPHERE_SHADOWS];

	int       _SGT_RingShadowCount;
	sampler2D _SGT_RingShadowTexture;
	float4    _SGT_RingShadowColor[SGT_MAX_RING_SHADOWS];
	float4x4  _SGT_RingShadowMatrix[SGT_MAX_RING_SHADOWS];
	float     _SGT_RingShadowRatio[SGT_MAX_RING_SHADOWS];






	float4    _SGT_Color; // Auto
	float     _SGT_Brightness; // Auto
	sampler2D _SGT_InnerDepthTex;
	sampler2D _SGT_OuterDepthTex;

	float     _SGT_HorizonLengthRecip;
	float     _SGT_Sky;
	float4x4  _SGT_WorldToLocal;
	float4x4  _SGT_LocalToWorld;

	sampler2D _SGT_LightingTex;
	float3    _SGT_AmbientColor;

	float4    _SGT_ScatteringTerms;
	float4    _SGT_ScatteringInner;
	float4    _SGT_ScatteringOuter;
	sampler2D _SGT_ScatteringTex;
	float     _SGT_InnerRatio;
	float     _SGT_InnerScale;

	float _SGT_SoftParticlesFactor; // Auto







            CBUFFER_END
    


             // -- Property used by ScenePickingPass
               #ifdef SCENEPICKINGPASS
               float4 _SelectionID;
               #endif
    
               // -- Properties used by SceneSelectionPass
               #ifdef SCENESELECTIONPASS
               int _ObjectId;
               int _PassValue;
               #endif
  
           
            // data across stages, stripped like the above.
            struct VertexToPixel
            {
               float4 pos : SV_POSITION;
               float3 worldPos : TEXCOORD0;
               float3 worldNormal : TEXCOORD1;
               float4 worldTangent : TEXCOORD2;
               float4 texcoord0 : TEXCOORD3;
               float4 texcoord1 : TEXCOORD4;
               float4 texcoord2 : TEXCOORD5;
               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD6;
               // #endif

               // #if %SCREENPOSREQUIREKEY%
                float4 screenPos : TEXCOORD7;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD12;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD13;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD14;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD15;
               // #endif

               #if UNITY_ANY_INSTANCING_ENABLED
                  uint instanceID : INSTANCEID_SEMANTIC;
               #endif // UNITY_ANY_INSTANCING_ENABLED

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float4 previousPositionCS : TEXCOORD16; // Contain previous transform position (in case of skinning for example)
                  float4 motionVectorCS : TEXCOORD17;
               #endif

               UNITY_VERTEX_OUTPUT_STEREO
            }; 


            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
    
            
            
            // data describing the user output of a pixel
            struct Surface
            {
               half3 Albedo;
               half Height;
               half3 Normal;
               half Smoothness;
               half3 Emission;
               half Metallic;
               half3 Specular;
               half Occlusion;
               half SpecularPower; // for simple lighting
               half Alpha;
               float outputDepth; // if written, SV_Depth semantic is used. ShaderData.clipPos.z is unused value
               // HDRP Only
               half SpecularOcclusion;
               half SubsurfaceMask;
               half Thickness;
               half CoatMask;
               half CoatSmoothness;
               half Anisotropy;
               half IridescenceMask;
               half IridescenceThickness;
               int DiffusionProfileHash;
               float SpecularAAThreshold;
               float SpecularAAScreenSpaceVariance;
               // requires _OVERRIDE_BAKEDGI to be defined, but is mapped in all pipelines
               float3 DiffuseGI;
               float3 BackDiffuseGI;
               float3 SpecularGI;
               // requires _OVERRIDE_SHADOWMASK to be defines
               float4 ShadowMask;
            };

            // Data the user declares in blackboard blocks
            struct Blackboard
            {
                
                float blackboardDummyData;
            };

            // data the user might need, this will grow to be big. But easy to strip
            struct ShaderData
            {
               float4 clipPos; // SV_POSITION
               float3 localSpacePosition;
               float3 localSpaceNormal;
               float3 localSpaceTangent;
        
               float3 worldSpacePosition;
               float3 worldSpaceNormal;
               float3 worldSpaceTangent;
               float tangentSign;

               float3 worldSpaceViewDir;
               float3 tangentSpaceViewDir;

               float4 texcoord0;
               float4 texcoord1;
               float4 texcoord2;
               float4 texcoord3;

               float2 screenUV;
               float4 screenPos;

               float4 vertexColor;
               bool isFrontFace;

               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;

               float3x3 TBNMatrix;
               Blackboard blackboard;
            };

            struct VertexData
            {
               #if SHADER_TARGET > 30
               // uint vertexID : SV_VertexID;
               #endif
               float4 vertex : POSITION;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;

               // optimize out mesh coords when not in use by user or lighting system
               #if _URP && (_USINGTEXCOORD1 || _PASSMETA || _PASSFORWARD || _PASSGBUFFER)
                  float4 texcoord1 : TEXCOORD1;
               #endif

               #if _URP && (_USINGTEXCOORD2 || _PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && defined(DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif

               #if _STANDARD && (_USINGTEXCOORD1 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER || _PASSFORWARDADD) && LIGHTMAP_ON)))
                  float4 texcoord1 : TEXCOORD1;
               #endif
               #if _STANDARD && (_USINGTEXCOORD2 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif


               #if _HDRP
                  float4 texcoord1 : TEXCOORD1;
                  float4 texcoord2 : TEXCOORD2;
               #endif

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float3 previousPositionOS : TEXCOORD4; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity    : TEXCOORD5; // Add Precomputed Velocity (Alembic computes velocities on runtime side).
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct TessVertex 
            {
               float4 vertex : INTERNALTESSPOS;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;
               float4 texcoord1 : TEXCOORD1;
               float4 texcoord2 : TEXCOORD2;

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD5;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD6;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD7;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD12;
               // #endif

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float3 previousPositionOS : TEXCOORD13; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity : TEXCOORD14;
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
               UNITY_VERTEX_OUTPUT_STEREO
            };

            struct ExtraV2F
            {
               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;
               Blackboard blackboard;
               float4 time;
            };


            float3 WorldToTangentSpace(ShaderData d, float3 normal)
            {
               return mul(d.TBNMatrix, normal);
            }

            float3 TangentToWorldSpace(ShaderData d, float3 normal)
            {
               return mul(normal, d.TBNMatrix);
            }

            // in this case, make standard more like SRPs, because we can't fix
            // unity_WorldToObject in HDRP, since it already does macro-fu there

            #if _STANDARD
               float3 TransformWorldToObject(float3 p) { return mul(unity_WorldToObject, float4(p, 1)); };
               float3 TransformObjectToWorld(float3 p) { return mul(unity_ObjectToWorld, float4(p, 1)); };
               float4 TransformWorldToObject(float4 p) { return mul(unity_WorldToObject, p); };
               float4 TransformObjectToWorld(float4 p) { return mul(unity_ObjectToWorld, p); };
               float4x4 GetWorldToObjectMatrix() { return unity_WorldToObject; }
               float4x4 GetObjectToWorldMatrix() { return unity_ObjectToWorld; }
               #if (defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (SHADER_TARGET_SURFACE_ANALYSIS && !SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod) tex.SampleLevel (sampler##tex,coord, lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) tex.SampleLevel (sampler##samplertex,coord, lod)
              #else
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord,lod) tex2D (tex,coord,0,lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord,lod) tex2D (tex,coord,0,lod)
              #endif

               #undef GetWorldToObjectMatrix()

               #define GetWorldToObjectMatrix()   unity_WorldToObject


            #endif

            float3 GetCameraWorldPosition()
            {
               #if _HDRP
                  return GetCameraRelativePositionWS(_WorldSpaceCameraPos);
               #else
                  return _WorldSpaceCameraPos;
               #endif
            }

            #if _GRABPASSUSED
               #if _STANDARD
                  TEXTURE2D(%GRABTEXTURE%);
                  SAMPLER(sampler_%GRABTEXTURE%);
               #endif

               half3 GetSceneColor(float2 uv)
               {
                  #if _STANDARD
                     return SAMPLE_TEXTURE2D(%GRABTEXTURE%, sampler_%GRABTEXTURE%, uv).rgb;
                  #else
                     return SHADERGRAPH_SAMPLE_SCENE_COLOR(uv);
                  #endif
               }
            #endif


      
            #if _STANDARD
               UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
               float GetSceneDepth(float2 uv) { return SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv)); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv)); } 
            #else
               float GetSceneDepth(float2 uv) { return SHADERGRAPH_SAMPLE_SCENE_DEPTH(uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv), _ZBufferParams); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv), _ZBufferParams); } 
            #endif

            float3 GetWorldPositionFromDepthBuffer(float2 uv, float3 worldSpaceViewDir)
            {
               float eye = GetLinearEyeDepth(uv);
               float3 camView = mul((float3x3)GetObjectToWorldMatrix(), transpose(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V)) [2].xyz);

               float dt = dot(worldSpaceViewDir, camView);
               float3 div = worldSpaceViewDir/dt;
               float3 wpos = (eye * div) + GetCameraWorldPosition();
               return wpos;
            }

            #if _HDRP
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return GetAbsolutePositionWS(TransformObjectToWorld(pos));
            }
            #else
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return TransformObjectToWorld(pos);
            }
            #endif

            #if _STANDARD
               UNITY_DECLARE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture);
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  float4 depthNorms = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture, uv);
                  float3 norms = DecodeViewNormalStereo(depthNorms);
                  norms = mul((float3x3)GetWorldToViewMatrix(), norms) * 0.5 + 0.5;
                  return norms;
               }
            #elif _HDRP
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  NormalData nd;
                  DecodeFromNormalBuffer(_ScreenSize.xy * uv, nd);
                  return nd.normalWS;
               }
            #elif _URP
               #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                  #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareNormalsTexture.hlsl"
               #endif

               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                     return SampleSceneNormals(uv);
                  #else
                     float3 wpos = GetWorldPositionFromDepthBuffer(uv, worldSpaceViewDir);
                     return normalize(-cross(ddx(wpos), ddy(wpos))) * 0.5 + 0.5;
                  #endif

                }
             #endif

             #if _HDRP

               half3 UnpackNormalmapRGorAG(half4 packednormal)
               {
                     // This do the trick
                  packednormal.x *= packednormal.w;

                  half3 normal;
                  normal.xy = packednormal.xy * 2 - 1;
                  normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                  return normal;
               }
               half3 UnpackNormal(half4 packednormal)
               {
                  #if defined(UNITY_NO_DXT5nm)
                     return packednormal.xyz * 2 - 1;
                  #else
                     return UnpackNormalmapRGorAG(packednormal);
                  #endif
               }
               #endif
               #if _HDRP || _URP

               half3 UnpackScaleNormal(half4 packednormal, half scale)
               {
                 #ifndef UNITY_NO_DXT5nm
                   // Unpack normal as DXT5nm (1, y, 1, x) or BC5 (x, y, 0, 1)
                   // Note neutral texture like "bump" is (0, 0, 1, 1) to work with both plain RGB normal and DXT5nm/BC5
                   packednormal.x *= packednormal.w;
                 #endif
                   half3 normal;
                   normal.xy = (packednormal.xy * 2 - 1) * scale;
                   normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                   return normal;
               }	

             #endif


            void GetSun(out float3 lightDir, out float3 color)
            {
               lightDir = float3(0.5, 0.5, 0);
               color = 1;
               #if _HDRP
                  if (_DirectionalLightCount > 0)
                  {
                     DirectionalLightData light = _DirectionalLightDatas[0];
                     lightDir = -light.forward.xyz;
                     color = light.color;
                  }
               #elif _STANDARD
			         lightDir = normalize(_WorldSpaceLightPos0.xyz);
                  color = _LightColor0.rgb;
               #elif _URP
	               Light light = GetMainLight();
	               lightDir = light.direction;
	               color = light.color;
               #endif
            }



            

            

            #ifdef unity_WorldToObject
#undef unity_WorldToObject
#endif
#ifdef unity_ObjectToWorld
#undef unity_ObjectToWorld
#endif
#define unity_ObjectToWorld GetObjectToWorldMatrix()
#define unity_WorldToObject GetWorldToObjectMatrix()

	float SGT_ScatteringPhase(float angle, float4 terms, float4 strengths)
	{
		return dot(pow(saturate(angle * sign(terms)), abs(terms)), strengths);
	}

	float4 SGT_SphereShadowColor(float4x4 shadowMatrix, float4 shadowPower, float4 worldPoint)
	{
		float4 shadowPoint = mul(shadowMatrix, worldPoint);
		float  shadowMag   = length(shadowPoint.xy);

		//shadowMag = 1.0f - (1.0f - shadowMag) * shadowRatio;

		//float4 shadow = 1.0f - pow(1.0f - shadowMag, shadowPower);
		float4 shadow = pow(shadowMag, shadowPower);

		shadow += shadowPoint.z < 0.0f;

		return saturate(shadow);
	}

	float4 SGT_RingShadowColor(float4x4 shadowMatrix, sampler2D shadowSampler, float shadowRatio, float4 worldPoint)
	{
		float4 shadowPoint = mul(shadowMatrix, worldPoint);
		float  shadowMag   = length(shadowPoint.xy);

		shadowMag = 1.0f - (1.0f - shadowMag) * shadowRatio;

		float4 shadow = tex2D(shadowSampler, shadowMag.xx);

		shadow += shadowPoint.z < 0.0f;

		return saturate(shadow);
	}

	float4 SGT_ShadowColor(float3 worldPoint3)
	{
		float4 worldPoint = float4(worldPoint3, 1.0f);
		float4 color      = 1.0f;

		for (int s = 0; s < _SGT_SphereShadowCount; s++)
		{
			color *= SGT_SphereShadowColor(_SGT_SphereShadowMatrix[s], _SGT_SphereShadowPower[s], worldPoint);
		}

		for (int r = 0; r < _SGT_RingShadowCount; r++)
		{
			color *= SGT_RingShadowColor(_SGT_RingShadowMatrix[r], _SGT_RingShadowTexture, _SGT_RingShadowRatio[r], worldPoint);
		}

		return color;
	}


	float4 SGT_O2W(float4 v)
	{
		v = mul(GetObjectToWorldMatrix(), v);
		#if _HDRP
			v.xyz = GetAbsolutePositionWS(v.xyz);
		#endif
		return v;
	}
	float4 SGT_W2O(float4 v)
	{
		#if _HDRP
			v.xyz = GetCameraRelativePositionWS(v.xyz);
		#endif
		return mul(GetWorldToObjectMatrix(), v);
	}

	float4 SGT_O2V(float4 v)
	{
		#if _STANDARD
			return float4(UnityObjectToViewPos(v.xyz), 1.0f);
		#else
			return float4(TransformWorldToView(TransformObjectToWorld(v.xyz)), 1.0f);
		#endif
	}
	float4 SGT_V2O(float4 v)
	{
		return mul(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V), v);
	}

	float4 SGT_W2V(float4 v)
	{
		#if _STANDARD
			return mul(GetWorldToViewMatrix(), v);
		#else
			return float4(TransformWorldToView(v.xyz), 1.0f);
		#endif
	}
	float4 SGT_V2M(float4 v)
	{
		v = mul(UNITY_MATRIX_I_V, v);
		#if _HDRP
			v.xyz = GetAbsolutePositionWS(v.xyz);
		#endif
		return v;
	}

	float4 SGT_W2P(float4 v)
	{
		#if _HDRP
			v.xyz = GetCameraRelativePositionWS(v.xyz);
		#endif
		#if _STANDARD
			return mul(GetWorldToHClipMatrix(), v);
		#else
			return TransformWorldToHClip(v.xyz);
		#endif
	}


	float4 SGT_ModifyUnlitOutput(float4 finalColor)
	{
		#if _HDRP
			finalColor.xyz *= 25000.0f;
		#endif
		return finalColor;
	}

	void SGT_OutputWithoutAlpha(inout Surface o, float4 finalColor)
	{
		#if _HDRP
			o.Emission = finalColor.xyz;
			o.Albedo   = 0.0f;
		#elif _URP
			o.Emission = finalColor.xyz;
			o.Albedo   = finalColor.xyz;
		#else
			o.Albedo = finalColor.xyz;
		#endif
	}

	void SGT_OutputWithAlpha(inout Surface o, float4 finalColor)
	{
		SGT_OutputWithoutAlpha(o, finalColor);

		o.Alpha = finalColor.w;
	}


	float SGT_GetOutsideDistance(float3 ray, float3 rayD)
	{
		float B = dot(ray, rayD);
		float C = dot(ray, ray) - 1.0f;
		float D = B * B - C;
		return -B - sqrt(max(D, 0.0f));
	}

	float SGT_GetOutsideDistance2(float3 ray, float3 rayD)
	{
		float B = dot(ray, rayD);
		float C = dot(ray, ray) - 1.0f;
		float D = B * B - C;
		return max(-B - sqrt(max(D, 0.0f)), 0.0f);
	}

	float3 SGT_GetNear(float3 far)
	{
		float3 wcam = _WorldSpaceCameraPos;
		float3 near = mul(_SGT_WorldToLocal, float4(wcam, 1.0f)).xyz;
		float3 dir  = normalize(far - near);

		return near + dir * SGT_GetOutsideDistance2(near, dir);
	}

	void ModifyInnerVertex(inout VertexData v, inout ExtraV2F e)
	{
		#if __SGT_MATRIX
			float3 wcam = _WorldSpaceCameraPos;
			float4 wpos = SGT_O2W(v.vertex);
			float3 far  = mul(_SGT_WorldToLocal, wpos).xyz;
			float3 near = mul(_SGT_WorldToLocal, float4(wcam, 1.0f)).xyz;

			float3 nearFar = far - near;
			float3 dir     = normalize(nearFar);
			float  depthA  = length(nearFar);
			float  depthB  = SGT_GetOutsideDistance(near, dir);
			near += dir * max(depthB, 0.0f);
			float depth = length(near - far);

			v.texcoord0.x   = depth * _SGT_HorizonLengthRecip;
			v.texcoord0.y   = (length(far) - _SGT_InnerRatio) * _SGT_InnerScale; // Altitude
			v.texcoord1.xyz = mul((float3x3)_SGT_LocalToWorld, near);
		#endif
	}

	void ModifyOuterVertex(inout VertexData v, inout ExtraV2F e)
	{
		#if __SGT_MATRIX
			float4 wPos = SGT_O2W(v.vertex);
			float3 far  = mul(_SGT_WorldToLocal, wPos).xyz;
			float3 near = SGT_GetNear(far);

			v.texcoord0.xy = length(near - far) * _SGT_HorizonLengthRecip;

			#if _SGT_SOFTNESS
				v.texcoord1.z = -SGT_O2V(v.vertex).z;
			#endif

			v.texcoord2.xyz = mul((float3x3)_SGT_LocalToWorld, near);
		#endif
	}

	void Ext_ModifyVertex0 (inout VertexData v, inout ExtraV2F e)
	{
		#if _SGT_OUTER
			ModifyOuterVertex(v, e);
		#else
			ModifyInnerVertex(v, e);
		#endif
	}

	void SurfaceInnerFunction(inout Surface o, inout ShaderData d)
	{
		#if __SGT_OUTPUT
			float4 depth = tex2D(_SGT_InnerDepthTex, d.texcoord0.xx);
			float4 main  = depth * _SGT_Color;
			float3 wcam  = _WorldSpaceCameraPos;
			float3 wnorm = normalize(d.texcoord1.xyz);

			main.rgb *= _SGT_Brightness;
			main.a   *= smoothstep(1.0f, 0.0f, saturate(d.texcoord0.y));

			float4 finalColor = main;

			#if __SGT_LIGHTANDSHADOW
				#if _SGT_LIGHTING
					finalColor.rgb *= _SGT_AmbientColor;

					float4 lighting   = 0.0f;
					float4 scattering = 0.0f;

					for (int i = 0; i < _SGT_LightCount; i++)
					{
						float theta = dot(wnorm, _SGT_LightDirection[i]) * 0.5f + 0.5f;

						lighting += tex2D(_SGT_LightingTex, theta) * main * _SGT_LightColor[i];

						#if _SGT_SCATTERING
							float3 worldViewDir  = normalize(d.worldSpacePosition - wcam);
							float3 worldLightDir = normalize(_SGT_LightPosition[i].xyz - wcam);
							float  angle         = dot(worldViewDir, worldLightDir);
							float  phase         = SGT_ScatteringPhase(angle, _SGT_ScatteringTerms, _SGT_ScatteringInner);

							scattering += tex2D(_SGT_ScatteringTex, theta) * _SGT_LightColor[i] * phase;
						#endif
					}

					#if _SGT_SCATTERING
						#if _SGT_HDR || _HDRP
							scattering *= main;
							lighting.xyz += scattering.xyz;
						#else
							scattering *= finalColor.a; // Fade scattering out according to optical depth
							scattering *= saturate(1.0f - (finalColor + lighting)); // Only scatter into remaining rgba
							lighting += scattering;
						#endif
					#endif

					finalColor += lighting * saturate(SGT_ShadowColor(d.worldSpacePosition) + finalColor.a * 0.5f);
					//finalColor += lighting * lerp(SGT_ShadowColor(d.worldSpacePosition), 1.0f, finalColor.a);
					finalColor.a = saturate(finalColor.a);
				#else
					finalColor = SGT_ModifyUnlitOutput(finalColor);
				#endif
			#endif

			SGT_OutputWithAlpha(o, finalColor);
		#endif
	}

	void SurfaceOuterFunction(inout Surface o, inout ShaderData d)
	{
		#if __SGT_OUTPUT
			float4 depth = tex2D(_SGT_OuterDepthTex, d.texcoord0.xx); depth.a = saturate(depth.a + (1.0f - depth.a) * _SGT_Sky);
			float4 main  = depth * _SGT_Color;
			float3 wcam  = _WorldSpaceCameraPos;
			float3 wnorm = normalize(d.texcoord2.xyz);

			main.rgb *= _SGT_Brightness;

			#if _SGT_SOFTNESS
				float sceneZ = GetLinearEyeDepth(d.screenUV);
				float partZ = d.texcoord1.z;

				main.a *= smoothstep(0.0f, 1.0f, _SGT_SoftParticlesFactor * abs(sceneZ - partZ));
			#endif

			float4 finalColor = main;

			#if __SGT_LIGHTANDSHADOW
				#if _SGT_LIGHTING
					finalColor.rgb *= _SGT_AmbientColor;

					float4 lighting   = 0.0f;
					float4 scattering = 0.0f;

					for (int i = 0; i < _SGT_LightCount; i++)
					{
						float theta = dot(wnorm, _SGT_LightDirection[i]) * 0.5f + 0.5f;

						lighting += tex2D(_SGT_LightingTex, theta) * main * _SGT_LightColor[i];

						#if _SGT_SCATTERING
							float3 worldViewDir  = normalize(d.worldSpacePosition - wcam);
							float3 worldLightDir = normalize(_SGT_LightPosition[i].xyz - wcam);
							float  angle         = dot(worldViewDir, worldLightDir);
							float  phase         = SGT_ScatteringPhase(angle, _SGT_ScatteringTerms, _SGT_ScatteringOuter);

							scattering += tex2D(_SGT_ScatteringTex, theta) * _SGT_LightColor[i] * phase;
						#endif
					}

					#if _SGT_SCATTERING
						#if _SGT_HDR || _HDRP
							scattering *= main;
							lighting.xyz += scattering.xyz;
						#else
							scattering *= finalColor.a; // Fade scattering out according to optical depth
							scattering *= saturate(1.0f - (finalColor + lighting)); // Only scatter into remaining rgba
							lighting += scattering;
						#endif
					#endif

					finalColor += lighting * SGT_ShadowColor(d.worldSpacePosition);
					finalColor.a = saturate(main.a);
				#else
					finalColor = SGT_ModifyUnlitOutput(finalColor);
				#endif
			#endif

			SGT_OutputWithAlpha(o, finalColor);
		#endif
	}

	void Ext_SurfaceFunction0 (inout Surface o, inout ShaderData d)
	{
		#if _SGT_OUTER
			SurfaceOuterFunction(o, d);
		#else
			SurfaceInnerFunction(o, d);
		#endif
	}







        
            void ChainSurfaceFunction(inout Surface l, inout ShaderData d)
            {
                  Ext_SurfaceFunction0(l, d);
                 // Ext_SurfaceFunction1(l, d);
                 // Ext_SurfaceFunction2(l, d);
                 // Ext_SurfaceFunction3(l, d);
                 // Ext_SurfaceFunction4(l, d);
                 // Ext_SurfaceFunction5(l, d);
                 // Ext_SurfaceFunction6(l, d);
                 // Ext_SurfaceFunction7(l, d);
                 // Ext_SurfaceFunction8(l, d);
                 // Ext_SurfaceFunction9(l, d);
		           // Ext_SurfaceFunction10(l, d);
                 // Ext_SurfaceFunction11(l, d);
                 // Ext_SurfaceFunction12(l, d);
                 // Ext_SurfaceFunction13(l, d);
                 // Ext_SurfaceFunction14(l, d);
                 // Ext_SurfaceFunction15(l, d);
                 // Ext_SurfaceFunction16(l, d);
                 // Ext_SurfaceFunction17(l, d);
                 // Ext_SurfaceFunction18(l, d);
		           // Ext_SurfaceFunction19(l, d);
                 // Ext_SurfaceFunction20(l, d);
                 // Ext_SurfaceFunction21(l, d);
                 // Ext_SurfaceFunction22(l, d);
                 // Ext_SurfaceFunction23(l, d);
                 // Ext_SurfaceFunction24(l, d);
                 // Ext_SurfaceFunction25(l, d);
                 // Ext_SurfaceFunction26(l, d);
                 // Ext_SurfaceFunction27(l, d);
                 // Ext_SurfaceFunction28(l, d);
		           // Ext_SurfaceFunction29(l, d);
            }

            void ChainModifyVertex(inout VertexData v, inout VertexToPixel v2p, float4 time)
            {
                 ExtraV2F d;
                 
                 ZERO_INITIALIZE(ExtraV2F, d);
                 ZERO_INITIALIZE(Blackboard, d.blackboard);
                 // due to motion vectors in HDRP, we need to use the last
                 // time in certain spots. So if you are going to use _Time to adjust vertices,
                 // you need to use this time or motion vectors will break. 
                 d.time = time;

                   Ext_ModifyVertex0(v, d);
                 // Ext_ModifyVertex1(v, d);
                 // Ext_ModifyVertex2(v, d);
                 // Ext_ModifyVertex3(v, d);
                 // Ext_ModifyVertex4(v, d);
                 // Ext_ModifyVertex5(v, d);
                 // Ext_ModifyVertex6(v, d);
                 // Ext_ModifyVertex7(v, d);
                 // Ext_ModifyVertex8(v, d);
                 // Ext_ModifyVertex9(v, d);
                 // Ext_ModifyVertex10(v, d);
                 // Ext_ModifyVertex11(v, d);
                 // Ext_ModifyVertex12(v, d);
                 // Ext_ModifyVertex13(v, d);
                 // Ext_ModifyVertex14(v, d);
                 // Ext_ModifyVertex15(v, d);
                 // Ext_ModifyVertex16(v, d);
                 // Ext_ModifyVertex17(v, d);
                 // Ext_ModifyVertex18(v, d);
                 // Ext_ModifyVertex19(v, d);
                 // Ext_ModifyVertex20(v, d);
                 // Ext_ModifyVertex21(v, d);
                 // Ext_ModifyVertex22(v, d);
                 // Ext_ModifyVertex23(v, d);
                 // Ext_ModifyVertex24(v, d);
                 // Ext_ModifyVertex25(v, d);
                 // Ext_ModifyVertex26(v, d);
                 // Ext_ModifyVertex27(v, d);
                 // Ext_ModifyVertex28(v, d);
                 // Ext_ModifyVertex29(v, d);


                 // #if %EXTRAV2F0REQUIREKEY%
                 // v2p.extraV2F0 = d.extraV2F0;
                 // #endif

                 // #if %EXTRAV2F1REQUIREKEY%
                 // v2p.extraV2F1 = d.extraV2F1;
                 // #endif

                 // #if %EXTRAV2F2REQUIREKEY%
                 // v2p.extraV2F2 = d.extraV2F2;
                 // #endif

                 // #if %EXTRAV2F3REQUIREKEY%
                 // v2p.extraV2F3 = d.extraV2F3;
                 // #endif

                 // #if %EXTRAV2F4REQUIREKEY%
                 // v2p.extraV2F4 = d.extraV2F4;
                 // #endif

                 // #if %EXTRAV2F5REQUIREKEY%
                 // v2p.extraV2F5 = d.extraV2F5;
                 // #endif

                 // #if %EXTRAV2F6REQUIREKEY%
                 // v2p.extraV2F6 = d.extraV2F6;
                 // #endif

                 // #if %EXTRAV2F7REQUIREKEY%
                 // v2p.extraV2F7 = d.extraV2F7;
                 // #endif
            }

            void ChainModifyTessellatedVertex(inout VertexData v, inout VertexToPixel v2p)
            {
               ExtraV2F d;
               ZERO_INITIALIZE(ExtraV2F, d);
               ZERO_INITIALIZE(Blackboard, d.blackboard);

               // #if %EXTRAV2F0REQUIREKEY%
               // d.extraV2F0 = v2p.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // d.extraV2F1 = v2p.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // d.extraV2F2 = v2p.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // d.extraV2F3 = v2p.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // d.extraV2F4 = v2p.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // d.extraV2F5 = v2p.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // d.extraV2F6 = v2p.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // d.extraV2F7 = v2p.extraV2F7;
               // #endif


               // Ext_ModifyTessellatedVertex0(v, d);
               // Ext_ModifyTessellatedVertex1(v, d);
               // Ext_ModifyTessellatedVertex2(v, d);
               // Ext_ModifyTessellatedVertex3(v, d);
               // Ext_ModifyTessellatedVertex4(v, d);
               // Ext_ModifyTessellatedVertex5(v, d);
               // Ext_ModifyTessellatedVertex6(v, d);
               // Ext_ModifyTessellatedVertex7(v, d);
               // Ext_ModifyTessellatedVertex8(v, d);
               // Ext_ModifyTessellatedVertex9(v, d);
               // Ext_ModifyTessellatedVertex10(v, d);
               // Ext_ModifyTessellatedVertex11(v, d);
               // Ext_ModifyTessellatedVertex12(v, d);
               // Ext_ModifyTessellatedVertex13(v, d);
               // Ext_ModifyTessellatedVertex14(v, d);
               // Ext_ModifyTessellatedVertex15(v, d);
               // Ext_ModifyTessellatedVertex16(v, d);
               // Ext_ModifyTessellatedVertex17(v, d);
               // Ext_ModifyTessellatedVertex18(v, d);
               // Ext_ModifyTessellatedVertex19(v, d);
               // Ext_ModifyTessellatedVertex20(v, d);
               // Ext_ModifyTessellatedVertex21(v, d);
               // Ext_ModifyTessellatedVertex22(v, d);
               // Ext_ModifyTessellatedVertex23(v, d);
               // Ext_ModifyTessellatedVertex24(v, d);
               // Ext_ModifyTessellatedVertex25(v, d);
               // Ext_ModifyTessellatedVertex26(v, d);
               // Ext_ModifyTessellatedVertex27(v, d);
               // Ext_ModifyTessellatedVertex28(v, d);
               // Ext_ModifyTessellatedVertex29(v, d);

               // #if %EXTRAV2F0REQUIREKEY%
               // v2p.extraV2F0 = d.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // v2p.extraV2F1 = d.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // v2p.extraV2F2 = d.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // v2p.extraV2F3 = d.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // v2p.extraV2F4 = d.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // v2p.extraV2F5 = d.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // v2p.extraV2F6 = d.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // v2p.extraV2F7 = d.extraV2F7;
               // #endif
            }

            void ChainFinalColorForward(inout Surface l, inout ShaderData d, inout half4 color)
            {
               //   Ext_FinalColorForward0(l, d, color);
               //   Ext_FinalColorForward1(l, d, color);
               //   Ext_FinalColorForward2(l, d, color);
               //   Ext_FinalColorForward3(l, d, color);
               //   Ext_FinalColorForward4(l, d, color);
               //   Ext_FinalColorForward5(l, d, color);
               //   Ext_FinalColorForward6(l, d, color);
               //   Ext_FinalColorForward7(l, d, color);
               //   Ext_FinalColorForward8(l, d, color);
               //   Ext_FinalColorForward9(l, d, color);
               //  Ext_FinalColorForward10(l, d, color);
               //  Ext_FinalColorForward11(l, d, color);
               //  Ext_FinalColorForward12(l, d, color);
               //  Ext_FinalColorForward13(l, d, color);
               //  Ext_FinalColorForward14(l, d, color);
               //  Ext_FinalColorForward15(l, d, color);
               //  Ext_FinalColorForward16(l, d, color);
               //  Ext_FinalColorForward17(l, d, color);
               //  Ext_FinalColorForward18(l, d, color);
               //  Ext_FinalColorForward19(l, d, color);
               //  Ext_FinalColorForward20(l, d, color);
               //  Ext_FinalColorForward21(l, d, color);
               //  Ext_FinalColorForward22(l, d, color);
               //  Ext_FinalColorForward23(l, d, color);
               //  Ext_FinalColorForward24(l, d, color);
               //  Ext_FinalColorForward25(l, d, color);
               //  Ext_FinalColorForward26(l, d, color);
               //  Ext_FinalColorForward27(l, d, color);
               //  Ext_FinalColorForward28(l, d, color);
               //  Ext_FinalColorForward29(l, d, color);
            }

            void ChainFinalGBufferStandard(inout Surface s, inout ShaderData d, inout half4 GBuffer0, inout half4 GBuffer1, inout half4 GBuffer2, inout half4 outEmission, inout half4 outShadowMask)
            {
               //   Ext_FinalGBufferStandard0(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard1(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard2(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard3(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard4(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard5(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard6(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard7(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard8(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard9(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard10(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard11(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard12(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard13(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard14(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard15(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard16(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard17(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard18(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard19(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard20(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard21(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard22(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard23(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard24(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard25(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard26(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard27(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard28(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard29(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
            }



            

         ShaderData CreateShaderData(VertexToPixel i
                  #if NEED_FACING
                     , bool facing
                  #endif
         )
         {
            ShaderData d = (ShaderData)0;
            d.clipPos = i.pos;
            d.worldSpacePosition = i.worldPos;

            d.worldSpaceNormal = normalize(i.worldNormal);
            d.worldSpaceTangent = normalize(i.worldTangent.xyz);
            d.tangentSign = i.worldTangent.w;
            float3 bitangent = cross(i.worldTangent.xyz, i.worldNormal) * d.tangentSign * -1;
            

            d.TBNMatrix = float3x3(d.worldSpaceTangent, bitangent, d.worldSpaceNormal);
            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - i.worldPos);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);
             d.texcoord0 = i.texcoord0;
             d.texcoord1 = i.texcoord1;
             d.texcoord2 = i.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
            // d.texcoord3 = i.texcoord3;
            // #endif

            // d.isFrontFace = facing;
            // #if %VERTEXCOLORREQUIREKEY%
            // d.vertexColor = i.vertexColor;
            // #endif

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(unity_WorldToObject, float4(GetCameraRelativePositionWS(i.worldPos), 1)).xyz;
            #else
                // d.localSpacePosition = mul(unity_WorldToObject, float4(i.worldPos, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)unity_WorldToObject, i.worldNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)unity_WorldToObject, i.worldTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
             d.screenPos = i.screenPos;
             d.screenUV = (i.screenPos.xy / i.screenPos.w);
            // #endif


            // #if %EXTRAV2F0REQUIREKEY%
            // d.extraV2F0 = i.extraV2F0;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
            // d.extraV2F1 = i.extraV2F1;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
            // d.extraV2F2 = i.extraV2F2;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
            // d.extraV2F3 = i.extraV2F3;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // d.extraV2F4 = i.extraV2F4;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // d.extraV2F5 = i.extraV2F5;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // d.extraV2F6 = i.extraV2F6;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // d.extraV2F7 = i.extraV2F7;
            // #endif

            return d;
         }
         

            

#if (SHADERPASS == SHADERPASS_LIGHT_TRANSPORT)

   // This was not in constant buffer in original unity, so keep outiside. But should be in as ShaderRenderPass frequency
   float unity_OneOverOutputBoost;
   float unity_MaxOutputValue;

   CBUFFER_START(UnityMetaPass)
   // x = use uv1 as raster position
   // y = use uv2 as raster position
   bool4 unity_MetaVertexControl;

   // x = return albedo
   // y = return normal
   bool4 unity_MetaFragmentControl;
   CBUFFER_END

   VertexToPixel Vert(VertexData inputMesh)
   {
       VertexToPixel output;
       ZERO_INITIALIZE(VertexToPixel, output);
       UNITY_SETUP_INSTANCE_ID(inputMesh);
       UNITY_TRANSFER_INSTANCE_ID(inputMesh, output);
       UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

       // Output UV coordinate in vertex shader
       float2 uv = float2(0.0, 0.0);

       if (unity_MetaVertexControl.x)
       {
           uv = inputMesh.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
       }
       else if (unity_MetaVertexControl.y)
       {
           uv = inputMesh.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
       }

       // OpenGL right now needs to actually use the incoming vertex position
       // so we create a fake dependency on it here that haven't any impact.
       output.pos = float4(uv * 2.0 - 1.0, inputMesh.vertex.z > 0 ? 1.0e-4 : 0.0, 1.0);

       output.worldPos = TransformObjectToWorld(inputMesh.vertex.xyz).xyz;

       // Normal is required for triplanar mapping
       output.worldNormal = TransformObjectToWorldNormal(inputMesh.normal);
       // Not required but assign to silent compiler warning
       output.worldTangent = float4(1.0, 0.0, 0.0, 0.0);

       output.texcoord0 = inputMesh.texcoord0;
       output.texcoord1 = inputMesh.texcoord1;
       output.texcoord2 = inputMesh.texcoord2;
       // #if %TEXCOORD3REQUIREKEY%
       // output.texcoord3 = inputMesh.texcoord3;
       // #endif
       // #if %VERTEXCOLORREQUIREKEY%
       // output.vertexColor = inputMesh.vertexColor;
       // #endif

       return output;
   }
#else

   #if (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
      #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariablesMatrixDefsHDCamera.hlsl"

      void MotionVectorPositionZBias(VertexToPixel input)
      {
      #if UNITY_REVERSED_Z
          input.pos.z -= unity_MotionVectorsParams.z * input.pos.w;
      #else
          input.pos.z += unity_MotionVectorsParams.z * input.pos.w;
      #endif
      }

   #endif

   VertexToPixel Vert(VertexData input)
   {
       VertexToPixel output;
       ZERO_INITIALIZE(VertexToPixel, output);

       UNITY_SETUP_INSTANCE_ID(input);
       UNITY_TRANSFER_INSTANCE_ID(input, output);
       UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

       #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
         VertexData previousMesh = input;
       #endif

       ChainModifyVertex(input, output, _Time);

       // This return the camera relative position (if enable)
       float3 positionRWS = TransformObjectToWorld(input.vertex.xyz);
       float3 normalWS = TransformObjectToWorldNormal(input.normal);
       float4 tangentWS = float4(TransformObjectToWorldDir(input.tangent.xyz), input.tangent.w);


       output.worldPos = GetAbsolutePositionWS(positionRWS);
       output.pos = TransformWorldToHClip(positionRWS);
       output.worldNormal = normalWS;
       output.worldTangent = tangentWS;


       output.texcoord0 = input.texcoord0;
       output.texcoord1 = input.texcoord1;
       output.texcoord2 = input.texcoord2;

       // #if %TEXCOORD3REQUIREKEY%
       // output.texcoord3 = input.texcoord3;
       // #endif

       // #if %VERTEXCOLORREQUIREKEY%
       // output.vertexColor = input.vertexColor;
       // #endif

       // #if %SCREENPOSREQUIREKEY%
        output.screenPos = ComputeScreenPos(output.pos, _ProjectionParams.x);
       // #endif
   
       #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))

          #if !defined(TESSELLATION_ON)
            MotionVectorPositionZBias(output);
          #endif

          output.motionVectorCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(positionRWS.xyz, 1.0));
          // Note: unity_MotionVectorsParams.y is 0 is forceNoMotion is enabled
          bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
          if (forceNoMotion)
          {
              output.previousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
          }
          else
          {
            bool hasDeformation = unity_MotionVectorsParams.x > 0.0; // Skin or morph target

            float3 effectivePositionOS = (hasDeformation ? previousMesh.previousPositionOS : previousMesh.vertex.xyz);
            #if defined(_ADD_PRECOMPUTED_VELOCITY)
               effectivePositionOS -= input.precomputedVelocity;
            #endif

            previousMesh.vertex = float4(effectivePositionOS, 1);
            VertexToPixel dummy = (VertexToPixel)0;
            

            ChainModifyVertex(previousMesh, dummy, _LastTimeParameters);

            // we might need this for skinned objects?
            //float3 normalWS = TransformPreviousObjectToWorldNormal(input.normal).xyz;
            float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.vertex.xyz);

            #ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
            if (_TransparentCameraOnlyMotionVectors > 0)
            {
               previousPositionRWS = positionRWS.xyz;
            }
            #endif // _WRITE_TRANSPARENT_MOTION_VECTOR

            output.previousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
         }
       #endif // _HDRP && _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))


       return output;
   }


#endif



            

            

               #if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
                  #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalPrepassBuffer.hlsl"
               #endif

                FragInputs BuildFragInputs(VertexToPixel input)
                {
                    UNITY_SETUP_INSTANCE_ID(input);
                    FragInputs output;
                    ZERO_INITIALIZE(FragInputs, output);
            
                    // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                    // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                    // to compute normals which are then passed on elsewhere to compute other values...
                    output.tangentToWorld = k_identity3x3;
                    output.positionSS = input.pos;       // input.positionCS is SV_Position
                    // BETTER SHADERS: because we transform world position into actual world space for things like
                    // triplanar, etc, we have to back transform it here for lighting
                    output.positionRWS = GetCameraRelativePositionWS(input.worldPos);
                    output.tangentToWorld = BuildTangentToWorld(input.worldTangent, input.worldNormal);
                    output.texCoord0 = input.texcoord0;
                    output.texCoord1 = input.texcoord1;
                    output.texCoord2 = input.texcoord2;
            
                    return output;
                }
            
               void BuildSurfaceData(FragInputs fragInputs, inout Surface surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
               {
                   // setup defaults -- these are used if the graph doesn't output a value
                   ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                   // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                   // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                   surfaceData.specularOcclusion = 1.0;

                   // copy across graph values, if defined
                   surfaceData.baseColor =                 surfaceDescription.Albedo;
                   surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                   surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                   surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                   surfaceData.metallic =                  surfaceDescription.Metallic;
                   surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                   surfaceData.thickness =                 surfaceDescription.Thickness;
                   surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                   #if _USESPECULAR
                      surfaceData.specularColor =             surfaceDescription.Specular;
                   #endif
                   surfaceData.coatMask =                  surfaceDescription.CoatMask;
                   surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                   surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                   surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;



                   #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                        if (_EnableSSRefraction)
                        {
                            surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                            surfaceDescription.Alpha = 1.0;
                        }
                        else
                        {
                            surfaceData.ior = 1.0;
                            surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                            surfaceData.atDistance = 1.0;
                            surfaceData.transmittanceMask = 0.0;
                            surfaceDescription.Alpha = 1.0;
                        }
                    #else
                        surfaceData.ior = 1.0;
                        surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                        surfaceData.atDistance = 1.0;
                        surfaceData.transmittanceMask = 0.0;
                    #endif

                    

                    // These static material feature allow compile time optimization
                    surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
                    #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_TRANSMISSION
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_ANISOTROPY
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
                        surfaceData.normalWS = float3(0, 1, 0);
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
                    #endif
                
                    #if defined(_MATERIAL_FEATURE_CLEAR_COAT) || _CLEARCOAT
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
                    #endif
                
                    #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                        // Require to have setup baseColor
                        // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                        surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
                    #endif
                


                   // compute world space normal
                   #if !_WORLDSPACENORMAL
                      surfaceData.normalWS = mul(surfaceDescription.Normal, fragInputs.tangentToWorld);
                   #else
                      surfaceData.normalWS = surfaceDescription.Normal;
                   #endif

                   surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                   surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT

         
                    #if HAVE_DECALS
                        if (_EnableDecals)
                        {
                            float alpha = 1.0;
                            alpha = surfaceDescription.Alpha;
                
                            // Both uses and modifies 'surfaceData.normalWS'.
                            DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], alpha);
                            ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
                        }
                    #endif
                
                    bentNormalWS = surfaceData.normalWS;
                
                    surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
                
                    #ifdef DEBUG_DISPLAY
                        if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                        {
                            // TODO: need to update mip info
                            surfaceData.metallic = 0;
                        }
                
                        // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                        // as it can modify attribute use for static lighting
                        ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
                    #endif
                
                    // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                    // If user provide bent normal then we process a better term
                    #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                        // Just use the value passed through via the slot (not active otherwise)
                    #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                        // If we have bent normal and ambient occlusion, process a specular occlusion
                        surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                    #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                        surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                    #endif
                
                    #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                        surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
                    #endif
               }
        
               void GetSurfaceAndBuiltinData(VertexToPixel m2ps, FragInputs fragInputs, float3 V, inout PositionInputs posInput,
                     out SurfaceData surfaceData, out BuiltinData builtinData, inout Surface l, inout ShaderData d
                     #if NEED_FACING
                        , bool facing
                     #endif
                  )
               {
                 // Removed since crossfade does not work, probably needs extra material setup.   
                 //#if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                 //   #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                 //      LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                 //   #endif
                 //#endif

                 d = CreateShaderData(m2ps
                    #if NEED_FACING
                       , facing
                    #endif
                 );

                 l = (Surface)0;

                 l.Albedo = half3(0.5, 0.5, 0.5);
                 l.Normal = float3(0,0,1);
                 l.Occlusion = 1;
                 l.Alpha = 1;
                 l.SpecularOcclusion = 1;

                 #if !defined(SHADER_STAGE_RAY_TRACING) && defined(_DEPTHOFFSET_ON)
                    l.outputDepth = d.clipPos.z;
                 #endif

                 ChainSurfaceFunction(l, d);

                 #if !defined(SHADER_STAGE_RAY_TRACING) && defined(_DEPTHOFFSET_ON)
                    //posInput.deviceDepth = l.outputDepth;
                 #endif

                 #if _UNLIT
                     //l.Emission = l.Albedo;
                     //l.Albedo = 0;
                     l.Normal = half3(0,0,1);
                     l.Occlusion = 1;
                     l.Metallic = 0;
                     l.Specular = 0;
                 #endif

                 surfaceData.geomNormalWS = d.worldSpaceNormal;
                 surfaceData.tangentWS = d.worldSpaceTangent;
                 fragInputs.tangentToWorld = d.TBNMatrix;

                 float3 bentNormalWS;
                 BuildSurfaceData(fragInputs, l, V, posInput, surfaceData, bentNormalWS);


                 InitBuiltinData(posInput, l.Alpha, bentNormalWS, -d.worldSpaceNormal, fragInputs.texCoord1, fragInputs.texCoord2, builtinData);

                 

                 builtinData.emissiveColor = l.Emission;

                 #if defined(_OVERRIDE_BAKEDGI)
                    builtinData.bakeDiffuseLighting = l.DiffuseGI;
                    builtinData.backBakeDiffuseLighting = l.BackDiffuseGI;
                    builtinData.emissiveColor += l.SpecularGI;
                 #endif

                 #if defined(_OVERRIDE_SHADOWMASK)
                    builtinData.shadowMask0 = l.ShadowMask.x;
                    builtinData.shadowMask1 = l.ShadowMask.y;
                    builtinData.shadowMask2 = l.ShadowMask.z;
                    builtinData.shadowMask3 = l.ShadowMask.w;
                 #endif

                  #ifdef UNITY_VIRTUAL_TEXTURING
                     builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                  #endif

                  #if (SHADERPASS == SHADERPASS_DISTORTION)
                     builtinData.distortion = surfaceData.Distortion;
                     builtinData.distortionBlur = surfaceData.DistortionBlur;
                  #endif

                  #ifndef SHADER_UNLIT
                    // PostInitBuiltinData call ApplyDebugToBuiltinData
                    PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                  #else
                    ApplyDebugToBuiltinData(builtinData);
                  #endif
         
                  RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
               }



#if defined(WRITE_DECAL_BUFFER) && defined(WRITE_MSAA_DEPTH)
#define SV_TARGET_NORMAL SV_Target3
#elif defined(WRITE_DECAL_BUFFER) || defined(WRITE_MSAA_DEPTH)
#define SV_TARGET_NORMAL SV_Target2
#else
#define SV_TARGET_NORMAL SV_Target1
#endif

// Caution: Motion vector pass is different from Depth prepass, it render normal buffer last instead of decal buffer last
// and thus, we force a write of 0 if _DISABLE_DECALS so we always write in the decal buffer.
// This is required as we can't make distinction  between deferred (write normal buffer) and forward (write normal buffer)
// in the context of the motion vector pass. The cost is acceptable as it is only do object with motion vector (usualy skin object)
// that most of the time use Forward Material (so are already writing motion vector data).
// So note that here unlike for depth prepass we don't check && !defined(_DISABLE_DECALS)
void Frag(  VertexToPixel v2f
            #ifdef WRITE_MSAA_DEPTH
            // We need the depth color as SV_Target0 for alpha to coverage
            , out float4 depthColor : SV_Target0
            , out float4 outMotionVector : SV_Target1
                #ifdef WRITE_DECAL_BUFFER
                , out float4 outDecalBuffer : SV_Target2
                #endif
            #else
            // When no MSAA, the motion vector is always the first buffer
            , out float4 outMotionVector : SV_Target0
                #ifdef WRITE_DECAL_BUFFER
                , out float4 outDecalBuffer : SV_Target1
                #endif
            #endif

            // Decal buffer must be last as it is bind but we can optionally write into it (based on _DISABLE_DECALS)
            #ifdef WRITE_NORMAL_BUFFER
            , out float4 outNormalBuffer : SV_TARGET_NORMAL
            #endif

            #ifdef _DEPTHOFFSET_ON
            , out float outputDepth : SV_Depth
            #endif
            #if NEED_FACING
               , bool facing : SV_IsFrontFace
            #endif
        )
          {

              FragInputs input = BuildFragInputs(v2f);
              PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

              float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);


              SurfaceData surfaceData;
              BuiltinData builtinData;
              Surface l;
              ShaderData d;
              GetSurfaceAndBuiltinData(v2f, input, V, posInput, surfaceData, builtinData, l, d
               #if NEED_FACING
                  , facing
               #endif
               );

            #ifdef _DEPTHOFFSET_ON
                v2f.motionVectorCS.w += builtinData.depthOffset;
                v2f.previousPositionCS.w += builtinData.depthOffset;
            #endif

             // TODO: How to allow overriden motion vector from GetSurfaceAndBuiltinData ?
             float2 motionVector = CalculateMotionVector(v2f.motionVectorCS, v2f.previousPositionCS);

             // Convert from Clip space (-1..1) to NDC 0..1 space.
             // Note it doesn't mean we don't have negative value, we store negative or positive offset in NDC space.
             // Note: ((positionCS * 0.5 + 0.5) - (v2f.previousPositionCS * 0.5 + 0.5)) = (motionVector * 0.5)
             EncodeMotionVector(motionVector * 0.5, outMotionVector);

             // Note: unity_MotionVectorsParams.y is 0 is forceNoMotion is enabled
             bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;

             // Setting the motionVector to a value more than 2 set as a flag for "force no motion". This is valid because, given that the velocities are in NDC,
             // a value of >1 can never happen naturally, unless explicitely set. 
             if (forceNoMotion)
                 outMotionVector = float4(2.0, 0.0, 0.0, 0.0);

         // Depth and Alpha to coverage
         #ifdef WRITE_MSAA_DEPTH
             // In case we are rendering in MSAA, reading the an MSAA depth buffer is way too expensive. To avoid that, we export the depth to a color buffer
             depthColor = v2f.pos.z;

             #ifdef _ALPHATOMASK_ON
             // Alpha channel is used for alpha to coverage
             depthColor.a = SharpenAlpha(builtinData.opacity, builtinData.alphaClipTreshold);
             #endif
         #endif

         // Normal Buffer Processing
         #ifdef WRITE_NORMAL_BUFFER
             EncodeIntoNormalBuffer(ConvertSurfaceDataToNormalData(surfaceData), outNormalBuffer);
         #endif

         #if defined(WRITE_DECAL_BUFFER)
             DecalPrepassData decalPrepassData;
             // Force a write in decal buffer even if decal is disab. This is a neutral value which have no impact for later pass
             #ifdef _DISABLE_DECALS
             ZERO_INITIALIZE(DecalPrepassData, decalPrepassData);
             #else
             // We don't have the right to access SurfaceData in a shaderpass.
             // However it would be painful to have to add a function like ConvertSurfaceDataToDecalPrepassData() to every Material to return geomNormalWS anyway
             // Here we will put the constrain that any Material requiring to support Decal, will need to have geomNormalWS as member of surfaceData (and we already require normalWS anyway)
             decalPrepassData.geomNormalWS = surfaceData.geomNormalWS;
             decalPrepassData.decalLayerMask = GetMeshRenderingDecalLayer();
             #endif
             EncodeIntoDecalPrepassBuffer(decalPrepassData, outDecalBuffer);
         #endif

         #ifdef _DEPTHOFFSET_ON
             outputDepth = posInput.deviceDepth;
         #endif
          }

            ENDHLSL
        }

      
              Pass
        {
            Name "FullScreenDebug"
            Tags
            {
               "LightMode" = "FullScreenDebug"
            }
    
            // Render State
            Cull Back
            ZTest LEqual
            ZWrite Off
            
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch



            //#pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
            //#pragma shader_feature_local _BLENDMODE_OFF _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
            //#pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
            //#pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            //#pragma shader_feature_local _ _ENABLE_FOG_ON_TRANSPARENT
            //#pragma shader_feature_local _ _DISABLE_DECALS
            //#pragma shader_feature_local _ _DISABLE_SSR
            //#pragma shader_feature_local _ _DISABLE_SSR_TRANSPARENT
            //#pragma shader_feature_local _REFRACTION_OFF _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
                
        

            #define SHADERPASS SHADERPASS_FULL_SCREEN_DEBUG
            #define _PASSFULLSCREENDEBUG 1
            
            
	#define __SGT_LIGHTANDSHADOW 1
	#define SGT_MAX_LIGHTS 16
	#define SGT_MAX_SPHERE_SHADOWS 16
	#define SGT_MAX_RING_SHADOWS 1


	#define __SGT_MATRIX 1


	#define __SGT_OUTPUT 1


	#pragma shader_feature_local _SGT_LIGHTING
	#pragma shader_feature_local _SGT_SCATTERING
	#pragma shader_feature_local _SGT_HDR
	#pragma multi_compile_local _ _SGT_OUTER
	#pragma multi_compile_local _ _SGT_SOFTNESS


    #pragma shader_feature_local DISABLEFOG    


	#pragma shader_feature_local _ADD_PRECOMPUTED_VELOCITY
	#pragma shader_feature_local _TRANSPARENT_WRITES_MOTION_VEC
	#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
	#pragma shader_feature_local _DISABLE_DECALS
	#pragma shader_feature_local _DISABLE_SSR
	#pragma shader_feature_local _DISABLE_SSR_TRANSPARENT
	#pragma shader_feature_local _REFRACTION_OFF _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN         


   #define _HDRP 1
#define _BLENDMODE_ALPHA 1
#define _SURFACE_TYPE_TRANSPARENT 1

#define _UNLIT 1
#define REQUIRE_DEPTH_TEXTURE
#define _USINGTEXCOORD1 1
#define _USINGTEXCOORD2 1


               #pragma vertex Vert
   #pragma fragment Frag

                  // useful conversion functions to make surface shader code just work

      #define UNITY_DECLARE_TEX2D(name) TEXTURE2D(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2D_NOSAMPLER(name) TEXTURE2D(name);
      #define UNITY_DECLARE_TEX2DARRAY(name) TEXTURE2D_ARRAY(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(tex) TEXTURE2D_ARRAY(tex);

      #define UNITY_SAMPLE_TEX2DARRAY(tex,coord)            SAMPLE_TEXTURE2D_ARRAY(tex, sampler##tex, coord.xy, coord.z)
      #define UNITY_SAMPLE_TEX2DARRAY_LOD(tex,coord,lod)    SAMPLE_TEXTURE2D_ARRAY_LOD(tex, sampler##tex, coord.xy, coord.z, lod)
      #define UNITY_SAMPLE_TEX2D(tex, coord)                SAMPLE_TEXTURE2D(tex, sampler##tex, coord)
      #define UNITY_SAMPLE_TEX2D_SAMPLER(tex, samp, coord)  SAMPLE_TEXTURE2D(tex, sampler##samp, coord)

      #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod)   SAMPLE_TEXTURE2D_LOD(tex, sampler_##tex, coord, lod)
      #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) SAMPLE_TEXTURE2D_LOD (tex, sampler##samplertex,coord, lod)

      #if defined(UNITY_COMPILER_HLSL)
         #define UNITY_INITIALIZE_OUTPUT(type,name) name = (type)0;
      #else
         #define UNITY_INITIALIZE_OUTPUT(type,name)
      #endif

      #define sampler2D_float sampler2D
      #define sampler2D_half sampler2D

      #undef WorldNormalVector
      #define WorldNormalVector(data, normal) mul(normal, data.TBNMatrix)

      #define UnityObjectToWorldNormal(normal) mul(GetObjectToWorldMatrix(), normal)




// HDRP Adapter stuff
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl" // Need to be here for Gradient struct definition

            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT 
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
    
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
    



            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
               #define OUTPUT_SPLIT_LIGHTING
            #endif

            #define HAVE_RECURSIVE_RENDERING

            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
               #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                  #define WRITE_NORMAL_BUFFER
               #endif
            #endif

            #ifndef DEBUG_DISPLAY
               // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
               // Don't do it with debug display mode as it is possible there is no depth prepass in this case
               #if !defined(_SURFACE_TYPE_TRANSPARENT) && defined(_ALPHATEST)
                  #if SHADERPASS == SHADERPASS_FORWARD
                  #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                  #elif SHADERPASS == SHADERPASS_GBUFFER
                  #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                  #endif
               #endif
            #endif

            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
               #define _DEFERRED_CAPABLE_MATERIAL
            #endif
    
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
               #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif




            CBUFFER_START(UnityPerMaterial)
               float _UseShadowThreshold;
               float _BlendMode;
               float _EnableBlendModePreserveSpecularLighting;
               float _RayTracing;
               float _RefractionModel;

              
	int    _SGT_LightCount;
	float4 _SGT_LightColor[SGT_MAX_LIGHTS];
	float4 _SGT_LightPosition[SGT_MAX_LIGHTS];
	float3 _SGT_LightDirection[SGT_MAX_LIGHTS];

	int       _SGT_SphereShadowCount;
	float4x4  _SGT_SphereShadowMatrix[SGT_MAX_SPHERE_SHADOWS];
	float4    _SGT_SphereShadowPower[SGT_MAX_SPHERE_SHADOWS];

	int       _SGT_RingShadowCount;
	sampler2D _SGT_RingShadowTexture;
	float4    _SGT_RingShadowColor[SGT_MAX_RING_SHADOWS];
	float4x4  _SGT_RingShadowMatrix[SGT_MAX_RING_SHADOWS];
	float     _SGT_RingShadowRatio[SGT_MAX_RING_SHADOWS];






	float4    _SGT_Color; // Auto
	float     _SGT_Brightness; // Auto
	sampler2D _SGT_InnerDepthTex;
	sampler2D _SGT_OuterDepthTex;

	float     _SGT_HorizonLengthRecip;
	float     _SGT_Sky;
	float4x4  _SGT_WorldToLocal;
	float4x4  _SGT_LocalToWorld;

	sampler2D _SGT_LightingTex;
	float3    _SGT_AmbientColor;

	float4    _SGT_ScatteringTerms;
	float4    _SGT_ScatteringInner;
	float4    _SGT_ScatteringOuter;
	sampler2D _SGT_ScatteringTex;
	float     _SGT_InnerRatio;
	float     _SGT_InnerScale;

	float _SGT_SoftParticlesFactor; // Auto







            CBUFFER_END
    


             // -- Property used by ScenePickingPass
               #ifdef SCENEPICKINGPASS
               float4 _SelectionID;
               #endif
    
               // -- Properties used by SceneSelectionPass
               #ifdef SCENESELECTIONPASS
               int _ObjectId;
               int _PassValue;
               #endif
  
           
            // data across stages, stripped like the above.
            struct VertexToPixel
            {
               float4 pos : SV_POSITION;
               float3 worldPos : TEXCOORD0;
               float3 worldNormal : TEXCOORD1;
               float4 worldTangent : TEXCOORD2;
               float4 texcoord0 : TEXCOORD3;
               float4 texcoord1 : TEXCOORD4;
               float4 texcoord2 : TEXCOORD5;
               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD6;
               // #endif

               // #if %SCREENPOSREQUIREKEY%
                float4 screenPos : TEXCOORD7;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD12;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD13;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD14;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD15;
               // #endif

               #if UNITY_ANY_INSTANCING_ENABLED
                  uint instanceID : INSTANCEID_SEMANTIC;
               #endif // UNITY_ANY_INSTANCING_ENABLED

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float4 previousPositionCS : TEXCOORD16; // Contain previous transform position (in case of skinning for example)
                  float4 motionVectorCS : TEXCOORD17;
               #endif

               UNITY_VERTEX_OUTPUT_STEREO
            }; 


            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
    

            
            
            // data describing the user output of a pixel
            struct Surface
            {
               half3 Albedo;
               half Height;
               half3 Normal;
               half Smoothness;
               half3 Emission;
               half Metallic;
               half3 Specular;
               half Occlusion;
               half SpecularPower; // for simple lighting
               half Alpha;
               float outputDepth; // if written, SV_Depth semantic is used. ShaderData.clipPos.z is unused value
               // HDRP Only
               half SpecularOcclusion;
               half SubsurfaceMask;
               half Thickness;
               half CoatMask;
               half CoatSmoothness;
               half Anisotropy;
               half IridescenceMask;
               half IridescenceThickness;
               int DiffusionProfileHash;
               float SpecularAAThreshold;
               float SpecularAAScreenSpaceVariance;
               // requires _OVERRIDE_BAKEDGI to be defined, but is mapped in all pipelines
               float3 DiffuseGI;
               float3 BackDiffuseGI;
               float3 SpecularGI;
               // requires _OVERRIDE_SHADOWMASK to be defines
               float4 ShadowMask;
            };

            // Data the user declares in blackboard blocks
            struct Blackboard
            {
                
                float blackboardDummyData;
            };

            // data the user might need, this will grow to be big. But easy to strip
            struct ShaderData
            {
               float4 clipPos; // SV_POSITION
               float3 localSpacePosition;
               float3 localSpaceNormal;
               float3 localSpaceTangent;
        
               float3 worldSpacePosition;
               float3 worldSpaceNormal;
               float3 worldSpaceTangent;
               float tangentSign;

               float3 worldSpaceViewDir;
               float3 tangentSpaceViewDir;

               float4 texcoord0;
               float4 texcoord1;
               float4 texcoord2;
               float4 texcoord3;

               float2 screenUV;
               float4 screenPos;

               float4 vertexColor;
               bool isFrontFace;

               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;

               float3x3 TBNMatrix;
               Blackboard blackboard;
            };

            struct VertexData
            {
               #if SHADER_TARGET > 30
               // uint vertexID : SV_VertexID;
               #endif
               float4 vertex : POSITION;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;

               // optimize out mesh coords when not in use by user or lighting system
               #if _URP && (_USINGTEXCOORD1 || _PASSMETA || _PASSFORWARD || _PASSGBUFFER)
                  float4 texcoord1 : TEXCOORD1;
               #endif

               #if _URP && (_USINGTEXCOORD2 || _PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && defined(DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif

               #if _STANDARD && (_USINGTEXCOORD1 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER || _PASSFORWARDADD) && LIGHTMAP_ON)))
                  float4 texcoord1 : TEXCOORD1;
               #endif
               #if _STANDARD && (_USINGTEXCOORD2 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif


               #if _HDRP
                  float4 texcoord1 : TEXCOORD1;
                  float4 texcoord2 : TEXCOORD2;
               #endif

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float3 previousPositionOS : TEXCOORD4; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity    : TEXCOORD5; // Add Precomputed Velocity (Alembic computes velocities on runtime side).
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct TessVertex 
            {
               float4 vertex : INTERNALTESSPOS;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;
               float4 texcoord1 : TEXCOORD1;
               float4 texcoord2 : TEXCOORD2;

               // #if %TEXCOORD3REQUIREKEY%
               // float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
               // float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD5;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD6;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD7;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD12;
               // #endif

               #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
                  float3 previousPositionOS : TEXCOORD13; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity : TEXCOORD14;
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
               UNITY_VERTEX_OUTPUT_STEREO
            };

            struct ExtraV2F
            {
               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;
               Blackboard blackboard;
               float4 time;
            };


            float3 WorldToTangentSpace(ShaderData d, float3 normal)
            {
               return mul(d.TBNMatrix, normal);
            }

            float3 TangentToWorldSpace(ShaderData d, float3 normal)
            {
               return mul(normal, d.TBNMatrix);
            }

            // in this case, make standard more like SRPs, because we can't fix
            // unity_WorldToObject in HDRP, since it already does macro-fu there

            #if _STANDARD
               float3 TransformWorldToObject(float3 p) { return mul(unity_WorldToObject, float4(p, 1)); };
               float3 TransformObjectToWorld(float3 p) { return mul(unity_ObjectToWorld, float4(p, 1)); };
               float4 TransformWorldToObject(float4 p) { return mul(unity_WorldToObject, p); };
               float4 TransformObjectToWorld(float4 p) { return mul(unity_ObjectToWorld, p); };
               float4x4 GetWorldToObjectMatrix() { return unity_WorldToObject; }
               float4x4 GetObjectToWorldMatrix() { return unity_ObjectToWorld; }
               #if (defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (SHADER_TARGET_SURFACE_ANALYSIS && !SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod) tex.SampleLevel (sampler##tex,coord, lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) tex.SampleLevel (sampler##samplertex,coord, lod)
              #else
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord,lod) tex2D (tex,coord,0,lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord,lod) tex2D (tex,coord,0,lod)
              #endif

               #undef GetWorldToObjectMatrix()

               #define GetWorldToObjectMatrix()   unity_WorldToObject


            #endif

            float3 GetCameraWorldPosition()
            {
               #if _HDRP
                  return GetCameraRelativePositionWS(_WorldSpaceCameraPos);
               #else
                  return _WorldSpaceCameraPos;
               #endif
            }

            #if _GRABPASSUSED
               #if _STANDARD
                  TEXTURE2D(%GRABTEXTURE%);
                  SAMPLER(sampler_%GRABTEXTURE%);
               #endif

               half3 GetSceneColor(float2 uv)
               {
                  #if _STANDARD
                     return SAMPLE_TEXTURE2D(%GRABTEXTURE%, sampler_%GRABTEXTURE%, uv).rgb;
                  #else
                     return SHADERGRAPH_SAMPLE_SCENE_COLOR(uv);
                  #endif
               }
            #endif


      
            #if _STANDARD
               UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
               float GetSceneDepth(float2 uv) { return SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv)); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv)); } 
            #else
               float GetSceneDepth(float2 uv) { return SHADERGRAPH_SAMPLE_SCENE_DEPTH(uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv), _ZBufferParams); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv), _ZBufferParams); } 
            #endif

            float3 GetWorldPositionFromDepthBuffer(float2 uv, float3 worldSpaceViewDir)
            {
               float eye = GetLinearEyeDepth(uv);
               float3 camView = mul((float3x3)GetObjectToWorldMatrix(), transpose(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V)) [2].xyz);

               float dt = dot(worldSpaceViewDir, camView);
               float3 div = worldSpaceViewDir/dt;
               float3 wpos = (eye * div) + GetCameraWorldPosition();
               return wpos;
            }

            #if _HDRP
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return GetAbsolutePositionWS(TransformObjectToWorld(pos));
            }
            #else
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return TransformObjectToWorld(pos);
            }
            #endif

            #if _STANDARD
               UNITY_DECLARE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture);
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  float4 depthNorms = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture, uv);
                  float3 norms = DecodeViewNormalStereo(depthNorms);
                  norms = mul((float3x3)GetWorldToViewMatrix(), norms) * 0.5 + 0.5;
                  return norms;
               }
            #elif _HDRP
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  NormalData nd;
                  DecodeFromNormalBuffer(_ScreenSize.xy * uv, nd);
                  return nd.normalWS;
               }
            #elif _URP
               #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                  #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareNormalsTexture.hlsl"
               #endif

               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                     return SampleSceneNormals(uv);
                  #else
                     float3 wpos = GetWorldPositionFromDepthBuffer(uv, worldSpaceViewDir);
                     return normalize(-cross(ddx(wpos), ddy(wpos))) * 0.5 + 0.5;
                  #endif

                }
             #endif

             #if _HDRP

               half3 UnpackNormalmapRGorAG(half4 packednormal)
               {
                     // This do the trick
                  packednormal.x *= packednormal.w;

                  half3 normal;
                  normal.xy = packednormal.xy * 2 - 1;
                  normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                  return normal;
               }
               half3 UnpackNormal(half4 packednormal)
               {
                  #if defined(UNITY_NO_DXT5nm)
                     return packednormal.xyz * 2 - 1;
                  #else
                     return UnpackNormalmapRGorAG(packednormal);
                  #endif
               }
               #endif
               #if _HDRP || _URP

               half3 UnpackScaleNormal(half4 packednormal, half scale)
               {
                 #ifndef UNITY_NO_DXT5nm
                   // Unpack normal as DXT5nm (1, y, 1, x) or BC5 (x, y, 0, 1)
                   // Note neutral texture like "bump" is (0, 0, 1, 1) to work with both plain RGB normal and DXT5nm/BC5
                   packednormal.x *= packednormal.w;
                 #endif
                   half3 normal;
                   normal.xy = (packednormal.xy * 2 - 1) * scale;
                   normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                   return normal;
               }	

             #endif


            void GetSun(out float3 lightDir, out float3 color)
            {
               lightDir = float3(0.5, 0.5, 0);
               color = 1;
               #if _HDRP
                  if (_DirectionalLightCount > 0)
                  {
                     DirectionalLightData light = _DirectionalLightDatas[0];
                     lightDir = -light.forward.xyz;
                     color = light.color;
                  }
               #elif _STANDARD
			         lightDir = normalize(_WorldSpaceLightPos0.xyz);
                  color = _LightColor0.rgb;
               #elif _URP
	               Light light = GetMainLight();
	               lightDir = light.direction;
	               color = light.color;
               #endif
            }



            

            

            #ifdef unity_WorldToObject
#undef unity_WorldToObject
#endif
#ifdef unity_ObjectToWorld
#undef unity_ObjectToWorld
#endif
#define unity_ObjectToWorld GetObjectToWorldMatrix()
#define unity_WorldToObject GetWorldToObjectMatrix()

	float SGT_ScatteringPhase(float angle, float4 terms, float4 strengths)
	{
		return dot(pow(saturate(angle * sign(terms)), abs(terms)), strengths);
	}

	float4 SGT_SphereShadowColor(float4x4 shadowMatrix, float4 shadowPower, float4 worldPoint)
	{
		float4 shadowPoint = mul(shadowMatrix, worldPoint);
		float  shadowMag   = length(shadowPoint.xy);

		//shadowMag = 1.0f - (1.0f - shadowMag) * shadowRatio;

		//float4 shadow = 1.0f - pow(1.0f - shadowMag, shadowPower);
		float4 shadow = pow(shadowMag, shadowPower);

		shadow += shadowPoint.z < 0.0f;

		return saturate(shadow);
	}

	float4 SGT_RingShadowColor(float4x4 shadowMatrix, sampler2D shadowSampler, float shadowRatio, float4 worldPoint)
	{
		float4 shadowPoint = mul(shadowMatrix, worldPoint);
		float  shadowMag   = length(shadowPoint.xy);

		shadowMag = 1.0f - (1.0f - shadowMag) * shadowRatio;

		float4 shadow = tex2D(shadowSampler, shadowMag.xx);

		shadow += shadowPoint.z < 0.0f;

		return saturate(shadow);
	}

	float4 SGT_ShadowColor(float3 worldPoint3)
	{
		float4 worldPoint = float4(worldPoint3, 1.0f);
		float4 color      = 1.0f;

		for (int s = 0; s < _SGT_SphereShadowCount; s++)
		{
			color *= SGT_SphereShadowColor(_SGT_SphereShadowMatrix[s], _SGT_SphereShadowPower[s], worldPoint);
		}

		for (int r = 0; r < _SGT_RingShadowCount; r++)
		{
			color *= SGT_RingShadowColor(_SGT_RingShadowMatrix[r], _SGT_RingShadowTexture, _SGT_RingShadowRatio[r], worldPoint);
		}

		return color;
	}


	float4 SGT_O2W(float4 v)
	{
		v = mul(GetObjectToWorldMatrix(), v);
		#if _HDRP
			v.xyz = GetAbsolutePositionWS(v.xyz);
		#endif
		return v;
	}
	float4 SGT_W2O(float4 v)
	{
		#if _HDRP
			v.xyz = GetCameraRelativePositionWS(v.xyz);
		#endif
		return mul(GetWorldToObjectMatrix(), v);
	}

	float4 SGT_O2V(float4 v)
	{
		#if _STANDARD
			return float4(UnityObjectToViewPos(v.xyz), 1.0f);
		#else
			return float4(TransformWorldToView(TransformObjectToWorld(v.xyz)), 1.0f);
		#endif
	}
	float4 SGT_V2O(float4 v)
	{
		return mul(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V), v);
	}

	float4 SGT_W2V(float4 v)
	{
		#if _STANDARD
			return mul(GetWorldToViewMatrix(), v);
		#else
			return float4(TransformWorldToView(v.xyz), 1.0f);
		#endif
	}
	float4 SGT_V2M(float4 v)
	{
		v = mul(UNITY_MATRIX_I_V, v);
		#if _HDRP
			v.xyz = GetAbsolutePositionWS(v.xyz);
		#endif
		return v;
	}

	float4 SGT_W2P(float4 v)
	{
		#if _HDRP
			v.xyz = GetCameraRelativePositionWS(v.xyz);
		#endif
		#if _STANDARD
			return mul(GetWorldToHClipMatrix(), v);
		#else
			return TransformWorldToHClip(v.xyz);
		#endif
	}


	float4 SGT_ModifyUnlitOutput(float4 finalColor)
	{
		#if _HDRP
			finalColor.xyz *= 25000.0f;
		#endif
		return finalColor;
	}

	void SGT_OutputWithoutAlpha(inout Surface o, float4 finalColor)
	{
		#if _HDRP
			o.Emission = finalColor.xyz;
			o.Albedo   = 0.0f;
		#elif _URP
			o.Emission = finalColor.xyz;
			o.Albedo   = finalColor.xyz;
		#else
			o.Albedo = finalColor.xyz;
		#endif
	}

	void SGT_OutputWithAlpha(inout Surface o, float4 finalColor)
	{
		SGT_OutputWithoutAlpha(o, finalColor);

		o.Alpha = finalColor.w;
	}


	float SGT_GetOutsideDistance(float3 ray, float3 rayD)
	{
		float B = dot(ray, rayD);
		float C = dot(ray, ray) - 1.0f;
		float D = B * B - C;
		return -B - sqrt(max(D, 0.0f));
	}

	float SGT_GetOutsideDistance2(float3 ray, float3 rayD)
	{
		float B = dot(ray, rayD);
		float C = dot(ray, ray) - 1.0f;
		float D = B * B - C;
		return max(-B - sqrt(max(D, 0.0f)), 0.0f);
	}

	float3 SGT_GetNear(float3 far)
	{
		float3 wcam = _WorldSpaceCameraPos;
		float3 near = mul(_SGT_WorldToLocal, float4(wcam, 1.0f)).xyz;
		float3 dir  = normalize(far - near);

		return near + dir * SGT_GetOutsideDistance2(near, dir);
	}

	void ModifyInnerVertex(inout VertexData v, inout ExtraV2F e)
	{
		#if __SGT_MATRIX
			float3 wcam = _WorldSpaceCameraPos;
			float4 wpos = SGT_O2W(v.vertex);
			float3 far  = mul(_SGT_WorldToLocal, wpos).xyz;
			float3 near = mul(_SGT_WorldToLocal, float4(wcam, 1.0f)).xyz;

			float3 nearFar = far - near;
			float3 dir     = normalize(nearFar);
			float  depthA  = length(nearFar);
			float  depthB  = SGT_GetOutsideDistance(near, dir);
			near += dir * max(depthB, 0.0f);
			float depth = length(near - far);

			v.texcoord0.x   = depth * _SGT_HorizonLengthRecip;
			v.texcoord0.y   = (length(far) - _SGT_InnerRatio) * _SGT_InnerScale; // Altitude
			v.texcoord1.xyz = mul((float3x3)_SGT_LocalToWorld, near);
		#endif
	}

	void ModifyOuterVertex(inout VertexData v, inout ExtraV2F e)
	{
		#if __SGT_MATRIX
			float4 wPos = SGT_O2W(v.vertex);
			float3 far  = mul(_SGT_WorldToLocal, wPos).xyz;
			float3 near = SGT_GetNear(far);

			v.texcoord0.xy = length(near - far) * _SGT_HorizonLengthRecip;

			#if _SGT_SOFTNESS
				v.texcoord1.z = -SGT_O2V(v.vertex).z;
			#endif

			v.texcoord2.xyz = mul((float3x3)_SGT_LocalToWorld, near);
		#endif
	}

	void Ext_ModifyVertex0 (inout VertexData v, inout ExtraV2F e)
	{
		#if _SGT_OUTER
			ModifyOuterVertex(v, e);
		#else
			ModifyInnerVertex(v, e);
		#endif
	}

	void SurfaceInnerFunction(inout Surface o, inout ShaderData d)
	{
		#if __SGT_OUTPUT
			float4 depth = tex2D(_SGT_InnerDepthTex, d.texcoord0.xx);
			float4 main  = depth * _SGT_Color;
			float3 wcam  = _WorldSpaceCameraPos;
			float3 wnorm = normalize(d.texcoord1.xyz);

			main.rgb *= _SGT_Brightness;
			main.a   *= smoothstep(1.0f, 0.0f, saturate(d.texcoord0.y));

			float4 finalColor = main;

			#if __SGT_LIGHTANDSHADOW
				#if _SGT_LIGHTING
					finalColor.rgb *= _SGT_AmbientColor;

					float4 lighting   = 0.0f;
					float4 scattering = 0.0f;

					for (int i = 0; i < _SGT_LightCount; i++)
					{
						float theta = dot(wnorm, _SGT_LightDirection[i]) * 0.5f + 0.5f;

						lighting += tex2D(_SGT_LightingTex, theta) * main * _SGT_LightColor[i];

						#if _SGT_SCATTERING
							float3 worldViewDir  = normalize(d.worldSpacePosition - wcam);
							float3 worldLightDir = normalize(_SGT_LightPosition[i].xyz - wcam);
							float  angle         = dot(worldViewDir, worldLightDir);
							float  phase         = SGT_ScatteringPhase(angle, _SGT_ScatteringTerms, _SGT_ScatteringInner);

							scattering += tex2D(_SGT_ScatteringTex, theta) * _SGT_LightColor[i] * phase;
						#endif
					}

					#if _SGT_SCATTERING
						#if _SGT_HDR || _HDRP
							scattering *= main;
							lighting.xyz += scattering.xyz;
						#else
							scattering *= finalColor.a; // Fade scattering out according to optical depth
							scattering *= saturate(1.0f - (finalColor + lighting)); // Only scatter into remaining rgba
							lighting += scattering;
						#endif
					#endif

					finalColor += lighting * saturate(SGT_ShadowColor(d.worldSpacePosition) + finalColor.a * 0.5f);
					//finalColor += lighting * lerp(SGT_ShadowColor(d.worldSpacePosition), 1.0f, finalColor.a);
					finalColor.a = saturate(finalColor.a);
				#else
					finalColor = SGT_ModifyUnlitOutput(finalColor);
				#endif
			#endif

			SGT_OutputWithAlpha(o, finalColor);
		#endif
	}

	void SurfaceOuterFunction(inout Surface o, inout ShaderData d)
	{
		#if __SGT_OUTPUT
			float4 depth = tex2D(_SGT_OuterDepthTex, d.texcoord0.xx); depth.a = saturate(depth.a + (1.0f - depth.a) * _SGT_Sky);
			float4 main  = depth * _SGT_Color;
			float3 wcam  = _WorldSpaceCameraPos;
			float3 wnorm = normalize(d.texcoord2.xyz);

			main.rgb *= _SGT_Brightness;

			#if _SGT_SOFTNESS
				float sceneZ = GetLinearEyeDepth(d.screenUV);
				float partZ = d.texcoord1.z;

				main.a *= smoothstep(0.0f, 1.0f, _SGT_SoftParticlesFactor * abs(sceneZ - partZ));
			#endif

			float4 finalColor = main;

			#if __SGT_LIGHTANDSHADOW
				#if _SGT_LIGHTING
					finalColor.rgb *= _SGT_AmbientColor;

					float4 lighting   = 0.0f;
					float4 scattering = 0.0f;

					for (int i = 0; i < _SGT_LightCount; i++)
					{
						float theta = dot(wnorm, _SGT_LightDirection[i]) * 0.5f + 0.5f;

						lighting += tex2D(_SGT_LightingTex, theta) * main * _SGT_LightColor[i];

						#if _SGT_SCATTERING
							float3 worldViewDir  = normalize(d.worldSpacePosition - wcam);
							float3 worldLightDir = normalize(_SGT_LightPosition[i].xyz - wcam);
							float  angle         = dot(worldViewDir, worldLightDir);
							float  phase         = SGT_ScatteringPhase(angle, _SGT_ScatteringTerms, _SGT_ScatteringOuter);

							scattering += tex2D(_SGT_ScatteringTex, theta) * _SGT_LightColor[i] * phase;
						#endif
					}

					#if _SGT_SCATTERING
						#if _SGT_HDR || _HDRP
							scattering *= main;
							lighting.xyz += scattering.xyz;
						#else
							scattering *= finalColor.a; // Fade scattering out according to optical depth
							scattering *= saturate(1.0f - (finalColor + lighting)); // Only scatter into remaining rgba
							lighting += scattering;
						#endif
					#endif

					finalColor += lighting * SGT_ShadowColor(d.worldSpacePosition);
					finalColor.a = saturate(main.a);
				#else
					finalColor = SGT_ModifyUnlitOutput(finalColor);
				#endif
			#endif

			SGT_OutputWithAlpha(o, finalColor);
		#endif
	}

	void Ext_SurfaceFunction0 (inout Surface o, inout ShaderData d)
	{
		#if _SGT_OUTER
			SurfaceOuterFunction(o, d);
		#else
			SurfaceInnerFunction(o, d);
		#endif
	}







        
            void ChainSurfaceFunction(inout Surface l, inout ShaderData d)
            {
                  Ext_SurfaceFunction0(l, d);
                 // Ext_SurfaceFunction1(l, d);
                 // Ext_SurfaceFunction2(l, d);
                 // Ext_SurfaceFunction3(l, d);
                 // Ext_SurfaceFunction4(l, d);
                 // Ext_SurfaceFunction5(l, d);
                 // Ext_SurfaceFunction6(l, d);
                 // Ext_SurfaceFunction7(l, d);
                 // Ext_SurfaceFunction8(l, d);
                 // Ext_SurfaceFunction9(l, d);
		           // Ext_SurfaceFunction10(l, d);
                 // Ext_SurfaceFunction11(l, d);
                 // Ext_SurfaceFunction12(l, d);
                 // Ext_SurfaceFunction13(l, d);
                 // Ext_SurfaceFunction14(l, d);
                 // Ext_SurfaceFunction15(l, d);
                 // Ext_SurfaceFunction16(l, d);
                 // Ext_SurfaceFunction17(l, d);
                 // Ext_SurfaceFunction18(l, d);
		           // Ext_SurfaceFunction19(l, d);
                 // Ext_SurfaceFunction20(l, d);
                 // Ext_SurfaceFunction21(l, d);
                 // Ext_SurfaceFunction22(l, d);
                 // Ext_SurfaceFunction23(l, d);
                 // Ext_SurfaceFunction24(l, d);
                 // Ext_SurfaceFunction25(l, d);
                 // Ext_SurfaceFunction26(l, d);
                 // Ext_SurfaceFunction27(l, d);
                 // Ext_SurfaceFunction28(l, d);
		           // Ext_SurfaceFunction29(l, d);
            }

            void ChainModifyVertex(inout VertexData v, inout VertexToPixel v2p, float4 time)
            {
                 ExtraV2F d;
                 
                 ZERO_INITIALIZE(ExtraV2F, d);
                 ZERO_INITIALIZE(Blackboard, d.blackboard);
                 // due to motion vectors in HDRP, we need to use the last
                 // time in certain spots. So if you are going to use _Time to adjust vertices,
                 // you need to use this time or motion vectors will break. 
                 d.time = time;

                   Ext_ModifyVertex0(v, d);
                 // Ext_ModifyVertex1(v, d);
                 // Ext_ModifyVertex2(v, d);
                 // Ext_ModifyVertex3(v, d);
                 // Ext_ModifyVertex4(v, d);
                 // Ext_ModifyVertex5(v, d);
                 // Ext_ModifyVertex6(v, d);
                 // Ext_ModifyVertex7(v, d);
                 // Ext_ModifyVertex8(v, d);
                 // Ext_ModifyVertex9(v, d);
                 // Ext_ModifyVertex10(v, d);
                 // Ext_ModifyVertex11(v, d);
                 // Ext_ModifyVertex12(v, d);
                 // Ext_ModifyVertex13(v, d);
                 // Ext_ModifyVertex14(v, d);
                 // Ext_ModifyVertex15(v, d);
                 // Ext_ModifyVertex16(v, d);
                 // Ext_ModifyVertex17(v, d);
                 // Ext_ModifyVertex18(v, d);
                 // Ext_ModifyVertex19(v, d);
                 // Ext_ModifyVertex20(v, d);
                 // Ext_ModifyVertex21(v, d);
                 // Ext_ModifyVertex22(v, d);
                 // Ext_ModifyVertex23(v, d);
                 // Ext_ModifyVertex24(v, d);
                 // Ext_ModifyVertex25(v, d);
                 // Ext_ModifyVertex26(v, d);
                 // Ext_ModifyVertex27(v, d);
                 // Ext_ModifyVertex28(v, d);
                 // Ext_ModifyVertex29(v, d);


                 // #if %EXTRAV2F0REQUIREKEY%
                 // v2p.extraV2F0 = d.extraV2F0;
                 // #endif

                 // #if %EXTRAV2F1REQUIREKEY%
                 // v2p.extraV2F1 = d.extraV2F1;
                 // #endif

                 // #if %EXTRAV2F2REQUIREKEY%
                 // v2p.extraV2F2 = d.extraV2F2;
                 // #endif

                 // #if %EXTRAV2F3REQUIREKEY%
                 // v2p.extraV2F3 = d.extraV2F3;
                 // #endif

                 // #if %EXTRAV2F4REQUIREKEY%
                 // v2p.extraV2F4 = d.extraV2F4;
                 // #endif

                 // #if %EXTRAV2F5REQUIREKEY%
                 // v2p.extraV2F5 = d.extraV2F5;
                 // #endif

                 // #if %EXTRAV2F6REQUIREKEY%
                 // v2p.extraV2F6 = d.extraV2F6;
                 // #endif

                 // #if %EXTRAV2F7REQUIREKEY%
                 // v2p.extraV2F7 = d.extraV2F7;
                 // #endif
            }

            void ChainModifyTessellatedVertex(inout VertexData v, inout VertexToPixel v2p)
            {
               ExtraV2F d;
               ZERO_INITIALIZE(ExtraV2F, d);
               ZERO_INITIALIZE(Blackboard, d.blackboard);

               // #if %EXTRAV2F0REQUIREKEY%
               // d.extraV2F0 = v2p.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // d.extraV2F1 = v2p.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // d.extraV2F2 = v2p.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // d.extraV2F3 = v2p.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // d.extraV2F4 = v2p.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // d.extraV2F5 = v2p.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // d.extraV2F6 = v2p.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // d.extraV2F7 = v2p.extraV2F7;
               // #endif


               // Ext_ModifyTessellatedVertex0(v, d);
               // Ext_ModifyTessellatedVertex1(v, d);
               // Ext_ModifyTessellatedVertex2(v, d);
               // Ext_ModifyTessellatedVertex3(v, d);
               // Ext_ModifyTessellatedVertex4(v, d);
               // Ext_ModifyTessellatedVertex5(v, d);
               // Ext_ModifyTessellatedVertex6(v, d);
               // Ext_ModifyTessellatedVertex7(v, d);
               // Ext_ModifyTessellatedVertex8(v, d);
               // Ext_ModifyTessellatedVertex9(v, d);
               // Ext_ModifyTessellatedVertex10(v, d);
               // Ext_ModifyTessellatedVertex11(v, d);
               // Ext_ModifyTessellatedVertex12(v, d);
               // Ext_ModifyTessellatedVertex13(v, d);
               // Ext_ModifyTessellatedVertex14(v, d);
               // Ext_ModifyTessellatedVertex15(v, d);
               // Ext_ModifyTessellatedVertex16(v, d);
               // Ext_ModifyTessellatedVertex17(v, d);
               // Ext_ModifyTessellatedVertex18(v, d);
               // Ext_ModifyTessellatedVertex19(v, d);
               // Ext_ModifyTessellatedVertex20(v, d);
               // Ext_ModifyTessellatedVertex21(v, d);
               // Ext_ModifyTessellatedVertex22(v, d);
               // Ext_ModifyTessellatedVertex23(v, d);
               // Ext_ModifyTessellatedVertex24(v, d);
               // Ext_ModifyTessellatedVertex25(v, d);
               // Ext_ModifyTessellatedVertex26(v, d);
               // Ext_ModifyTessellatedVertex27(v, d);
               // Ext_ModifyTessellatedVertex28(v, d);
               // Ext_ModifyTessellatedVertex29(v, d);

               // #if %EXTRAV2F0REQUIREKEY%
               // v2p.extraV2F0 = d.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // v2p.extraV2F1 = d.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // v2p.extraV2F2 = d.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // v2p.extraV2F3 = d.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // v2p.extraV2F4 = d.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // v2p.extraV2F5 = d.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // v2p.extraV2F6 = d.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // v2p.extraV2F7 = d.extraV2F7;
               // #endif
            }

            void ChainFinalColorForward(inout Surface l, inout ShaderData d, inout half4 color)
            {
               //   Ext_FinalColorForward0(l, d, color);
               //   Ext_FinalColorForward1(l, d, color);
               //   Ext_FinalColorForward2(l, d, color);
               //   Ext_FinalColorForward3(l, d, color);
               //   Ext_FinalColorForward4(l, d, color);
               //   Ext_FinalColorForward5(l, d, color);
               //   Ext_FinalColorForward6(l, d, color);
               //   Ext_FinalColorForward7(l, d, color);
               //   Ext_FinalColorForward8(l, d, color);
               //   Ext_FinalColorForward9(l, d, color);
               //  Ext_FinalColorForward10(l, d, color);
               //  Ext_FinalColorForward11(l, d, color);
               //  Ext_FinalColorForward12(l, d, color);
               //  Ext_FinalColorForward13(l, d, color);
               //  Ext_FinalColorForward14(l, d, color);
               //  Ext_FinalColorForward15(l, d, color);
               //  Ext_FinalColorForward16(l, d, color);
               //  Ext_FinalColorForward17(l, d, color);
               //  Ext_FinalColorForward18(l, d, color);
               //  Ext_FinalColorForward19(l, d, color);
               //  Ext_FinalColorForward20(l, d, color);
               //  Ext_FinalColorForward21(l, d, color);
               //  Ext_FinalColorForward22(l, d, color);
               //  Ext_FinalColorForward23(l, d, color);
               //  Ext_FinalColorForward24(l, d, color);
               //  Ext_FinalColorForward25(l, d, color);
               //  Ext_FinalColorForward26(l, d, color);
               //  Ext_FinalColorForward27(l, d, color);
               //  Ext_FinalColorForward28(l, d, color);
               //  Ext_FinalColorForward29(l, d, color);
            }

            void ChainFinalGBufferStandard(inout Surface s, inout ShaderData d, inout half4 GBuffer0, inout half4 GBuffer1, inout half4 GBuffer2, inout half4 outEmission, inout half4 outShadowMask)
            {
               //   Ext_FinalGBufferStandard0(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard1(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard2(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard3(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard4(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard5(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard6(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard7(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard8(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard9(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard10(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard11(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard12(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard13(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard14(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard15(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard16(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard17(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard18(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard19(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard20(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard21(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard22(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard23(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard24(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard25(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard26(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard27(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard28(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard29(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
            }



            

         ShaderData CreateShaderData(VertexToPixel i
                  #if NEED_FACING
                     , bool facing
                  #endif
         )
         {
            ShaderData d = (ShaderData)0;
            d.clipPos = i.pos;
            d.worldSpacePosition = i.worldPos;

            d.worldSpaceNormal = normalize(i.worldNormal);
            d.worldSpaceTangent = normalize(i.worldTangent.xyz);
            d.tangentSign = i.worldTangent.w;
            float3 bitangent = cross(i.worldTangent.xyz, i.worldNormal) * d.tangentSign * -1;
            

            d.TBNMatrix = float3x3(d.worldSpaceTangent, bitangent, d.worldSpaceNormal);
            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - i.worldPos);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);
             d.texcoord0 = i.texcoord0;
             d.texcoord1 = i.texcoord1;
             d.texcoord2 = i.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
            // d.texcoord3 = i.texcoord3;
            // #endif

            // d.isFrontFace = facing;
            // #if %VERTEXCOLORREQUIREKEY%
            // d.vertexColor = i.vertexColor;
            // #endif

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(unity_WorldToObject, float4(GetCameraRelativePositionWS(i.worldPos), 1)).xyz;
            #else
                // d.localSpacePosition = mul(unity_WorldToObject, float4(i.worldPos, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)unity_WorldToObject, i.worldNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)unity_WorldToObject, i.worldTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
             d.screenPos = i.screenPos;
             d.screenUV = (i.screenPos.xy / i.screenPos.w);
            // #endif


            // #if %EXTRAV2F0REQUIREKEY%
            // d.extraV2F0 = i.extraV2F0;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
            // d.extraV2F1 = i.extraV2F1;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
            // d.extraV2F2 = i.extraV2F2;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
            // d.extraV2F3 = i.extraV2F3;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // d.extraV2F4 = i.extraV2F4;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // d.extraV2F5 = i.extraV2F5;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // d.extraV2F6 = i.extraV2F6;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // d.extraV2F7 = i.extraV2F7;
            // #endif

            return d;
         }
         

            

#if (SHADERPASS == SHADERPASS_LIGHT_TRANSPORT)

   // This was not in constant buffer in original unity, so keep outiside. But should be in as ShaderRenderPass frequency
   float unity_OneOverOutputBoost;
   float unity_MaxOutputValue;

   CBUFFER_START(UnityMetaPass)
   // x = use uv1 as raster position
   // y = use uv2 as raster position
   bool4 unity_MetaVertexControl;

   // x = return albedo
   // y = return normal
   bool4 unity_MetaFragmentControl;
   CBUFFER_END

   VertexToPixel Vert(VertexData inputMesh)
   {
       VertexToPixel output;
       ZERO_INITIALIZE(VertexToPixel, output);
       UNITY_SETUP_INSTANCE_ID(inputMesh);
       UNITY_TRANSFER_INSTANCE_ID(inputMesh, output);
       UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

       // Output UV coordinate in vertex shader
       float2 uv = float2(0.0, 0.0);

       if (unity_MetaVertexControl.x)
       {
           uv = inputMesh.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
       }
       else if (unity_MetaVertexControl.y)
       {
           uv = inputMesh.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
       }

       // OpenGL right now needs to actually use the incoming vertex position
       // so we create a fake dependency on it here that haven't any impact.
       output.pos = float4(uv * 2.0 - 1.0, inputMesh.vertex.z > 0 ? 1.0e-4 : 0.0, 1.0);

       output.worldPos = TransformObjectToWorld(inputMesh.vertex.xyz).xyz;

       // Normal is required for triplanar mapping
       output.worldNormal = TransformObjectToWorldNormal(inputMesh.normal);
       // Not required but assign to silent compiler warning
       output.worldTangent = float4(1.0, 0.0, 0.0, 0.0);

       output.texcoord0 = inputMesh.texcoord0;
       output.texcoord1 = inputMesh.texcoord1;
       output.texcoord2 = inputMesh.texcoord2;
       // #if %TEXCOORD3REQUIREKEY%
       // output.texcoord3 = inputMesh.texcoord3;
       // #endif
       // #if %VERTEXCOLORREQUIREKEY%
       // output.vertexColor = inputMesh.vertexColor;
       // #endif

       return output;
   }
#else

   #if (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
      #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariablesMatrixDefsHDCamera.hlsl"

      void MotionVectorPositionZBias(VertexToPixel input)
      {
      #if UNITY_REVERSED_Z
          input.pos.z -= unity_MotionVectorsParams.z * input.pos.w;
      #else
          input.pos.z += unity_MotionVectorsParams.z * input.pos.w;
      #endif
      }

   #endif

   VertexToPixel Vert(VertexData input)
   {
       VertexToPixel output;
       ZERO_INITIALIZE(VertexToPixel, output);

       UNITY_SETUP_INSTANCE_ID(input);
       UNITY_TRANSFER_INSTANCE_ID(input, output);
       UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

       #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))
         VertexData previousMesh = input;
       #endif

       ChainModifyVertex(input, output, _Time);

       // This return the camera relative position (if enable)
       float3 positionRWS = TransformObjectToWorld(input.vertex.xyz);
       float3 normalWS = TransformObjectToWorldNormal(input.normal);
       float4 tangentWS = float4(TransformObjectToWorldDir(input.tangent.xyz), input.tangent.w);


       output.worldPos = GetAbsolutePositionWS(positionRWS);
       output.pos = TransformWorldToHClip(positionRWS);
       output.worldNormal = normalWS;
       output.worldTangent = tangentWS;


       output.texcoord0 = input.texcoord0;
       output.texcoord1 = input.texcoord1;
       output.texcoord2 = input.texcoord2;

       // #if %TEXCOORD3REQUIREKEY%
       // output.texcoord3 = input.texcoord3;
       // #endif

       // #if %VERTEXCOLORREQUIREKEY%
       // output.vertexColor = input.vertexColor;
       // #endif

       // #if %SCREENPOSREQUIREKEY%
        output.screenPos = ComputeScreenPos(output.pos, _ProjectionParams.x);
       // #endif
   
       #if _HDRP && (_PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR)))

          #if !defined(TESSELLATION_ON)
            MotionVectorPositionZBias(output);
          #endif

          output.motionVectorCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(positionRWS.xyz, 1.0));
          // Note: unity_MotionVectorsParams.y is 0 is forceNoMotion is enabled
          bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
          if (forceNoMotion)
          {
              output.previousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
          }
          else
          {
            bool hasDeformation = unity_MotionVectorsParams.x > 0.0; // Skin or morph target

            float3 effectivePositionOS = (hasDeformation ? previousMesh.previousPositionOS : previousMesh.vertex.xyz);
            #if defined(_ADD_PRECOMPUTED_VELOCITY)
               effectivePositionOS -= input.precomputedVelocity;
            #endif

            previousMesh.vertex = float4(effectivePositionOS, 1);
            VertexToPixel dummy = (VertexToPixel)0;
            

            ChainModifyVertex(previousMesh, dummy, _LastTimeParameters);

            // we might need this for skinned objects?
            //float3 normalWS = TransformPreviousObjectToWorldNormal(input.normal).xyz;
            float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.vertex.xyz);

            #ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
            if (_TransparentCameraOnlyMotionVectors > 0)
            {
               previousPositionRWS = positionRWS.xyz;
            }
            #endif // _WRITE_TRANSPARENT_MOTION_VECTOR

            output.previousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
         }
       #endif // _HDRP && _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))


       return output;
   }


#endif



            

            

               #if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
                  #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalPrepassBuffer.hlsl"
               #endif

                FragInputs BuildFragInputs(VertexToPixel input)
                {
                    UNITY_SETUP_INSTANCE_ID(input);
                    FragInputs output;
                    ZERO_INITIALIZE(FragInputs, output);
            
                    // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                    // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                    // to compute normals which are then passed on elsewhere to compute other values...
                    output.tangentToWorld = k_identity3x3;
                    output.positionSS = input.pos;       // input.positionCS is SV_Position
                    // BETTER SHADERS: because we transform world position into actual world space for things like
                    // triplanar, etc, we have to back transform it here for lighting
                    output.positionRWS = GetCameraRelativePositionWS(input.worldPos);
                    output.tangentToWorld = BuildTangentToWorld(input.worldTangent, input.worldNormal);
                    output.texCoord0 = input.texcoord0;
                    output.texCoord1 = input.texcoord1;
                    output.texCoord2 = input.texcoord2;
            
                    return output;
                }
            
               void BuildSurfaceData(FragInputs fragInputs, inout Surface surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
               {
                   // setup defaults -- these are used if the graph doesn't output a value
                   ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                   // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
                   // however specularOcclusion can come from the graph, so need to be init here so it can be override.
                   surfaceData.specularOcclusion = 1.0;

                   // copy across graph values, if defined
                   surfaceData.baseColor =                 surfaceDescription.Albedo;
                   surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                   surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                   surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                   surfaceData.metallic =                  surfaceDescription.Metallic;
                   surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                   surfaceData.thickness =                 surfaceDescription.Thickness;
                   surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                   #if _USESPECULAR
                      surfaceData.specularColor =             surfaceDescription.Specular;
                   #endif
                   surfaceData.coatMask =                  surfaceDescription.CoatMask;
                   surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                   surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                   surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;



                   #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                        if (_EnableSSRefraction)
                        {
                            surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                            surfaceDescription.Alpha = 1.0;
                        }
                        else
                        {
                            surfaceData.ior = 1.0;
                            surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                            surfaceData.atDistance = 1.0;
                            surfaceData.transmittanceMask = 0.0;
                            surfaceDescription.Alpha = 1.0;
                        }
                    #else
                        surfaceData.ior = 1.0;
                        surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                        surfaceData.atDistance = 1.0;
                        surfaceData.transmittanceMask = 0.0;
                    #endif

                    

                    // These static material feature allow compile time optimization
                    surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
                    #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_TRANSMISSION
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_ANISOTROPY
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
                        surfaceData.normalWS = float3(0, 1, 0);
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
                    #endif
                
                    #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
                    #endif
                
                    #if defined(_MATERIAL_FEATURE_CLEAR_COAT) || _CLEARCOAT
                        surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
                    #endif
                
                    #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                        // Require to have setup baseColor
                        // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                        surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
                    #endif
                


                   // compute world space normal
                   #if !_WORLDSPACENORMAL
                      surfaceData.normalWS = mul(surfaceDescription.Normal, fragInputs.tangentToWorld);
                   #else
                      surfaceData.normalWS = surfaceDescription.Normal;
                   #endif

                   surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                   surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT

         
                    #if HAVE_DECALS
                        if (_EnableDecals)
                        {
                            float alpha = 1.0;
                            alpha = surfaceDescription.Alpha;
                
                            // Both uses and modifies 'surfaceData.normalWS'.
                            DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], alpha);
                            ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
                        }
                    #endif
                
                    bentNormalWS = surfaceData.normalWS;
                
                    surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
                
                    #ifdef DEBUG_DISPLAY
                        if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                        {
                            // TODO: need to update mip info
                            surfaceData.metallic = 0;
                        }
                
                        // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                        // as it can modify attribute use for static lighting
                        ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
                    #endif
                
                    // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                    // If user provide bent normal then we process a better term
                    #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                        // Just use the value passed through via the slot (not active otherwise)
                    #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                        // If we have bent normal and ambient occlusion, process a specular occlusion
                        surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                    #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                        surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                    #endif
                
                    #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                        surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
                    #endif
               }
        
               void GetSurfaceAndBuiltinData(VertexToPixel m2ps, FragInputs fragInputs, float3 V, inout PositionInputs posInput,
                     out SurfaceData surfaceData, out BuiltinData builtinData, inout Surface l, inout ShaderData d
                     #if NEED_FACING
                        , bool facing
                     #endif
                  )
               {
                 // Removed since crossfade does not work, probably needs extra material setup.   
                 //#if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                 //   #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                 //      LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                 //   #endif
                 //#endif

                 d = CreateShaderData(m2ps
                    #if NEED_FACING
                       , facing
                    #endif
                 );

                 l = (Surface)0;

                 l.Albedo = half3(0.5, 0.5, 0.5);
                 l.Normal = float3(0,0,1);
                 l.Occlusion = 1;
                 l.Alpha = 1;
                 l.SpecularOcclusion = 1;

                 #if !defined(SHADER_STAGE_RAY_TRACING) && defined(_DEPTHOFFSET_ON)
                    l.outputDepth = d.clipPos.z;
                 #endif

                 ChainSurfaceFunction(l, d);

                 #if !defined(SHADER_STAGE_RAY_TRACING) && defined(_DEPTHOFFSET_ON)
                    //posInput.deviceDepth = l.outputDepth;
                 #endif

                 #if _UNLIT
                     //l.Emission = l.Albedo;
                     //l.Albedo = 0;
                     l.Normal = half3(0,0,1);
                     l.Occlusion = 1;
                     l.Metallic = 0;
                     l.Specular = 0;
                 #endif

                 surfaceData.geomNormalWS = d.worldSpaceNormal;
                 surfaceData.tangentWS = d.worldSpaceTangent;
                 fragInputs.tangentToWorld = d.TBNMatrix;

                 float3 bentNormalWS;
                 BuildSurfaceData(fragInputs, l, V, posInput, surfaceData, bentNormalWS);


                 InitBuiltinData(posInput, l.Alpha, bentNormalWS, -d.worldSpaceNormal, fragInputs.texCoord1, fragInputs.texCoord2, builtinData);

                 

                 builtinData.emissiveColor = l.Emission;

                 #if defined(_OVERRIDE_BAKEDGI)
                    builtinData.bakeDiffuseLighting = l.DiffuseGI;
                    builtinData.backBakeDiffuseLighting = l.BackDiffuseGI;
                    builtinData.emissiveColor += l.SpecularGI;
                 #endif

                 #if defined(_OVERRIDE_SHADOWMASK)
                    builtinData.shadowMask0 = l.ShadowMask.x;
                    builtinData.shadowMask1 = l.ShadowMask.y;
                    builtinData.shadowMask2 = l.ShadowMask.z;
                    builtinData.shadowMask3 = l.ShadowMask.w;
                 #endif

                  #ifdef UNITY_VIRTUAL_TEXTURING
                     builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                  #endif

                  #if (SHADERPASS == SHADERPASS_DISTORTION)
                     builtinData.distortion = surfaceData.Distortion;
                     builtinData.distortionBlur = surfaceData.DistortionBlur;
                  #endif

                  #ifndef SHADER_UNLIT
                    // PostInitBuiltinData call ApplyDebugToBuiltinData
                    PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                  #else
                    ApplyDebugToBuiltinData(builtinData);
                  #endif
         
                  RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
               }



#define DEBUG_DISPLAY
#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/FullScreenDebug.hlsl"

         #if !defined(_DEPTHOFFSET_ON)
         [earlydepthstencil] // quad overshading debug mode writes to UAV
         #endif
         void Frag(VertexToPixel v2f
            #if NEED_FACING
               , bool facing : SV_IsFrontFace
            #endif
         )
         {
             UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(v2f);
             FragInputs input = BuildFragInputs(v2f);

             PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS.xyz);

         #ifdef PLATFORM_SUPPORTS_PRIMITIVE_ID_IN_PIXEL_SHADER
             if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_QUAD_OVERDRAW)
             {
                 IncrementQuadOverdrawCounter(posInput.positionSS.xy, input.primitiveID);
             }
         #endif
         }

            ENDHLSL
        }

      












      
   }

   
   
   
}
