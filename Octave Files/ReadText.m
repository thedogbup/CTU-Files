str = fopen('data1.txt');

out = textscan (str, "%d %s %d")

fclose('all');