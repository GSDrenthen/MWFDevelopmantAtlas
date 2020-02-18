# MWF Developmant Graph

This repository contains a graph of tract-specific myelin development in healthy controls. The graph is based on the Freesurfer Desikan-Killiany parcellation.

It can be visualized using the added Matlab script annot.m in combination with the code from the flexible brain graph visualizer (https://sourceforge.net/projects/flexbgv/).

Run the following code to visualize the percentual difference myelin-water graph:


```Matlab
load(PDMW.mat);
codebook = annot();
flexbgv(PDMW,codebook.full,3);
```



![PDMW](https://github.com/GSDrenthen/MWFDevelopmantGraph/blob/master/Figure1.png)

Figure 1: A) Myelin development graph, showing the tract-specific PDMW values, B) histogram of the PDMW values
