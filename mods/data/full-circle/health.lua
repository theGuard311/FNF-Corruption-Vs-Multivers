function opponentNoteHit()
    health = getProperty('health')
    if getProperty('dad.curCharacter') == 'o-asriel-chara' and getProperty('health') > 0.1 then
        setProperty('health', health- 0.01);
    end
    if getProperty('dad.curCharacter') == 'o-asriel-chara-2' and getProperty('health') > 0.1 then
        setProperty('health', health- 0.03);
    end

end