% 1 - Miami
% 2 - Atlanta
% 3 - DC
% 4 - New York City
% 5 - Vancouver

stationnumber = input('Enter the station #: ')

switch stationnumber
	case 1
		disp('That is Miami Station.')
	case 2
		disp('That is Atlanta Station.')
	case 3
		disp('That is DC Station.')
	case 4
		disp('That is NYC Station.')
	case 5
		disp('That is Vancouver Station.')
	otherwise
		disp('That is not a valid station!')
end

if(stationnumber >= 3 && stationnumber <= 5)
	disp('You are in the Northern Half.')
elseif(stationnumber < 3 && stationnumber > 0)
	disp('You are in the Southern Half.')
end

%switch stationnumber
%	case (stationnumber >= 3 && stationnumber <= 5)
%		disp('You are in the Northern Half.')
%	case (stationnumber < 3 && stationnumber > 0)
%		disp('You are in the Southern Half.')
%end
