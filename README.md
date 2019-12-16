# MWF Developmant Atlas

This repository contains an atlas of tract-specific myelin development in healthy controls. The atlas is based on the Freesurfer desikan killiany parcellation.

It can be visualized using the added Matlab script annot.m in combinatino with the code from flex brain graph visualizer (https://sourceforge.net/projects/flexbgv/).

Run the following code to visualize the percentual difference myelin-water atlas:

load(PDMW.mat);

codebook = annot();

flexbgv(PDMW,codebook.full,3);

