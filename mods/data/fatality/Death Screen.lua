function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'dead'); 
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'bfChara_loss_sfx'); 
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); 
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');
end