font = "determination-alt-singlecase-mono.ttf"

function onCreatePost()
    setTextFont('scoreTxt', font)
    setTextSize('scoreTxt', 12)
    setTextFont('timeTxt', font)
    setTextSize('timeTxt', 12)
    setProperty('botplayTxt.visible', false)

    --setTextFont("text", "Font.ttf");
end
