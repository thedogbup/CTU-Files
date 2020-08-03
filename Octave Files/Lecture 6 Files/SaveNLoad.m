clear;

a = 'Heads, '
b = 'Shoulders, '
c = 'Knees, '
d = 'and Toes'
e = [a b c d];

disp(e)
disp('')

disp('Should show original a, b, c, d, and e values:')
whos() 

save('bodyparts', 'b', 'c', 'd', 'e');

clear;

disp('Should show nothing:')

whos()

disp('')

load('bodyparts', 'c', 'd', 'e');

disp('Should only show c, d, and e:')

whos()

disp('')

disp(strcat('Original: ', e))
disp('')

a = 'Tails, '
b = e(8:18)
e = [a b c d];

disp('')
disp(strcat('New: ', e))
disp('')

disp('Should show new a value, and original b, c, d, and e values:')

whos()