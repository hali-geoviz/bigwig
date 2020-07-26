# Bigwig
Summer student well log data visualization

Assignment
- How to visualize and statistically compare huge amount of well data OPEN SOURCE

Our problem/task has been based on open source data. Our mentor Ashley Russell presented us two possible ways to collect data from open source. First option was open source well data from the Australian Government and the second option was creating fake well data as las.files. We started to look in the Australian database because we wanted to get an idea of how the las.files is written and learn how well logs are set up. It turned out that it would take some time if we were to find thousands of wells in the database that had a good composite. Therefore we changed our focus and started to create fake las.files. We manage to create a program that could generate fake well data fast. In our fake well data, we created values for 9 parameters

Our 9 parameters we were supposed to focus on:
- Gamma ray
- Deep Resistivity
- Medium Resistivity
- Shallow Resistivity
- Neutron Porosity
- Density
- Sonic Velocity
- Caliper
- Bit Size

What the code will give you
- Well logs, histogram and scatterplot
- Comparing many wells
- Storage of huge amount of data
- Highlight areas where data not match from same well with different sources

Why Equinor want this
- Equinor has created a program that can process a lot of well log data, but lacks a good approach for visualizing it. A desire by the company is to find commands that visualize these results properly and create a script that is easy to follow for employees in all working areas. It should be a simple approach to apply your own collection of las-files (few or many) and visualize the result in an easy-to-read, informative dashboard.
- Follow up by visualizing these results. A further desire is to plot multiple wells to identify new trends easier or compare several well logs in an orderly way.  
 
RUNBOOK - guide of how you could run through the code:
0. Before running the actual code you need to have Python and Jupyter Notebook installed on your computer. It's highly recommended to install Jupyter Notebook as a part of Anaconda. This is because it contains Anaconda Prompt, which is a more stable software for downloading the necessary modules.
There is a variety of modules used in the code, some of which needs to be downloaded manually. To do this, it is recommended to use Anaconda Prompt, as this command window solves dependency issues between packages. To install a package, run: 'conda install <name_of_package>'
1. You have to choose if you want to create your own las.files or collect your las.files from your own database
  - If you want to create your own las.files, you should run the “LAS generator” code blocks. The variable 'filepath' should contain the las.file from the well that you want to use as basis for the fake data. It is important that, in this variable, you correctly navigate to the folder where the desired las.file is located. Moreover, in the variable 'all_curves' you need to apply the name for the 9 parameters exactly as they are named in the relevant las.file (in the Curve Information section).
    You will then get some input possibilities where you must choose how many las.files you want to create, start and end depth for the well, what the name of the well should     be and what name of the files should be. 
  - OBS: If you choose las.files from your own database, make sure that you rename the 9 relevant parameter names so each las.file has the same parameter name for each unique parameter.
  - After importing the las-files, you will convert them to dataframe and replace all NaN values (this is important for not getting errors when plotting).
2. For huge amounts of data it will be smart to convert the las.files to Parquet format to minimize the capacity
  - For converting your las.files to Parquet you should run the “find files from local pc”  
3. After converting your Parquet file you have to upload the Parquet file into the code and sort it by using Dask
  - Run the “Creating Dask from las-generated files” code block
4. Start the visualization part
5. Choose what type of plot you want to visualize, and you could change your axes after what you want
  - When you run the “scatter and histogram” block you will get two different alternatives. The first alternativ will show one scatterplot with a datashader, where you could     change the axes and color the plot by the different parameters. Beneath the scatterplot there will be two histograms which correspond with the axes you choose. 
  - The second alternative you will be able to compare two scatterplots. You can choose how many wells each scatterplot should contain. Beneath there will be two histograms      which correspond with the axes you chose and the columns in the histograms are divided into the same wells you chose in the scatterplot.
6. In the section "Clustering - DBSCAN" you can run the machine-learning algorithm DBSCAN on your dataset, to produce an unsupervised clustering of the data. This is a convenient method for grouping interesting parameter relations and "funny looking things". The widget "Param X" sets the parameter to use as x-axis, and "Param Y" sets the parameter for the y-axis. "From_well_nr" and "To_well_nr" set the well number (as ordered in the dataframe) to plot from and the well number to plot to, respectively. The last widget, "Eps", determines how sensitive the algorithm is for assigning distinct clusters.
7. The "Dynamic Map" section produces a little interactive dashboard containing a map and some widgets. For the widget "DataFrame", you must provide the name of the dataframe that contains the wells you want to plot. The widget "Point color" sets a color code to each map point, and reflects the magnitude of the chosen parameter for each well. The widget "Param" sets the main parameter that you want to plot. The widget "Scatter y-axis" sets the second parameter that you want to plot the main parameter against in the scatterplot. "Alpha" sets the transparency of the curve- and scatterplot. The "Find well" widget lets you choose a specific well among all possible wells, and show its location on the world map (pink circle). Lastly, the "Distance" widget determines the size of the surrounding area, and then also the corresponding wells, that is included in the plotting when clicking on a well. When you click on a well, you will get information about that well (as well as other wells nearby) displayed as curveplot, scatterplot and histogram. The selected well is located in the center of the yellow circle on the map. The different colors in the scatterplot represent the different wells, and the black vertical line shows the mean value of the main parameter for the selected well. 

How to read the result
 - Did we make any assumptions?

Team members
- Amalie Sande Rødde: 4th year Geology student at University of Bergen. 
- Hans Christian Walker: Master degree in petroleum technology with specialization in natural gas at University of Stavanger. 
- Sebastian Ægidius:
- Tobias Hermansen: 4th year Geology student at University of Bergen. 
- Vetle Nevland: 2nd year Geophysics student at University of Oslo. 

Who did what?
- Amalie: Visualization, research, testing
- Hans Christian: Visualization, research, testing
- Sebastian: Coding, research
- Tobias: Visualization, research, testing
- Vetle: Coding, research
