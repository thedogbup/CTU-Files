# MATLAB Lecture 6
## File Handling
### Notes by bup, July 22nd 2020, for CTU
[A rich format version is avaliable here.](https://docs.google.com/document/d/e/2PACX-1vTbc6L6riOqENycdWfhm2Ev_H3ORDwvHerVo5tq1FCw5JypK2lHnD0kkziNA2VLMLQ1hkWz7c4VPSrW/pub)
***

# Importing Data
## Summary
One of the features of MATLAB is the ability to import data from many file types and process them. As such, it is easy to set up your own data collections and use MATLAB to analyze the data.

## How-To
### textscan
If you have raw data in a text file or string, you can use the `textscan` method to extract the data into a cell with variables. For example, take a string with a list of decimals:

#### Command Window
```
>> nums = ‘1.0 2.56 3.5 4’;
>> textscan(nums, ‘%f’)
ans =
{
	[1,1] =

	1.0000
	2.5600
	3.5000
	4.0000

}
```
Using the format `%f`, `textscan` will save each number into a cell array with doubles.  
You can also import data other than numbers using `textscan`. In this case, I am given a text file with numbers and strings: 

#### Input File (data1.txt)
```
WebDev  1  45
Mikdore 2  323
Sathya  3  127
```
#### ReadText.m
```
str = fopen('data1.txt');
out = textscan (str, ‘%d %s %d’)
fclose('all');
```
#### Output
```
>> ReadText

out =
{
	[1,1] =

	1
	2
	3

	[1,2] =
	{
	[1,1] = WebDev
	[2,1] = Mikdore
	[3,1] = Sathya
}

	[1,3] =

	 45
	323
	127

}
```

Note that `fopen` opens a file for reading/writing, and `fclose` closes the file when we’re done using it. Also, `%s` and `%d` corresponds to string and integer format, respectively. 

### importdata
For data with headers and delimiters, importdata is more useful. It’s like an advanced version of textscan that will read directly from the file.

#### Input File (data2.txt)
[Courtesy of MathWorks][1]
```
Day1  Day2  Day3  Day4  Day5  Day6  Day7
95.01 76.21 61.54 40.57  5.79 20.28  1.53
23.11 45.65 79.19 93.55 35.29 19.87 74.68
60.68  1.85 92.18 91.69 81.32 60.38 44.51
48.60 82.14 73.82 41.03  0.99 27.22 93.18
89.13 44.47 17.63 89.36 13.89 19.88 46.60
```
#### ImportNums.m
```
out = importdata('data2.txt', ' ', 1)
```
#### Output
*Sorry if the text wrapped*
```
>> ImportNums

out =

  scalar structure containing the fields:

	data =

	   95.01000   76.21000   61.54000   40.57000    5.79000   20.28000    1.53000
	   23.11000   45.65000   79.19000   93.55000   35.29000   19.87000   74.68000
	   60.68000    1.85000   92.18000   91.69000   81.32000   60.38000   44.51000
	   48.60000   82.14000   73.82000   41.03000    0.99000   27.22000   93.18000
	   89.13000   44.47000   17.63000   89.36000   13.89000   19.88000   46.60000

	textdata =
	{
	  [1,1] = Day1  Day2  Day3  Day4  Day5  Day6  Day7
	}

	colheaders =
	{
	  [1,1] = Day1
	  [1,2] = Day2
	  [1,3] = Day3
	  [1,4] = Day4
	  [1,5] = Day5
	  [1,6] = Day6
	  [1,7] = Day7
	}
```

Keep in mind that the delimiter is the character that separates the values. Here, it is the space, but some files may use commas or dashes to separate data.  
Also, `importdata` can import multiple file types:

#### Octave Documentation
[More information][3]
> Different file types are supported:
> * ASCII table
> * Import ASCII table using the specified number of header rows and the > specified delimiter.
> * Image file
> * MATLAB file
> * Spreadsheet files (depending on external software)
> * WAV file

#### MATLAB Documentation
[More information][4]
> * .mat
> * ASCII
> * Images (including .bmp, .gif, .ico, .jpg, and .png)
> * Audio (including .wav, .ogg, .au, .aiff, .mp3, and .mp4)

### Others
Though `textscan` and `importdata` are the most common, there are numerous other ways to import data, including `scanf`, `readcell`, `readmatrix`, `readtable`, etc. You may want to look into those methods in the future, as some may be more efficient than others. [Learn more][5]

***

# Storing and Accessing Data
## Summary
When you’re done using a program, you can save the data for later, and retrieve it at any time using the `save` and `load` commands.

## How-To
### save
The `save` method has many different parameters, not all are listed here. Be careful, however, as MATLAB and Octave implement them slightly differently:

> `save filename`
> (Command Window only) Saves all active variables into a file with name `filename`. In MATLAB, this is a .mat file. `filename` cannot be an existing character vector or string variable.

> `save(filename)`
> Same as above, but in function form for scripts. `filename` is also a character vector or string.

> `save(filename, vars)`
> `save(filename, var1, var2, ...)`
> `save filename vars`
> Will only save selected variables. One or more variables can be selected, their name in a character vector or string. `vars` cannot be an existing character vector or string variable.

> `save(filename, vars, options)` [MATLAB options][6]
> `save(options, filename, vars)` [Octave options][7]
> Various options for saving data. `-append` will add data instead of overwriting an existing file. Octave will not save files in .mat by default, so `-zip` allows you to compress them like MATLAB does by default.

Note that Octave does not save files as .mat by default. It saves data as a text file with no extension (quite peculiar, I know). Refer to the respective websites for additional information regarding save options and formats.

### load
Conversely, you are also able to load variables from .mat files:

> `load filename`
> (Command Window only) Loads all variables from the file with name `filename`. In MATLAB, this is a .mat file. `filename` cannot be an existing character vector or string variable.

> `load(filename)`
> Same as above, but in function form for scripts. `filename` is also a character vector or string.

> `load(filename, vars)`
> `load(filename, var1, var2, ...)`
> `load filename vars`
> Will only load selected variables. One or more variables can be selected, their name in a character vector or string. `vars` cannot be an existing character vector or string variable.

> `load(filename, vars, options)`
> `load(filename, vars, '-ascii' | '-mat', '-regexp')`[MATLAB options][8]

> `load(options, filename, vars)`
> `load('-ascii' | 'mat’ | 'text' | 'hdf5', filename, vars)`[Octave options][9]
> Various options for loading data. `-ascii` will force both MATLAB and Octave to read the file as text with no header, like `textscan`. `-mat` will force both to read files as MATLAB’s .mat format.  
In MATLAB, certain variables can be excluded using regular expressions with the option `-regexp`.  
In Octave, `-text` will force it to read files in Octave’s file format, and `-hdf5` will force it to read files in hdf5 format.

### Implementation
This program will create some variables, store some of them, and retrieve them.

#### SaveNLoad.m
```
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
```
#### Output
```
>> SaveNLoad

a = Heads,
b = Shoulders,
c = Knees,
d = and Toes
Heads, Shoulders, Knees, and Toes

Should show original a, b, c, d, and e values:
Variables in the current scope:

   Attr Name        Size                     Bytes  Class
   ==== ====        ====                     =====  =====
		a           1x7                          7  char
		b           1x11                        11  char
		c           1x7                          7  char
		d           1x8                          8  char
		e           1x33                        33  char

Total is 66 elements using 66 bytes

Should show nothing:

Should only show c, d, and e:
Variables in the current scope:

   Attr Name        Size                     Bytes  Class
   ==== ====        ====                     =====  =====
		c           1x7                          7  char
		d           1x8                          8  char
		e           1x33                        33  char

Total is 48 elements using 48 bytes

Original:Heads, Shoulders, Knees, and Toes

a = Tails,
b = Shoulders,

New:Tails, Shoulders, Knees, and Toes

Should show new a value, and original b, c, d, and e values:
Variables in the current scope:

   Attr Name        Size                     Bytes  Class
   ==== ====        ====                     =====  =====
		a           1x7                          7  char
		b           1x11                        11  char
		c           1x7                          7  char
		d           1x8                          8  char
		e           1x33                        33  char

Total is 66 elements using 66 bytes
```
#### bodyparts file
```
# Created by Octave 5.2.0, Wed Jul 22 23:03:13 2020 GMT <unknown@***>
# name: b
# type: sq_string
# elements: 1
# length: 11
Shoulders,

# name: c
# type: sq_string
# elements: 1
# length: 7
Knees,

# name: d
# type: sq_string
# elements: 1
# length: 8
and Toes

# name: e
# type: sq_string
# elements: 1
# length: 33
Heads, Shoulders, Knees, and Toes
```

# Conclusion
With scripting and file handling, you can now work on large amounts of data, gathered from the field or processed with scripting, and store the data for later. This is the backbone of research, which makes MATLAB popular for academic pursuits. Try to see what you can and can’t import, and see what analyses you can get from large amounts of data!

***

[1]: https://www.mathworks.com/help/matlab/ref/importdata.html

[3]: https://octave.sourceforge.io/octave/function/importdata.html

[4]: https://www.mathworks.com/help/matlab/ref/importdata.html

[5]: https://stackoverflow.com/questions/9440592/fastest-matlab-file-reading

[6]: https://www.mathworks.com/help/matlab/ref/save.html (MATLAB `save` format options)

[7]: https://octave.org/doc/v4.2.0/Simple-File-I_002fO.html (Octave `save` format options)

[8]: https://www.mathworks.com/help/matlab/ref/save.html (MATLAB `load` format options)

[9]: https://octave.org/doc/v4.2.0/Simple-File-I_002fO.html (Octave `load` format options)
