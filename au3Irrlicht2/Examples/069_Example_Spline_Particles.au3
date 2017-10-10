; ----------------------------------------------------------------------------
; Irrlicht Wrapper for Imperative Languages - Freebasic Examples
; Frank Dodd (2006)
; Converted/modified for the au3Irr2 project by linus
; ----------------------------------------------------------------------------
; Example 69: Spline Particle Effect
; This example demonstrates an effector that moves particles along a curved path
; ----------------------------------------------------------------------------

; ////////////////////////////////////////////////////////////////////////////
; Includes for extension libraries
#include "../au3Irrlicht2.au3"
opt("MustDeclareVars", True)
HotKeySet("{ESC}", "_exit")

Func _exit()
	_IrrStop()
	Exit
EndFunc ; _exit


; ////////////////////////////////////////////////////////////////////////////
; global variables

; irrlicht objects
DIM $ParticleTexture ; irr_texture
DIM $MeshTexture
DIM $SmokeParticles ; irr_model
DIM $SmokeEmitter ; irr_particle_emitter
DIM $TestNode ; irr_node
DIM $Camera ; irr_camera
DIM $FadeOut ; irr_affector
DIM $fade ; single
DIM $smoke_emitter ; irr_emitter

; ////////////////////////////////////////////////////////////////////////////


; -----------------------------------------------------------------------------
; start the irrlicht interface
_IrrStart( $IRR_EDT_DIRECT3D9, 800, 600, $IRR_BITS_PER_PIXEL_32, _
        $IRR_WINDOWED, $IRR_NO_SHADOWS, $IRR_IGNORE_EVENTS, $IRR_VERTICAL_SYNC_ON )

; send the window caption
_IrrSetWindowCaption( "Example 69: Spline path particle motion" )

; this adds a small test node to the scene, a test node is a simple cube, that
; you can move and texture like any other object however there is another
; reason for adding this node. the particle system needs another node rendered
; onto the display to allow it to display material effects. this may be an issue
; with the wrapper that needs investigation
$TestNode = _IrrAddTestSceneNode()
$MeshTexture = _IrrGetTexture( "../media/au3irr2_logo.jpg" )
_IrrSetNodeMaterialTexture( $TestNode, $MeshTexture, 0 )
_IrrSetNodeMaterialFlag( $TestNode, $IRR_EMF_LIGHTING, $IRR_OFF )

; set up a particle system that generates a stream of smoke please see example
; Seven for detailed information
$SmokeParticles = _IrrAddParticleSystemToScene( $IRR_NO_EMITTER )
$SmokeEmitter = __CreateParticleSettings( _
					-7.0, 0, -7.0, _	; min_box_x / min_box_y / min_box_z
					7.0, 1.0, 7.0, _	; max_box_x / max_box_y / max_box_z
					0, 0, 0, _		; direction_x / direction_y / direction_z
					20, 40, _			; min_paritlcles_per_second / max_paritlcles_per_second
					255, 255, 255, _	; min_start_color_red / min_start_color_green / min_start_color_blue
					255, 255, 255, _	; max_start_color_red / max_start_color_green / max_start_color_blue
					2000, 2000, _		; min_lifetime / max_lifetime
					15.0, 15.0, _		; min_start_sizeX / min_start_sizeY
					15.0, 15.0, _		; max_start_sizeX / max_start_sizeY
					15 )				; max_angle_degrees

; finally we add this particle emitting object to the particle system along
; with a series of affectors
$smoke_emitter = _IrrAddParticleEmitter( $SmokeParticles, $SmokeEmitter )

; define the co-ordinates of the points in the spline path
local $tSplineVectors = __CreateVectStruct(4)
__SetVectStruct($tSplineVectors, 0, 0.0, 0.0, 0.0)
__SetVectStruct($tSplineVectors, 1, 0.0, 20.0, 25.0)
__SetVectStruct($tSplineVectors, 2, 0.0, 40.0, -25.0)
__SetVectStruct($tSplineVectors, 3, 0.0, 60.0, 0.0)

; add the affector using the path
_IrrAddSplineAffector($SmokeParticles, $tSplineVectors, 2.0, 1.0, 5.0, $IRR_ON)

; load a grey smoke like image for the particle
$ParticleTexture = _IrrGetTexture( "../media/ParticleGrey.bmp" )

; apply the texture to the particles system, this texture will now be drawn
; across each particles surface
_IrrSetNodeMaterialTexture( $SmokeParticles, $ParticleTexture, 0 )

; out particle system is not affected by lighting so we make it self
; illuminating
_IrrSetNodeMaterialFlag( $SmokeParticles, $IRR_EMF_LIGHTING, $IRR_OFF )

; the particle texture has black borders, each overlapping particle would
; draw this blackness ontop of one another ; a sharp egde they would look like
; a lot of solid squares instead of the transparent gas effect we are trying
; to created. so here we change the material type of the node - instead of
; drawing the node solidly onto the screen it is added onto the colour
; underneath itself so black doesnt change the color and white would build up
; top of the existing color until it completly saturates the pixel
_IrrSetNodeMaterialType ( $SmokeParticles, $IRR_EMT_TRANSPARENT_VERTEX_ALPHA )

; add a fixed position camera to the scene so we can view the particle system.
; the first three parameters are the cameras location, the second three
; parameters are where the camera is looking at
$Camera = _IrrAddCamera( 70,40,0, 0,30,0 )

; -----------------------------------------------------------------------------
; while the irrlicht environment is still running
WHILE _IrrRunning()
    ; clear the canvas to black to show the particles up better
    _IrrBeginScene( 0,0,25 )

    ; draw the scene
    _IrrDrawScene()

    ; end drawing the scene and display it
    _IrrEndScene()
WEND

; -----------------------------------------------------------------------------
; Stop the irrlicht engine and release resources
_IrrStop()
