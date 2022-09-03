clc;
clear;
format long
%% data1 and data2 are data of two days, we should use one of them
%load('data1.mat')
load('data2.mat')
data1=data1(:,[1 3 5 7]);

%% Function(ddt.m)
data=datause(data1);

%% input and target
Featurs =data(:,1:end-1);
labeles=data(:,end);

%% set template SVM
temsvm=templateSVM('KernelFunction','rbf','BoxConstraint',1,...
     'KernelScale','auto','CacheSize',1000);

%%  Train and Test (Use [leave one out] for get best out of train and test)
 N=length(Featurs);
 ss=size(Featurs);
for i = 1:ss(1)
    [train,test] = crossvalind('LeaveMOut',N,1);
    l1=1;
    l2=1;
    for m=1:N
        if train(m,1)==1
           TrainFeaturs(l1,:)=Featurs(m,:);
           TrainTargets(l1,:)=labeles(m,:);
           l1=l1+1;
        else
  %% test input and target 
            TestFeaturs(l2,:)=Featurs(m,:);
            TestTargets(l2,:)=labeles(m,:);
            l2=l2+1;
        end
    end
  svm=fitcecoc(TrainFeaturs,TrainTargets,'Learners',temsvm);

  %% prediction 
  class(i,:)=predict(svm,TestFeaturs);
  group(i,:)=TestTargets;
end
%% Comparison chart of predicted values versus target values for calculation Accuracy
  CM=confusionmat(group,class);
  confusionchart(CM)
%% calculation of TP,FP,FN,TN
cm=CM;
s=size(CM);
TP=diag(CM)';
for n=1:s(1)
    for m=1:s(2)
        if n==m
        cm(n,m)=0;
        end
    end
end
FP=sum(cm');
FN=sum(cm);
TN=ss(1)-(TP+FP+FN);
%% calculation of Accuracy,Precision,recall,Falsedetection
Accuracy=(TP+TN)/ss(1);
Precision=TP./(TP+FP);
recall=TP./(TP+FN);
Falsedetection=FP./(FP+TN);
a=table(TP',FP',FN',TN')
a.Properties.VariableNames = ["TP","FP","FN","TN"];