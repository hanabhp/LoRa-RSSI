# Low Cost Crowdsensing System Based on LoRaWAN

## Intoduction

The advent of Low Power Wide Area Networks (LPWAN)
has enabled the feasibility of wireless sensor networks for environmental
crowdsensing across urban areas. In this study,
we explore the usage of LoRa end nodes as crowdsensing
sensors to offer a practical traffic control solution. The monitored
Received Signal Strength Indicator (RSSI) factor is
reported and used in the gateways to assess the crowd of the
environment. Our technique utilizes LoRa as a long-range
communication technology to provide a large-scale system.
This paper details our experiences with the design and real
implementation of this system across an area that stretches
for miles. We continuously measured and reported RSSI at
different gateways for weeks. In this paper, we share the
lessons learned from such a deployment for crowdsensing.
Based on the results, by deploying the end node in an accurate
position, up to 96% correct environment crowd-level
detection can be obtained.


## Code execution explanation


## Requirements

MATLAB 2021 or a later Version.

## MATLAB libraries

When installing MATLAB, we can select the libraries we need to be installed on MATLAB.

## MATLAB Instillation and Setup

you must first install the Network License Manager on the server before installing MATLAB on the client workstations.

You can download and install MATLAB installation files from the main MATLAB website.
After installing the license, download the installation files from the MATLAB site and install it as the same path as the license.

Note: You only need to install the network license manager once at a site.

If additional parts or toolkits are needed after the initial installation, repeat the installation process again.

When prompted to select components to install, select only those that need to be added to an existing installation.

After installing MATLAB, your system is ready to run the code and the program.

## The  Program

Now you should download and copy the function, data, and code in one folder.

## What the code is doing?

The provided program is an implementation of proposed idea for environment crowd detection by using RSSI in LoRaWAN.

## Data
We used two dataset collected by using three implemented gateways and one end nodes (installed in 16 different positions) over several days.

Data1: 2022/27/07
Data2: 2020/09/08

load data1 or data2

## Function (datause.m)

This function provides the required main data for the main code to make it shorter and more reliable.

The appropriate range for classification has specified in this function.

## Main code

In main code, we first take the input data and use this data for the SVM algorithm to provide classification on data based on RSSI. We use leave-one-out cross validation to train and test the data and get the more trustable output.

## SVM (support-vector machines)
SVM is one of the most robust prediction methods, it is based on statistical learning frameworks or VC theory proposed by Vapnik  and Chervonenkis.
SVM maps training examples to points in space to maximise the distance between the two categories. New examples are then mapped into
the same space and predicted to belong to a category based on which side of the gap they fall.  

## Performed Measurements

At the end, we collect the predicted value by setting it to the original value and calculate the values of Accuracy, Precision, Recall and False Detection.

## To Run code

To run the code, you must save the data and the function in the same path as the code. 
First open the function in MATLAB and load the data. Then run the code. 

## Contact

If you face any issue please create an issue or if you are interested in this type of research to collaborate, please shoot an email to <mailto:hana.pasandi@gmail.com>

