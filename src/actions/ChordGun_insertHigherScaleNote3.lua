local workingDirectory = reaper.GetResourcePath() .. "/Scripts/ChordGun/src"
require(workingDirectory .. "/actionFunctions")


updateScaleData()
insertHigherScaleNote3Action()