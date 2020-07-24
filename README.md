# Bigwig
Summer student well log data visualization

Assignment
How to visualize and statistically compare huge amount of well data OPEN SOURCE

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

Team members
Amalie Sande Rødde: 4th year Geology student at University of Bergen. 
Hans Christian Walker: Master degree in petroleum technology with specialization in natural gas at University of Stavanger. 
Sebastian Ægidius:
Tobias Hermansen: 4th year Geology student at University of Bergen. 
Vetle Nevland: 2nd year Geophysics student at University of Oslo. 

Who did what?
Amalie: Visualization, research, testing
Hans Christian: Visualization, research, testing
Sebastian: Coding, research
Tobias: Visualization, research, testing
Vetle: Coding, research

What the code will give you
- Well logs, histogram and scatterplot
- Comparing many wells
- Storage of huge amount of data
- Highlight areas where data not match from same well with different sources

Why Equinor want this
- Equinor has created a program that can process a lot of well log data, but has not gotten to the stage to visualize it. A desire by the company is to find commands that visualize these results properly and create a script that is easy to follow for employees in all working areas. 
- Follow up by visualizing these results. A further desire is to plot multiple wells to identify new trends easier or compare several well logs in an orderly way.  
 
RUNBOOK - guide of how you could run through the code:  
1. You have to choose if you want to create your own las.files or collect your las.files from your own database
  - If you want to create your own las.files, you should run the “LAS generator” code blocks. 
    You will then get some input possibilities where you must choose how many las.files you want to create, start and end depth for the well, what the name of the well would     be and what name of the files would be. 
2. For huge amount of data it will be smart to convert the las.files to Parquet to minimize the capacity
  - For converting your las.files to Parquet you should run the “find files from local pc”  
3. After converting your Parquet file you have to upload the Parquet file into the code and sort it by using Dask
  - Run the “Creating Dask from las-generated files” code block
4. Start the visualization part
5. Click on the map to choose which wells you want to visualize
6. Choose what type of plot you want to visualize, and you could change your axes after what you want
  - When you run the “scatter and histogram” block you will get two different alternatives. The first alternativ will show one scatterplot with a datashader, where you could     change the axes and color the plot by the different parameters. Beneath the scatterplot there will be two histograms which correspond with the axes you choose. 
  - The second alternative you will be able to compare two scatterplots. You can choose how many wells each scatterplot should contain. Beneath there will be two histograms      which correspond with the axes you chose and the columns in the histograms are divided into the same wells you chose in the scatterplot.   

How to read the result
o   Did we make any assumptions?
  
