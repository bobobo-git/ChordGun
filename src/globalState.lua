local workingDirectory = reaper.GetResourcePath() .. "/Scripts/ChordGun/src"
require(workingDirectory .. "/Timer")
require(workingDirectory .. "/preferences")

mouseButtonIsNotPressedDown = true

currentWidth = 0

scaleTonicNote = getScaleTonicNote()
scaleType = getScaleType()

local numberOfSecondsForChordPreview = 5
chordPreviewTimer = Timer:new(numberOfSecondsForChordPreview)