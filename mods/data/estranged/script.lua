function opponentNoteHit()
    health = getProperty('health')
    if getProperty('dad.curCharacter') == 'evil-frisk' and getProperty('health') > 0.1 then
        setProperty('health', health- 0.05);
    end
end