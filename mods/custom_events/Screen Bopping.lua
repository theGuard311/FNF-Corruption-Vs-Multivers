local screenbop = false

function onEvent(n,v1,v2)
	if n == 'Screen Bopping' then
		if v1 == 'true' then

			screenbop = true
		end
		if v1 == 'false' then
			
			screenbop = false
		end
	end
end

function onUpdate()
	if screenbop == true then
        if curStep % 4 == 0 then
            triggerEvent('Add Camera Zoom', '0.010', '0.003')
        end
    end
end

function onUpdatePost()

end