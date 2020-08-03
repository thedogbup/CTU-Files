# MATLAB Lecture 8
## 2D Plotting
### Notes by bup, August 3rd 2020, for CTU
[A rich format version is avaliable here.](https://docs.google.com/document/d/e/2PACX-1vQ1vumpBqQl5rTm1HTqxcNb5SaxjiupLAq7HkxC3CLjP_xc2s0CXIDq2xZ2zUoaHxGzDrOxfNkx5X7P/pub)

# Plotting Basics
## Summary
One of the most prized features of MATLAB is the ability to process large amounts of data and display them in a way that is easy to analyze. When you are presenting data in the form of a chart, the goal is to convey the information in the best way possible for your audience to understand. Accordingly, MATLAB provides a great amount of tools and options to customize your charts to the fullest extent.

## Graph Elements
Both MATLAB and Octave will open a new window when a graph is plotted. Some elements that are present in most graphs are shown:

#### ExamplePlot.m
```matlab
x = linspace(1, 2 * pi, 32);
y1 = sin(x);
y2 = cos(x);

title('Sin/Cos Graph')
xlabel('X Values')
ylabel('Y Values')

hold on;
plot(x, y1)
plot(x, y2)
legend('sin(x)', 'cos(x)')
```
When you run the code, the output looks like this:

#### MATLAB Graph
![MATLAB Graph](https://cdn.discordapp.com/attachments/539880565185183754/739966340395434035/unknown.png)

#### Octave Graph
![Octave Graph](https://cdn.discordapp.com/attachments/539880565185183754/739966463049465856/unknown.png)

The important takeaways from the code:
* ``title`` sets the title of the graph, on the top.
* ``xlabel`` and ``ylabel`` provide the axis labels.
* ``legend``, like it should, indicates which line is which.
* ``plot`` is the basic 2D plotting command.

The tools in the window allow you to make temporary changes to the graph, like adding in text, panning, and zooming in or out on the graph. You can also save the graphs as images or other relevant formats.

## Command Details
