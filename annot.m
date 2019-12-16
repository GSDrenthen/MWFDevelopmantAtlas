%% The code below is an adapted version of annot.m form FlexBGV
%
% https://github.com/GSDrenthen/MWFDevelopmantAtlas/

% FlexBGV:
% https://sourceforge.net/projects/flexbgv/
% https://doi.org/10.1016/j.neuroimage.2012.05.078

function [codebook_annot] = annot()
    addpath([pwd '\annot'])

    %% Names of all the Freesurfer parcellated regions (right and left hemisphere)
    name = {'lh.bankssts.label'
    'lh.caudalanteriorcingulate.label'
    'lh.caudalmiddlefrontal.label'
    'lh.cuneus.label'
    'lh.entorhinal.label'
    'lh.fusiform.label'
    'lh.inferiorparietal.label'
    'lh.inferiortemporal.label'
    'lh.isthmuscingulate.label'
    'lh.lateraloccipital.label'
    'lh.lateralorbitofrontal.label'
    'lh.lingual.label'
    'lh.medialorbitofrontal.label'
    'lh.middletemporal.label'
    'lh.parahippocampal.label'
    'lh.paracentral.label'
    'lh.parsopercularis.label'
    'lh.parsorbitalis.label'
    'lh.parstriangularis.label'
    'lh.pericalcarine.label'
    'lh.postcentral.label'
    'lh.posteriorcingulate.label'
    'lh.precentral.label'
    'lh.precuneus.label'
    'lh.rostralanteriorcingulate.label'
    'lh.rostralmiddlefrontal.label'
    'lh.superiorfrontal.label'
    'lh.superiorparietal.label'
    'lh.superiortemporal.label'
    'lh.supramarginal.label'
    'lh.frontalpole.label'    
    'lh.temporalpole.label'
    'lh.transversetemporal.label'
    'lh.insula.label'    
    'rh.bankssts.label'
    'rh.caudalanteriorcingulate.label'
    'rh.caudalmiddlefrontal.label'
    'rh.cuneus.label'
    'rh.entorhinal.label'
    'rh.fusiform.label'
    'rh.inferiorparietal.label'
    'rh.inferiortemporal.label'
    'rh.isthmuscingulate.label'
    'rh.lateraloccipital.label'
    'rh.lateralorbitofrontal.label'
    'rh.lingual.label'
    'rh.medialorbitofrontal.label'
    'rh.middletemporal.label'
    'rh.parahippocampal.label'
    'rh.paracentral.label'
    'rh.parsopercularis.label'
    'rh.parsorbitalis.label'
    'rh.parstriangularis.label'
    'rh.pericalcarine.label'
    'rh.postcentral.label'
    'rh.posteriorcingulate.label'
    'rh.precentral.label'
    'rh.precuneus.label'
    'rh.rostralanteriorcingulate.label'
    'rh.rostralmiddlefrontal.label'
    'rh.superiorfrontal.label'
    'rh.superiorparietal.label'
    'rh.superiortemporal.label'
    'rh.supramarginal.label'
    'rh.frontalpole.label'    
    'rh.temporalpole.label'
    'rh.transversetemporal.label' 
    'rh.insula.label'
};

sname = {'bankssts'
    'caudalanteriorcingulate'
    'caudalmiddlefrontal'
    'cuneus'
    'entorhinal'
    'frontalpole'
    'fusiform'
    'inferiorparietal'
    'inferiortemporal'
    'insula'
    'isthmuscingulate'
    'lateraloccipital'
    'lateralorbitofrontal'
    'lingual'
    'medialorbitofrontal'
    'middletemporal'
    'paracentral'
    'parahippocampal'
    'parsopercularis'
    'parsorbitalis'
    'parstriangularis'
    'pericalcarine'
    'postcentral'
    'posteriorcingulate'
    'precentral'
    'precuneus'
    'rostralanteriorcingulate'
    'rostralmiddlefrontal'
    'superiorfrontal'
    'superiorparietal'
    'superiortemporal'
    'supramarginal'
    'temporalpole'
    'transversetemporal'
    'bankssts'
    'caudalanteriorcingulate'
    'caudalmiddlefrontal'
    'cuneus'
    'entorhinal'
    'frontalpole'
    'fusiform'
    'inferiorparietal'
    'inferiortemporal'
    'insula'
    'isthmuscingulate'
    'lateraloccipital'
    'lateralorbitofrontal'
    'lingual'
    'medialorbitofrontal'
    'middletemporal'
    'paracentral'
    'parahippocampal'
    'parsopercularis'
    'parsorbitalis'
    'parstriangularis'
    'pericalcarine'
    'postcentral'
    'posteriorcingulate'
    'precentral'
    'precuneus'
    'rostralanteriorcingulate'
    'rostralmiddlefrontal'
    'superiorfrontal'
    'superiorparietal'
    'superiortemporal'
    'supramarginal'
    'temporalpole'
    'transversetemporal' };

    rname = {    'temporal'
    'frontal'
    'frontal'
    'occipital'
    'temporal'
    'frontal'
    'temporal'
    'parietal'
    'temporal'
    'central'
    'limbic'
    'occipital'
    'frontal'
    'occipital' 
    'frontal'
    'temporal'
    'central'
    'limbic'
    'frontal'
    'frontal'
    'frontal'
    'parietal'
    'parietal'
    'limbic'
    'frontal'
    'parietal'
    'frontal'
    'frontal'
    'frontal'
    'parietal'
    'temporal'
    'parietal'
    'temporal'
    'temporal'
    'temporal'
    'frontal'
    'frontal'
    'occipital'
    'temporal'
    'frontal'
    'temporal'
    'parietal'
    'temporal'
    'central'
    'limbic'
    'occipital'
    'frontal'
    'occipital' 
    'frontal'
    'temporal'
    'central'
    'limbic'
    'frontal'
    'frontal'
    'frontal'
    'parietal'
    'parietal'
    'limbic'
    'frontal'
    'parietal'
    'frontal'
    'frontal'
    'frontal'
    'parietal'
    'temporal'
    'parietal'
    'temporal'
    'temporal' };

    num = size(name,1);

    %% Preallocate space
    means = cell(1,num);
    Annot = cell(1,num);
    euclidean = zeros(num,num);

    %% Load the data and calculate the center
    for n = 1:num
        Annot{n} = load(name{n});
        temp = Annot{n};
        means{n} = mean(temp(:,2:4));
    end

    %% Subcortical regions are not automatically added, add manually:
    name = ['lh.thalamus';
    'lh.caudate';
    'lh.putamen';
    'lh.pallidum';
    'lh.hippocampus';
    'lh.amygdala';
    'lh.accumbes';
    'lh.ventraldc';
    'rh.thalamus';
    'rh.caudate';
    'rh.putamen';
    'rh.pallidum';
    'rh.hippocampus';
    'rh.amygdala';
    'rh.accumbes';
    'rh.ventraldc';
    name];
    
    sname = ['lh.thalamus';
    'lh.caudate';
    'lh.putamen';
    'lh.pallidum';
    'lh.hippocampus';
    'lh.amygdala';
    'lh.accumbes';
    'lh.ventraldc';
    'rh.thalamus';
    'rh.caudate';
    'rh.putamen';
    'rh.pallidum';
    'rh.hippocampus';
    'rh.amygdala';
    'rh.accumbes';
    'rh.ventraldc';
    sname];

    rname = ['central'; 
    'central'; 
    'central'; 
    'central'; 
    'central'; 
    'central'; 
    'central'; 
    'central'; 
    'central'; 
    'central'; 
    'central';
    'central'; 
    'central'; 
    'central'; 
    'central'; 
    'central'; 
    rname];

    means = [[-5.2 -18.4 0], ...
        [-11 13 10], ...
        [-26 3 -1], ...
        [-21 -3 -4], ...
        [-29 -19 -15], ...
        [-24 0 -21], ...
        [-9 9 -10], ...
        [-12 -9 -2], ...
        [5 -18.2 2], ...
        [14 13 11], ...
        [25 3 -1], ...
        [18 -3 -4], ...
        [28 -22 -14], ...
        [21 -1 -22], ...
        [12 10 -10], ...
        [15 -9 -2], ...
        means];
    
    % Consider (for symmetrical images) to invert all nodes along
    % hemishperes
    means(17+34:end) = mat2cell(([-1.*ones(34,1) 1.*ones(34,1) 1.*ones(34,1)]' .* reshape(cell2mat(means(17:17+33)),[3 34]))',[ones(34,1)],[3]);
    means(9:16) = mat2cell(([-1.*ones(8,1) 1.*ones(8,1) 1.*ones(8,1)]' .* reshape(cell2mat(means(1:8)),[3 8]))',[ones(8,1)],[3]);
    
    sname = name;
    rname = name;
    num = size(name,1);
    
    %% Calculate euclidean distances
    % For graph analysis
    for i = 1:num
        for j = 1:num     
            euclidean(i,j) = sqrt(sum(((means{i}) - (means{j})).^2));
        end
    end
    
    %% Construct the codebook
    D = struct('euclidian',euclidean);
    full = struct('id',(1:1:num)','num',num,'name',{name},'sname',{sname},'rname',{rname},'center',{means},'D',D);
    codebook_annot = struct('full',full);
end