function [is_empty] = isempty(e)
% Returns true if an emg object has no data, time info, tags or sections

    is_empty = ...
        isempty(e.data) && ...
        (e.time.start == 0 && e.time.end == 0) && ...
        (isempty(e.tags) || isempty(setdiff(fieldnames(e.tags), {'valid', 'units', 'metrics'}))) && ...
        isempty(fieldnames(e.sections));    
end