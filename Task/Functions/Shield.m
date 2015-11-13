function Shield(taskParam, allASS, pred, color)

if taskParam.gParam.oddball == false
    if color == 1
        shieldColor = taskParam.colors.gold;
    elseif color == 0
        shieldColor = taskParam.colors.silver;
    end
else
    if color == 1
        shieldColor = taskParam.colors.blue;
    elseif color == 0
        shieldColor = taskParam.colors.green;
    end
end

rotRad = taskParam.circle.rotationRad + 10;
OutcSpot = pred - (allASS/2);
zero = taskParam.gParam.zero;
Screen('FrameArc',taskParam.gParam.window, shieldColor, [zero(1)...
    - rotRad, zero(2) - rotRad, zero(1) + rotRad, zero(2) + rotRad],...
    OutcSpot, allASS, 30, [], [])

end

