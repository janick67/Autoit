; ----------------------------------------------------------------------------
; Irrlicht Wrapper for Imperative Languages - Freebasic Examples
; Frank Dodd (2006)
; Converted/modified for the au3Irr2 project by linus
; ----------------------------------------------------------------------------
; Example 86 : Copy screenshot to a texture
; This example displays a model and then after 100 frames grabs a small
; screenshot ; a texture that it then paints to the screen and uses to
; texture a small cube
; ----------------------------------------------------------------------------

; ////////////////////////////////////////////////////////////////////////////
; Includes for extension libraries
#include "..\au3Irrlicht2.au3"
opt("MustDeclareVars", True)
HotKeySet("{ESC}", "_exit")

Func _exit()
	_IrrStop()
	Exit
EndFunc ; _exit


; ////////////////////////////////////////////////////////////////////////////
; global variables

; irrlicht objects
DIM $MD2Mesh ; irr_mesh
DIM $MeshTexture ; irr_texture
DIM $SceneNode ; irr_node
DIM $cubeNode ; irr_node
DIM $OurCamera ; irr_camera
DIM $texture ; irr_texture

; ////////////////////////////////////////////////////////////////////////////


; -----------------------------------------------------------------------------
; start the irrlicht interface
_IrrStart( $IRR_EDT_OPENGL, 800, 600, $IRR_BITS_PER_PIXEL_32, _
        $IRR_WINDOWED, $IRR_SHADOWS, $IRR_IGNORE_EVENTS, $IRR_VERTICAL_SYNC_ON )

; set the window caption
_IrrSetWindowCaption( "Example 86 : Copy screenshot to a texture" )

; add credits for the model ; a static text GUI object on the display
_IrrAddStaticText( "Zumlin model by Rowan 'Sumaleth; Crawford", 4,0,200,16, $IRR_GUI_NO_BORDER, $IRR_GUI_NO_WRAP )

; load a mesh this acts ; a blue print for the model
$MD2Mesh = _IrrGetMesh( "../media/zumlin.md2" )

; load texture resources for texturing the scene nodes
$MeshTexture = _IrrGetTexture( "../media/zumlin.pcx" )

; add the mesh to the scene ; a new node, the node is an instance of the
; mesh object supplied here
$SceneNode = _IrrAddMeshToScene( $MD2Mesh )

; apply a material to the node to give its surface color
_IrrSetNodeMaterialTexture( $SceneNode, $MeshTexture, 0 )

; switch off lighting effects on this model, ; there are no lights in this
; scene the model would otherwise render pule black
_IrrSetNodeMaterialFlag( $SceneNode, $IRR_EMF_LIGHTING, $IRR_OFF )

; play an animation sequence embeded in the mesh. MD2 models have a group of
; preset animations for various poses and actions. this animation sequence is
; the character standing idle
_IrrPlayNodeMD2Animation( $SceneNode, $IRR_EMAT_STAND )

; add a simple cube node to the scene
$cubeNode = _IrrAddTestSceneNode()
_IrrSetNodePosition( $cubeNode, 0,-20,0 )
_IrrSetNodeMaterialFlag( $cubeNode, $IRR_EMF_LIGHTING, $IRR_OFF )

; add a camera into the scene, the first co-ordinates represents the 3D
; location of our view point into the scene the second co-ordinates specify the
; target point that the camera is looking at
$OurCamera = _IrrAddCamera( 50,0,0, 0,0,0 )


; -----------------------------------------------------------------------------
; while the irrlicht environment is still running
local $frames = 0
local $frameTime, $timer = TimerInit()

WHILE _IrrRunning()
    ; if a 60th of a second has passed
    if TimerDiff($timer) - $frameTime > 16.7 then
        ; record the current time
        $frameTime = TimerDiff($timer)
        $frames += 1

		; begin the scene, erasing the canvas with sky-blue before rendering
        _IrrBeginScene( 0, 0, 0)

		; draw the scene
        _IrrDrawScene()

        ; draw the GUI
        _IrrDrawGUI()

        ; circle the camera around the model
        _IrrSetNodePosition( $OurCamera, Cos( $frameTime / 1000 )*50, 0, Sin( $frameTime / 1000 )*50)

        ; on the 100th frame grab a screenshot
        if $frames = 100 then
            $texture = _IrrGetScreenShot( 242, 50, 226, 306)

            ; apply the texture to the test node
            _IrrSetNodeMaterialTexture( $cubeNode, $texture, 0 )
        endif

        ; after the 100th image draw the image to the screen
        if $frames > 100 then
            _IrrDraw2DImage( $texture, 8, 8 )
        endif

        ; end drawing the scene and render it
        _IrrEndScene()
    endif
WEND

; -----------------------------------------------------------------------------
; Stop the irrlicht engine and release resources
_IrrStop()
