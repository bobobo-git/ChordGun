-- @noindex
local workingDirectory = reaper.GetResourcePath() .. "/Scripts/ChordGun/src"
require(workingDirectory .. "/midiMessages")
require(workingDirectory .. "/inputCharacters")


function handleInput()

	inputCharacter = gfx.getchar()

	if inputCharacter == inputCharacters["0"] then
		stopAllNotesFromPlaying()
	end
        if inputCharacter == inputCharacters["spc"] then
                stopAllNotesFromPlaying()
        end
  
	--

	if inputCharacter == inputCharacters["1"] then
		previewScaleChordAction(1)
	end

	if inputCharacter == inputCharacters["2"] then
		previewScaleChordAction(2)
	end

	if inputCharacter == inputCharacters["3"] then
		previewScaleChordAction(3)
	end

	if inputCharacter == inputCharacters["4"] then
		previewScaleChordAction(4)
	end

	if inputCharacter == inputCharacters["5"] then
		previewScaleChordAction(5)
	end

	if inputCharacter == inputCharacters["6"] then
		previewScaleChordAction(6)
	end

	if inputCharacter == inputCharacters["7"] then
		previewScaleChordAction(7)
	end

	--


	if inputCharacter == inputCharacters["!"] then
		scaleChordAction(1)
	end

	if inputCharacter == inputCharacters["@"] then
		scaleChordAction(2)
	end

	if inputCharacter == inputCharacters["#"] then
		scaleChordAction(3)
	end

	if inputCharacter == inputCharacters["$"] then
		scaleChordAction(4)
	end

	if inputCharacter == inputCharacters["%"] then
		scaleChordAction(5)
	end

	if inputCharacter == inputCharacters["^"] then
		scaleChordAction(6)
	end

	if inputCharacter == inputCharacters["&"] then
		scaleChordAction(7)
	end

	--


	if inputCharacter == inputCharacters["q"] then
		previewHigherScaleNoteAction(1)
	end

	if inputCharacter == inputCharacters["w"] then
		previewHigherScaleNoteAction(2)
	end

	if inputCharacter == inputCharacters["e"] then
		previewHigherScaleNoteAction(3)
	end

	if inputCharacter == inputCharacters["r"] then
		previewHigherScaleNoteAction(4)
	end

	if inputCharacter == inputCharacters["t"] then
		previewHigherScaleNoteAction(5)
	end

	if inputCharacter == inputCharacters["y"] then
		previewHigherScaleNoteAction(6)
	end

	if inputCharacter == inputCharacters["u"] then
		previewHigherScaleNoteAction(7)
	end

	--

	if inputCharacter == inputCharacters["a"] then
		previewScaleNoteAction(1)
	end

	if inputCharacter == inputCharacters["s"] then
		previewScaleNoteAction(2)
	end

	if inputCharacter == inputCharacters["d"] then
		previewScaleNoteAction(3)
	end

	if inputCharacter == inputCharacters["f"] then
		previewScaleNoteAction(4)
	end

	if inputCharacter == inputCharacters["g"] then
		previewScaleNoteAction(5)
	end

	if inputCharacter == inputCharacters["h"] then
		previewScaleNoteAction(6)
	end

	if inputCharacter == inputCharacters["j"] then
		previewScaleNoteAction(7)
	end

	--

	if inputCharacter == inputCharacters["z"] then
		previewLowerScaleNoteAction(1)
	end

	if inputCharacter == inputCharacters["x"] then
		previewLowerScaleNoteAction(2)
	end

	if inputCharacter == inputCharacters["c"] then
		previewLowerScaleNoteAction(3)
	end

	if inputCharacter == inputCharacters["v"] then
		previewLowerScaleNoteAction(4)
	end

	if inputCharacter == inputCharacters["b"] then
		previewLowerScaleNoteAction(5)
	end

	if inputCharacter == inputCharacters["n"] then
		previewLowerScaleNoteAction(6)
	end

	if inputCharacter == inputCharacters["m"] then
		previewLowerScaleNoteAction(7)
	end



	--


	if inputCharacter == inputCharacters["Q"] then
		higherScaleNoteAction(1)
	end

	if inputCharacter == inputCharacters["W"] then
		higherScaleNoteAction(2)
	end

	if inputCharacter == inputCharacters["E"] then
		higherScaleNoteAction(3)
	end

	if inputCharacter == inputCharacters["R"] then
		higherScaleNoteAction(4)
	end

	if inputCharacter == inputCharacters["T"] then
		higherScaleNoteAction(5)
	end

	if inputCharacter == inputCharacters["Y"] then
		higherScaleNoteAction(6)
	end

	if inputCharacter == inputCharacters["U"] then
		higherScaleNoteAction(7)
	end

	--

	if inputCharacter == inputCharacters["A"] then
		scaleNoteAction(1)
	end

	if inputCharacter == inputCharacters["S"] then
		scaleNoteAction(2)
	end

	if inputCharacter == inputCharacters["D"] then
		scaleNoteAction(3)
	end

	if inputCharacter == inputCharacters["F"] then
		scaleNoteAction(4)
	end

	if inputCharacter == inputCharacters["G"] then
		scaleNoteAction(5)
	end

	if inputCharacter == inputCharacters["H"] then
		scaleNoteAction(6)
	end

	if inputCharacter == inputCharacters["J"] then
		scaleNoteAction(7)
	end

	--

	if inputCharacter == inputCharacters["Z"] then
		lowerScaleNoteAction(1)
	end

	if inputCharacter == inputCharacters["X"] then
		lowerScaleNoteAction(2)
	end

	if inputCharacter == inputCharacters["C"] then
		lowerScaleNoteAction(3)
	end

	if inputCharacter == inputCharacters["V"] then
		lowerScaleNoteAction(4)
	end

	if inputCharacter == inputCharacters["B"] then
		lowerScaleNoteAction(5)
	end

	if inputCharacter == inputCharacters["N"] then
		lowerScaleNoteAction(6)
	end

	if inputCharacter == inputCharacters["M"] then
		lowerScaleNoteAction(7)
	end

-----------------

--[[
	local function shiftKeyIsHeldDown()
		return gfx.mouse_cap & 8 == 8
	end
]]--
	local function controlKeyIsHeldDown()
		return gfx.mouse_cap & 32 == 32 
	end

	local function optionKeyIsHeldDown()
		return gfx.mouse_cap & 16 == 16
	end

	local function commandKeyIsHeldDown()
		return gfx.mouse_cap & 4 == 4
	end

	--

--[[
	local function shiftKeyIsNotHeldDown()
		return gfx.mouse_cap & 8 ~= 8
	end
]]--

	local function controlKeyIsNotHeldDown()
		return gfx.mouse_cap & 32 ~= 32
	end

	local function optionKeyIsNotHeldDown()
		return gfx.mouse_cap & 16 ~= 16
	end

	local function commandKeyIsNotHeldDown()
		return gfx.mouse_cap & 4 ~= 4
	end

	--

--[[
	local function shiftModifierIsActive()
		return shiftKeyIsHeldDown() and controlKeyIsNotHeldDown() and optionKeyIsNotHeldDown() and commandKeyIsNotHeldDown()
	end
]]--

	local function controlModifierIsActive()
		return controlKeyIsHeldDown() and optionKeyIsNotHeldDown() and commandKeyIsNotHeldDown()
	end

	local function optionModifierIsActive()
		return optionKeyIsHeldDown() and controlKeyIsNotHeldDown() and commandKeyIsNotHeldDown()
	end

	local function commandModifierIsActive()
		return commandKeyIsHeldDown() and optionKeyIsNotHeldDown() and controlKeyIsNotHeldDown()
	end

---

  if inputCharacter == inputCharacters["CMDQ"]  then
    decrementScaleTonicNoteAction()
  end

  if inputCharacter == inputCharacters["CMDW"]  then
    incrementScaleTonicNoteAction() 
  end

  if inputCharacter == inputCharacters["CMDE"]  then
    decrementScaleTypeAction()   
  end

  if inputCharacter == inputCharacters["CMDR"]  then
    incrementScaleTypeAction()  
  end

  if inputCharacter == inputCharacters["CMDA"]  then
    halveGridSize()  
  end

  if inputCharacter == inputCharacters["CMDS"]  then
    doubleGridSize()  
  end

  if inputCharacter == inputCharacters["CMDD"]  then
    decrementOctaveAction() 
  end

  if inputCharacter == inputCharacters["CMDF"]  then
    incrementOctaveAction() 
  end

  --if inputCharacter == inputCharacters["CMDY"]  then
   --    decrementChordTypeAction()  
  --end
  if inputCharacter == inputCharacters["CMDZ"]  then
    decrementChordTypeAction()  
  end

  if inputCharacter == inputCharacters["CMDX"]  then
    incrementChordTypeAction() 
  end

  if inputCharacter == inputCharacters["CMDC"]  then
      decrementChordInversionAction()  
	  end

  if inputCharacter == inputCharacters["CMDV"]  then
      incrementChordInversionAction()  
  end
  if inputCharacter == inputCharacters["CMDG"]  then
      moveCursor()	  
  end
  if inputCharacter == inputCharacters["ARRIGHT"]  then
      moveCursor()    
    end
  if inputCharacter == inputCharacters["ARLEFT"]  then
      moveEditCursorPosition(-noteLength())
  end
  if inputCharacter == inputCharacters["HELP"]  then
      reaper.ClearConsole()
      reaper.ShowConsoleMsg("0 - stop all notes from playing\n1 - play scale chord 1\n2 - play scale chord 2\n3 - play scale chord 3\n4 - play scale chord 4\n5 - play scale chord 5\n6 - play scale chord 6\n7 - play scale chord 7\nq - higher scale note 1\nw - higher scale note 2\ne - higher scale note 3\nr - higher scale note 4\nt - higher scale note 5\ny - higher scale note 6\nu - higher scale note 7\na - scale note 1\ns - scale note 2\nd - scale note 3\nf - scale note 4\ng - scale note 5\nh - scale note 6\nj - scale note 7\nz - lower scale note 1\nx - lower scale note 2\nc - lower scale note 3\nv - lower scale note 4\nb - lower scale note 5\nn - lower scale note 6\nm - lower scale note 7\ncmd q - decrement scale tonic note\ncmd w - increment scale tonic note\ncmd e - decrement scale type\ncmd r - increment scale type\ncmd a - halve grid size\ncmd s - double grid size\ncmd d - decrement octave\ncmd f - increment octave\ncmd y - decrement chord type\ncmd z - decrement chord type (in german version)\ncmd x - increment chord type\ncmd c - decrement chord inversion\ncmd v -increment chord inversion\ncmd g - cursor one step right in grid\nright arrow -  cursour one step right\nleft arrow - cursor one step left\nF1 - this help")
  end
 
end
