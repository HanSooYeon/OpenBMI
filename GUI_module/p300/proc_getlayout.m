function char_layout = proc_getlayout(speller_size, rect)

up_size = 200;
down_size = 50;

for i = 1:speller_size(1)
    for j = 1:speller_size(2)
        char_layout((i-1)*speller_size(2) + j, :) = ...
            [(rect(3)/speller_size(2) - ...
            (rect(3)/speller_size(2))/2) + ...
            (rect(3)/speller_size(2)*(j-1)) ...
%             (rect(4)/speller_size(1) - (rect(4)/speller_size(1))/2) + ...
%             (rect(4)/speller_size(1)*(i-1))];
            up_size + ((rect(4)-up_size-down_size)/speller_size(1) - ...
                ((rect(4)-up_size-down_size)/speller_size(1))/2) + ...
                i*20 - 80 + ...
            ((rect(4)-up_size-down_size)/speller_size(1)*(i-1))];

%             (((rect(4)-up_size)/speller_size(2))-(((rect(4)-200)/speller_size(2))/2)*j)];
%         ((rect(4))/speller_size(2) - ((rect(4))/speller_size(2))/2)*j];
    end
end