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
   - Unsupervised clustering of data
   - A storage for huge amount of data
   - An interactive map for quick statistical analysis of well log data from chosen wells

Why Equinor want this
   - Equinor has created a program that can process a lot of well log data, but lacks a good approach for visualizing it. A desire by the company is to find commands that visualize these results properly and create a script that is easy to follow for employees in all working areas. It should be a simple approach to apply your own collection of las-files (few or many) and visualize the result in an easy-to-read, informative dashboard.
   - Follow up by visualizing these results. A further desire is to plot multiple wells to identify new trends easier or compare multiple well logs in an orderly way.  
   - This project is the result of non computer scientsts learning and working on the given problem for roughly six weeks and stands as a testemony for how far the possibilities of readily available open source programming laguages such as python stretch.

RUNBOOK - guide of how you could run through the code:

0. Before running the actual code you need to have Python and Jupyter Notebook installed on your computer. It's highly recommended to install Jupyter Notebook as a part of Anaconda. This is because it contains Anaconda Prompt, which is a more stable software for downloading the necessary modules.
There is a variety of modules used in the code, some of which needs to be downloaded manually. For help on how to install packages through Anaconda, visit [this page](https://docs.conda.io/projects/conda/en/latest/user-guide/concepts/installing-with-conda.html).
   - The code is divided into three main sections: Initializing well log data; Data Management; Visualization.

**Initializing well log data:**

1. You have to choose if you want to create your own las.files or collect las.files from your own database
   - If you want to create your own las.files, you should run the **Fake wells: LAS generator** code blocks. The variable 'filepath' should contain the las.file from the well that you want to use as basis for the fake data. It is important that, in this variable, you correctly navigate to the folder where the desired las.file is located. Moreover, in the variable 'all_curves' you need to apply the name for the 9 parameters exactly as they are named in the relevant las.file (in the Curve Information section).
       You will then get some input possibilities where you must choose how many las.files you want to create, start and end depth for the well, what the name of the well should     be and what name of the files should be. 
   - If you want to run the code for las.files from your own database, you need to run the code block under **Real wells: Find and import real las-files**. Here you need to adjust the 'basedir' variable to navigate to the folder where your las.file collection is located. This section can give you plenty usefull data on the files you locate and create dataframes from such as file name, file path, and numbers of rows in each las file. 

**Data Management:**

2. To proceed further in the code, you must choose whether you want to continue with your real wells or the fake ones. If real wells, put 0 in the input-variable 'real_or_fake'. If fake wells, put 1 in it. 
<img width="486" alt="real_or_fake" src="https://user-images.githubusercontent.com/67001583/88694922-7e28d880-d101-11ea-91e7-f6a6d335d432.PNG">

3. If you proceeded with real wells, you should run the code blocks under the **Real well** section. In 'Structure the data' make sure that you rename the 9 relevant parameter names so each las.file has the same parameter name for each unique parameter. Then you will need to merge them into one column. Also, you need to provide the latitude and longitude values for each las.file in the lists 'list_of_lats' and 'list_of_lons', respectively. OBS: This section will be time consuming if you have many wells, as it lacks an automated functionality.
   - For huge amounts of data it will be smart to convert the las.files to Parquet format to minimize the capacity. For converting your las.files to Parquet you should run the **Convert to Parquet** section. This allows you to upload the Parquet file into the code and sort and save it using Dask. If you want another name of the parquet file, just change real_df in 'real_df.parquet to whatever name you want.
4. If you proceeded with fake wells, you should run the code blocks under the 'Fake wells' section. 
   - For the 'num_curves' variable, you need to provide the name of the depth-column in your dataframe (which is 'DEPTH' by default). 
   - The ```lat_long()``` function takes the full list of las-files and the corresponding dataframe as input arguments, and provides random latitudes and longitudes for the wells.
   - The section 'Create Dask dataframe' will convert the dataframe to a Parquet file, and then load this Parquet file into a Dask dataframe.

**Visualization:**

5. Choose what type of plot you want to visualize, and you could change your axes after what you want
   - When you run the **Scatter and Histogram** block you will get two different alternatives. The first alternative will show one scatterplot with a datashader, where you could change parameter for the axes (determined by the widgets 'paramX' and 'paramY') and also color the plot by the different parameters (set by the widget 'param_color'). Beneath the scatterplot there will be two histograms which correspond with the axes you choose. The scatterplot is an overlay of two groups of wells. The range of group A is determined by the widgets 'from_wellA' and 'to_wellA', and group B is determined by the widget 'to_wellB'. 'Datashade' sets whether to display the points using datashader or not. Example how the widgets are structured: 
   <img width="262" alt="widgets" src="https://user-images.githubusercontent.com/67001583/88695998-f512a100-d102-11ea-8a34-ba1e2aa7b109.PNG">
   
   - For the second alternative you will be able to compare two scatterplots. You can choose how many wells each scatterplot should contain, determined by the widgets 'from_wellA', 'to_wellA', 'from_wellB' and 'to_wellB'. The widgets 'paramX', 'paramY', 'param_color' and 'datashade' work similar as for the first alternative. The checkbox-widget 'scatter_overlay' allows you to plot the two well-groups in the same plot. Beneath the scatterplots there will be two histograms which correspond with the axes you chose and the columns in the histograms are divided into the same wells you chose in the scatterplot.

6. Next section is **Well log and parameter comparison**. This part of the visualization is directed towards the thought of a work flow of analysing and comparing huge amounts of well log data and then picking out a few wells to go more into depth on. Here there are two different comaprison approaches: 

   - "Comparing two parameters from same well": Apart from the very obious plot title the first one is set to specifically look at only one well's parameters and graphs two parameters against each other. the widget "well" will allow you to select what well you want to view where the drop down menu is a list of all wells in the dataframe. the second widget labeled "y_axis" is a text box that is pre-set to display the depth parameter of the chosen las file, but can manually be changed to what ever parameter you want, given that you know the name of it. third and fourth widgets are two drop down menus for what parameter you want to compare against each other on the x-axis. For "x_axis" and "x_axis2" you can choose between all the parameters that the las files in the dataframe contain.

![example of plot info_3](https://user-images.githubusercontent.com/66956640/88723734-a5939b80-d129-11ea-9c84-bd77fba18b24.jpg) ![example of plot info_4](https://user-images.githubusercontent.com/66956640/88724122-46825680-d12a-11ea-9a69-3e3085763da2.jpg)

   - "Comparing five wells with two parameters each": The second cell block in this section is a more extensive version of the first one and has a few more widgets to play around with. This cell will create five plots to compare five different well logs. as such the five first widgets ("well1", "well2", "well3", "well4", "well5") all hold the functionality of choosing from a drop down menu, comprised of all wells in the dataframe, what well each of the five plots will show. the next widgets "y_axis", "x_axis" and "x_axis2" does the same as in the first cell of this section of setting the y parameter and two x parameters. The widgets after these two are sliders, "width" and "height", that will controll the width and height of the plots so as to make a comparison of all five plots more customisable to how much you want to see and overview of the graphs. the last two widgets are the "overlay" and "scatter_line" checkbox widgets. the "overlay" widget when checked will take the five plots and combine them to one single plot with all graph on top of each other. As the initial graphs are line graphs the combined overlay plot will very wuickly become unreadable which make the last "scatter_line" widget useful as it takes all five graphs, combined or not, and turn them into scatter plots. For use it is important to see that although both line and scatter versions of the five overlayed plots can be messy when zooming in on the 'mess', each point plotted will have information showing its depth values as well as what graph and which of the two parameters from that well it is:

![example of plot info_2](https://user-images.githubusercontent.com/66956640/88723921-fb684380-d129-11ea-93e1-cc3fcdb2f31d.jpg) ![example of plot info](https://user-images.githubusercontent.com/66956640/88723995-0e7b1380-d12a-11ea-8622-c6dcf725b763.jpg)


7. In the section **Clustering - DBSCAN** you can run the machine-learning algorithm DBSCAN on your dataset, to produce an unsupervised clustering of the data. This is a convenient method for grouping interesting parameter relations and "funny looking things".
   
   <img width="236" alt="cluster_widget" src="https://user-images.githubusercontent.com/67001583/88709365-4fb4f880-d115-11ea-8ce6-f806fad2d4f3.PNG"> <img width="285" alt="cluster_plot2" src="https://user-images.githubusercontent.com/67001583/88709672-c94ce680-d115-11ea-80eb-217cb09dc655.PNG">
   
   - The widget "Param X" sets the parameter to use as x-axis, and "Param Y" sets the parameter for the y-axis. "From_well_nr" and "To_well_nr" set the well number (as ordered in the dataframe) to plot from and the well number to plot to, respectively. The last widget, "Eps", determines how sensitive the algorithm is for assigning distinct clusters. The printed Silhouette Coefficient gives a score from 0 to 1 of how appropriate the clustering is for the points.
8. The **Dynamic Map** section produces a little interactive dashboard containing a map, some widgets and three different plots - all interconnected. 
   - The function ```setup_mainDF()``` initializes your main dataframe (explanation below) to be used in the dynamic map. By default, this takes the mean value of each parameter for each well (set up by the variable mean_df, so this needs to be adjusted if you want another statistical representation than the mean value). 
   - For the widget "main_df", you must provide the name of the main dataframe (default in code: param_df). This is supposed to be a sub-dataframe of your original dataframe (big_df by default) and must contain one value for each parameter for each well (e.g. the mean value of each parameter, as is the default in the code). All wells in the main dataframe must correspond to that of your original dataframe (none excluded, nor any extra added). The purpose of the main dataframe is to apply a color grouping for the map points, and set up a dynamic connection to the plots.
   - The widget "point_color" sets a color code to each map point, and reflects the magnitude of the chosen parameter for each well. 
   - The widget "param" sets the main parameter that you want to plot. 
   - The widget "y_scatter" sets the second parameter that you want to plot the main parameter against in the scatterplot.
   - The "Find well" widget lets you choose a specific well among all possible wells, and show its location on the world map (pink circle). OBS: For this to work, you must locate the 'wells' Dropdown-widget (as part of ```@interact```) and change, if necessary, 'param_df' to whatever dataframe you have chosen for the "main_df"-widget (which by default is 'param_df').
   - "Alpha" sets the transparency of the curve- and scatterplot. 
   - Lastly, the "Distance" widget determines the size of the surrounding area, and then also the corresponding wells, that is included in the plotting when clicking on a well. When you click on a well, you will get information about that well (as well as other wells nearby) displayed as curveplot, scatterplot and histogram. The selected well is located in the center of the yellow circle on the map. The different colors in the scatterplot represent the different wells, and the black vertical line shows the mean value of the main parameter for the selected well. 
   
   <img width="476" alt="map" src="https://user-images.githubusercontent.com/67001583/88713857-395e6b00-d11c-11ea-83c6-023e4e7c7a5b.PNG">

Python modules we've experimented with, though did not end up in our finalized code:
   - Ipyleaflet. We spent quite some time experimenting with this package. There were some cool online examples of interactive map that motivated us to experiment with it. We did manage to create a neat map with a few interactive elements. However, after more research, we realized it was lacking some interactive elements that we were interested in. It was difficult creating a varied interactive dashboard. This, combined with a weak online documentation, made us eventually abandon this package.
   - Welly. A package with main purpose to graph well logs. Experimenting with it, produce some simple yet informative well logs. Ideal to provide general inforamtion about the file in regards to where the well is located, type of measurments in the file, and depth of mesurments. Very good for geophysicist when doing simple well log plotting and the module package is created for intrepertating well logs. However, we didn't feel like it provided any additional valuable information compared to the graphs we created with the module hvplot. And since we were already deep into hvplot, we found that it would be  unnesessary and time-consuming to find out how elements from each of these packages could be interactively connected in a dynamic map. For further pursuing the use of welly, we recommend going to the webpage Slack (and the group community: welly) to get in touch with people that is developing this software.

Future improvements:

   - The data manipulation and analysis library Dask utilizes split CPU core computation and run larger sets of data in a much more efficient fashion than the more popular dataframe library pandas making it the favorable choise when handling big data. This runbook should incorporate the use of dask much more than it does, but as the data used so far as been caught in the grey zone between big data sized data sets and regular sized data sets, it was hard to really see a difference in performance between using Dask for holding the dataframe compared to pandas. Nevertheless, the notebook is set up such that you should have the flexibility to proceed with either pandas or dask dataframes.
   
   - Panel is a library that further builds on the hvplot and holoviews data analysis and visualization libraries that have been heavily used in this notebook, and makes it possible to create very modular and customizable locally hosted web browser run dashboards in a seperate tab from the jupyter notebook itself. It would have been ideal to make all the plots in the notebook file support some sort of panel powered dashboard projected up into a seperate web browser tab making the code even easier for people with little programming experience use the notebook. Panel provides its own widgets and linking-functions to make the web browser dashboard interactive.
   
   - Some minor adjustments should be made on the plotting elements. This includes showing a correct logarithmic scale for resisitivity, and descriptive legends in general. Moreover, we had some difficulties assigning different colors for the different wells in the curve plots connected to the dynamic map. Several of our plots utilized the datashader functionality. We have not been able to implement this in our dynamic map yet, but it would be a major improvement for the scatterplot. As it stands now, the scatterplot does not really give you any valueable information when showing a fair amount of wells, due to overplotting. Datashader handles the challenge of plotting big data.
   
   - An idea that came early on was to speed up of the computation by utilizing the GPU on the computer running the notebook. This was never really touched upon for timing reasons, but would most definitely make the plotting and data extraction significantly faster.

Disclaimer:

   - The guidelines for this project were to stay fully open source meaning that the team did not have access to any of Equinor's own well log files and as such the creation and use of artificially created well log .las files were mainly used during the planning and creation of the big data visualization. Further testing and improvement of the code using real well logs should be a priority.

Team members
   - Amalie Sande Rødde: 4th year Geology student at University of Bergen. 
   - Hans Christian Walker: Master degree in petroleum technology with specialization in natural gas at University of Stavanger. 
   - Sebastian Ægidius: 3rd year Electrical and Electronic student at Heriot-Watt University.
   - Tobias Hermansen: 4th year Geology student at University of Bergen. 
   - Vetle Nevland: 2nd year Geophysics student at University of Oslo. 

Who did what?
   - Amalie: Visualization, research, testing
   - Hans Christian: Visualization, research, testing
   - Sebastian: programming, research
   - Tobias: Visualization, research, testing
   - Vetle: programming, research
   
