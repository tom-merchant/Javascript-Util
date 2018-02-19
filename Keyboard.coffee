
keyStates =
	A: false

keyDownHandlers = []
keyUpHandlers = []

onKeyDown (e) ->
	keyStates[e.key] = true
	for h in keyDownHandlers
		h(e.key)

onKeyUp (e) ->
	keyStates[e.key] = false
	for h in keyUpHandlers
		h(e.key)

addKeyDownHandler (f) ->
	keyDownHandlers.push f

addKeyUpListener (f) ->
	keyUpHandlers.push f

window.addListener("keydown", onKeyDown)
window.addListener("keyup", onKeyUp)
