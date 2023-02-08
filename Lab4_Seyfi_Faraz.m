%############################################################################
% <Lab 4>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: <Give a brief description for homework 1>
% Due date: < 2003/02/07>
%
% Author: <Faraz Seyfi >
% Input: < IF ANY>
% Output: < apple stock data
% High, ii) Low, iii) Close price, and iv) Volumes of this stock vs.
%time as four separate plots.>
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___<Faraz Seyfi>_______
%############################################################################
clear all;
clc;
close all;
%filepath
filepath='applestockdata.csv'
%reading table from the filepath that I gave
applestockdata = readtable(filepath,'PreserveVariableNames',1)
%plotting the opening graph
plot(applestockdata.Date, applestockdata.High)
% limiting the x-axis from the first date to the last date
xlim([applestockdata{1,1}, applestockdata{height(applestockdata), 1}])
%title
title('Apple Stocks (high prices)')
%x-axis label
xlabel('Time')
%y-axis label
ylabel('Stock Price in USD')
% the legend of the graph
legend('Stock Price in USD')
figure;
% plotting the low prices with respect to time
plot(applestockdata.Date,applestockdata.Low)
% limiting the x-axis from the first date to the last date
xlim([applestockdata{1,1}, applestockdata{height(applestockdata), 1}])
%title
title('Apple Stocks:Low Price')
%x-axis label
xlabel('Time')
%y-axis label
ylabel('Stock Price in USD')
%legend
legend('Stock Price in USD')
%close prices
figure;
%plotting the closing prices vs time
plot(applestockdata.Date, applestockdata.Close)
% limiting the x-axis from the first date to the last date
xlim([applestockdata{1,1}, applestockdata{height(applestockdata), 1}])
%title
title('Apple Stocks (Closing Price)')
%x-axis label
xlabel('Time (Years)')
%y-axis label
ylabel('Stock Price in USD')
%legend of the graph
legend('Stock Price in USD')
% volume prices vs time
%plotting the volume prices vs time
figure;
plot(applestockdata.Date, applestockdata.Volume)
% limiting the x-axis from the first date to the last date
xlim([applestockdata{1,1}, applestockdata{height(applestockdata), 1}])
%title
title('Apple Stocks (volume Price)')
%x-axis label
xlabel('Time (years)')
%y-axis label
ylabel('Stock Price in USD')
%legend
legend('Stock Price in USD')
%average variable
Average = (applestockdata.Open+applestockdata.Close)/2;
% making a new column called "average"
applestockdata.Average = Average;
%saving it to a csv file called "AAPL-new"
writetable(applestockdata,'AAPL-new.csv')



