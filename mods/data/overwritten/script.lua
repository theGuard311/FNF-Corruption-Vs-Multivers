function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.69 then
        setProperty('health', health- 0.015);
    end
end