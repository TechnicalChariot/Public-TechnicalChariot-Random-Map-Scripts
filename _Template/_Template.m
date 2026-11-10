%_Template
%TechChariot
%2025-11-09

clear all
close all
clc


tic
disp(["Run Executed " datestr(clock) "..."])

filestruc = dir; %Extract a structure of the files in this directory
path = filestruc.folder; path = [path(1:strfind(path,'random-map-scripts')-1) 'random-map-scripts'];
addpath(genpath(path)); filename = [mfilename '.rms'];

[Preface,LPM_exp,~] = RMS_Manual_Land(filename);

MLA = [{[]}];

MLP = [{[]}];


##CODE = [Preface; MLP; RMS_Processor_V7([LM_NI1]); MLA]; %Adding Preface, Definitions, Random Statement to beginning of CODE
CODE = [Preface; MLP; MLA]; %Adding Preface, Definitions, Random Statement to beginning of CODE

RMS_ForgeV4(filename,CODE);

disp(["Run Completed " datestr(clock) "..."])
toc

%ObjectAutoscribeV11('_Template.ods')


