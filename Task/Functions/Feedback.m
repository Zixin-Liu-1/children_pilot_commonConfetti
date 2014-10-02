function [txt, header] = Feedback(Data, taskParam, subject, condition)
% Gives subject feedback about performance.
%noch f�r den fall dass nur 1 trial gibt
%keyboard
            hits = sum(Data.hit == 1);
        
            rewTrials = sum(Data.actRew == 1);
            noRewTrials = sum(Data.actRew == 2);
            
          
            rewCatches = max(Data.accPerf)/taskParam.gParam.rewMag;
            noRewCatches = hits - rewCatches;
            maxMon = (length(find(Data.boatType == 1))...
                * taskParam.gParam.rewMag);
            
               
                header = 'Performance';
                if subject.rew == 1
                    colRewCap = 'Blue';
                    colNoRewCap = 'Green';
                elseif subject.rew == 2
                    colRewCap = 'Green';
                    colNoRewCap = 'Blue';
                end
                
                if isequal(condition, 'practice') || isequal(condition, 'practiceNoOddball') || isequal(condition, 'practiceOddball')
                    wouldHave = ' would have ';
                else
                    wouldHave = ' ';
                end
                txt = sprintf(['%s shield catches: %.0f of '...
                    '%.0f\n\n%s shield catches: %.0f of '...
                    '%.0f\n\nIn this block you%searned %.2f of '...
                    'possible $ %.2f.'], colRewCap, rewCatches,...
                    rewTrials, colNoRewCap, noRewCatches, noRewTrials,...
                    wouldHave, max(Data.accPerf), maxMon);
                
                
            
end
