lists= dir('C*');
for i = 1:length(lists)
    cd(join(['./',lists(i).name]))
    pwd
    try
        get_temp_comdiv
    catch
        cd('../')
        continue
    end

    cd('../')
end
