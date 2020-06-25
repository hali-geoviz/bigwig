~Version ---------------------------------------------------
VERS.   1.2 : CWLS LOG ASCII STANDARD - VERSION 1.2
WRAP.    NO : One line per depth step
DLM . SPACE : Column Data Section Delimiter
~Well ------------------------------------------------------
STRT    .m              10.0 : START DEPTH
STOP    .m              49.5 : STOP DEPTH
STEP    .m               0.5 : STEP
NULL    .           -9999.25 : NULL VALUE
COMP    .            COMPANY : 
WELL    .               WELL : 
FLD     .              FIELD : 
LOC     .           LOCATION : 
PROV    .           PROVINCE : 
CNTY    .             COUNTY : 
STAT    .              STATE : 
CTRY    .            COUNTRY : 
SRVC    .    SERVICE COMPANY : 
DATE    .               DATE : 2020-06-25 10:28:42
UWI     .     UNIQUE WELL ID : 
API     .         API NUMBER : 
LATI.DEG.  10� 33' 41.962" S : LATITUDE
LONG.DEG. 128� 23' 10.994" E : LONGITUDE
~Curve Information -----------------------------------------
DEPTH.m       : DEPTH
CALI .inches  : CALIPER
GR   .api     : GAMMA RAY
RHOB .g/cm3   : BULK DENSITY
NPHI .V/V     : NEUTRON POROSITY
RS   .ohm.m   : SHALLOW RESISTIVITY
RM   .ohm.m   : MEDIUM RESISTIVITY
RD   .ohm.m   : DEEP RESISTIVITY
DT   .ms/ft   : SONIC TRANSIT TIME
BS   .inches  : BIT SIZE
~Params ----------------------------------------------------
MUD. GEL CHEM : MUD TYPE
BS .    200.0 : BIT SIZE
~Other -----------------------------------------------------
Example of how to create a LAS file from scratch using lasio
~ASCII -----------------------------------------------------
   10.00000   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25
   10.50000   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25
   11.00000   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25
   11.50000   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25
   12.00000   -9999.25   -9999.25   -0.12044    3.56645   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25
   12.50000   -9999.25   -9999.25    0.83230    4.95944   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25
   13.00000   -9999.25   -9999.25    1.34795    4.59983   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25
   13.50000   -9999.25   -9999.25    2.60390    2.55612   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25
   14.00000    9.62764   -9999.25    2.52964    0.84596   -9999.25   -9999.25   -9999.25   -9999.25   -9999.25
   14.50000    9.31617   -9999.25    2.45880   -1.03227   -1.35332   -3.07114   -0.16947    4.08523  116.93046
   15.00000   10.31855   -9999.25    2.16511   -2.83298   -4.35376   -6.71556   -1.38319    3.98278  118.31802
   15.50000   10.20921   -9999.25    1.13168   -3.03505   -5.19161   -8.82982   -2.16664    3.83238  119.23056
   16.00000    9.98047   -9999.25    0.22515   -3.46888   -5.07328   -9.32732   -2.15602    3.81646  121.04644
   16.50000   10.56700   -9999.25   -1.24338   -2.54687   -4.07323   -6.97174   -1.96997    4.40043  122.49023
   17.00000   10.34939   -9999.25   -1.28765   -0.53686   -1.46222   -2.38704   -0.70046    3.96647  123.96896
   17.50000   10.86046    1.61329   -1.15827    1.62212    2.05852    2.85631    1.59863    4.05892  125.26575
   18.00000   10.70179    1.65820   -0.50314    3.24256    4.84542    7.58397    2.89227    4.67026  126.41192
   18.50000   10.86409    1.86195   -0.23671    4.00777    6.02608    9.80417    3.55295    4.55959  127.22799
   19.00000   11.00675    1.57933    1.27559    4.38850    6.12560    9.94379    3.17803    4.77249  128.59918
   19.50000   10.96784    1.59634    1.59482    4.05722    5.70003    8.11899    3.07074    4.64093  129.37575
   20.00000   10.66306    2.27835    2.19408    2.13977    2.74708    4.56756    1.47424    4.48947  130.53014
   20.50000   11.42337    2.13964    2.20020    0.43260   -0.35152   -0.41650    0.39868    4.65619  131.55299
   21.00000   11.49983    1.91138    2.14579   -1.41270   -2.82739   -4.96353   -0.95272    4.72565  133.05884
   21.50000   11.55816    1.79045    1.47936   -2.99119   -5.23413   -7.94852   -1.91394    4.04289  133.79005
   22.00000   11.41952    2.21302    0.07651   -3.61681   -5.20582   -9.00720   -2.88818    4.18853  135.19366
   22.50000   11.73347    1.50167   -0.34157   -3.17296   -4.27333   -8.31099   -2.45259    4.83198  136.20302
   23.00000   11.33335    1.44626   -1.26914   -1.60766   -2.19963   -4.57254   -1.30822    4.94220  136.19869
   23.50000   11.21221    2.01919   -1.74076    0.57262    0.23793   -0.59403    0.09774    4.67771  137.97073
   24.00000   11.28228    1.94028   -1.09917    1.71632    2.86081    4.85140    1.64392    5.02317  138.17877
   24.50000   12.09526    1.54167   -1.11875    3.85147    5.45038    8.19986    3.06593    4.23586  139.60780
   25.00000   11.95244    1.59346   -0.23515    4.92261    6.06549   10.85284    3.76050    4.77801  140.51238
   25.50000   11.63529    2.22942    1.23996    4.49053    5.65751    9.60641    3.15845    4.78799  140.92484
   26.00000   11.69994    1.43241    1.68339    2.90866    4.66574    6.81385    2.20659    4.84149  142.12078
   26.50000   11.63401    1.61004    2.66841    1.20057    1.22783    2.38244    1.16627    5.25332  142.64676
   27.00000   11.94966    2.15165    2.39717   -0.46252   -0.93051   -1.96995   -0.45808    4.65782  143.98835
   27.50000   11.60719    2.43363    2.15266   -2.65236   -3.29970   -6.81543   -1.76768    4.90703  144.68820
   28.00000   11.79094    1.59202    0.99371   -2.97199   -5.69745   -9.34047   -2.75837    4.69006  145.39934
   28.50000   12.25451    1.99330    0.37119   -3.72625   -5.22980   -9.14621   -2.65896    4.54983  146.07203
   29.00000   12.65769    2.25675   -1.13209   -2.66038   -3.73189   -6.74746   -2.09790    5.10366  146.39579
   29.50000   12.03582    2.17180   -0.88556   -0.43699   -1.89366   -3.37780   -0.63753    4.95240  147.36745
   30.00000   11.84696    1.93495   -1.15293    0.78438    1.40237    2.49114    0.83401    5.02978  148.06618
   30.50000   12.07866    1.90751   -1.35777    2.67077    3.74838    6.37538    2.10211    4.47624  149.19597
   31.00000   12.82708    2.34327   -0.80373    4.51245    5.96147    9.35107    2.81690    4.72716  149.56054
   31.50000   12.07763    1.92915    0.89983    4.70661    6.09215   10.14916    3.04304    5.35281  150.10139
   32.00000   12.88013    1.89586    2.01446    4.11503    5.04287    8.54267    3.35568    5.09515  150.86619
   32.50000   12.76114    1.95762    2.66693    2.25808    3.38250    5.00314    2.19405    5.39354  151.93643
   33.00000   12.29816    2.14219    2.89287    0.14649    0.09903   -0.04472    0.25716    5.08280  152.75219
   33.50000   12.96279    1.68108    2.45714   -0.96492   -2.30066   -4.24113   -1.12332    5.30587  153.12036
   34.00000   12.41770    1.57146    1.61311   -3.26754   -5.01402   -8.32161   -1.85824    4.73221  153.49102
   34.50000   12.38930    2.06831    1.10570   -3.32036   -5.06124   -9.06303   -2.69139    5.09147  154.59389
   35.00000   13.31638    1.92985   -0.21055   -2.77987   -5.11163   -9.00004   -2.21952    4.87772  154.44749
   35.50000   12.41778    1.97564   -0.84680   -1.99151   -3.10376   -5.46246   -0.89664    4.85764  155.86017
   36.00000   12.64938    2.47521   -1.47136    0.02561   -0.60170   -0.78507   -0.29306    4.84477  155.83376
   36.50000   12.97611    2.19082   -1.60659    2.24734    3.09026    4.57461    2.01154    4.78960  156.66039
   37.00000   13.08179    1.62470   -0.84883    3.97733    5.26907    8.26940    3.10089    4.73298  156.94041
   37.50000   13.45491    2.30898    0.48599    4.06355    6.18061   10.22991    3.39115    5.10428  157.41192
   38.00000   13.55905    1.76699    1.16897    4.38895    6.62558   10.05009    2.96912    5.49856  158.59200
   38.50000   13.25886    2.51751    2.29723    3.71249    4.64860    7.07287    2.26457    5.69905  158.91432
   39.00000   12.73457    2.08143    2.09595    1.44521    2.05037    3.09539    1.09817    4.79116  159.20430
   39.50000   13.13437    2.23950    2.07495   -0.87619   -0.49857   -1.45816   -0.10316    5.46657  160.10236
   40.00000   13.06226    1.92395    2.45131   -2.38270   -3.64409   -6.43210   -1.59289    4.87711  160.84088
   40.50000   13.27949    1.90997    1.47876   -2.82333   -5.55924   -9.15074   -2.47194    5.79680  160.89388
   41.00000   13.54287    1.83833    0.14896   -3.47431   -5.74751   -9.62122   -2.29378    5.76568  162.12544
   41.50000   13.33927    1.69478   -0.81124   -3.01117   -4.22094   -7.66435   -2.23013    4.91727  162.19377
   42.00000   13.23485    1.71126   -1.74100   -1.33043   -1.84761   -3.55040   -0.47307    5.26508  162.78936
   42.50000   13.48332    2.23352   -1.37049    0.86548    1.11297    1.82988    0.36262    5.14587  163.59711
   43.00000   13.82046    2.22260   -0.74306    2.64145    3.73183    5.90691    2.56294    5.10539  163.64612
   43.50000   13.61016    2.33673   -0.39375    3.81353    5.49207    9.51980    2.79938    5.44515  164.20196
   44.00000   14.10052    1.79633    0.49215    4.41178    6.79424   10.93462    3.75874    5.39026  164.73664
   44.50000   13.65088    2.40444    1.37916    3.51574    5.35323    9.37472    2.90384    5.91362  165.01379
   45.00000   13.28637    1.71113    2.16641    2.48695    3.54672    6.15884    1.87241    5.68220  166.21061
   45.50000   13.44179    2.11894    2.02697    0.81552    0.66064    1.05356    0.72603    5.93150  166.70190
   46.00000   13.83862    2.49234    1.80893   -1.12384   -1.66946   -4.20505   -0.30986    5.32998  166.86134
   46.50000   14.22181    1.68018    1.29976   -3.23335   -4.45844   -7.21582   -2.06691    5.97395  166.94699
   47.00000   13.98094    2.41758    1.09762   -3.71238   -5.41980   -9.68720   -2.28620    5.04427  167.31350
   47.50000   13.47125    2.35852    0.23845   -3.26907   -4.95368   -8.66814   -2.54626    5.49060  168.14581
   48.00000   13.74531    2.05292   -1.25454   -1.64463   -3.10816   -5.59982   -1.78801    5.67495  168.99464
   48.50000   14.40083    2.07499   -1.06091   -0.47875   -0.84897   -1.42077   -0.22777    5.68080  168.69846
   49.00000   13.73937    1.78045   -0.94725    2.04590    2.20374    3.85772    0.97534    5.99171  169.80053
   49.50000   14.06243    2.02945   -1.18259    3.09446    4.77487    8.08869    2.34865    5.32067  169.89851
