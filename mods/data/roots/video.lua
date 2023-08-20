function onEndSong()
    if isStoryMode and not seenCutscene then
        startVideo('ThornsEnding')
        seenCutscene = true
        return Function_Stop
    end
    return Function_Continue
end
