%video=user11data;
pca_input = user19imu(:, 2:11); 
classifyappinput=user19imu(:,2:12);
[coeff, score, latent] = pca(pca_input);
reduced_dim = coeff;

reduced_matrix = pca_input * reduced_dim;
%[trainA,testA] = divideblock(reduced_matrix, 0.7, 0.3);
cv = cvpartition(size(reduced_matrix,1),'HoldOut',0.3);
idx = cv.test;
dataTrain = reduced_matrix(~idx,:);
dataTest  = reduced_matrix(idx,:);
org_y = user19imu(:, 12);
cv1 = cvpartition(size(org_y,1),'HoldOut',0.3);
idx1 = cv1.test;
yTrain = org_y(~idx1,:);
yTest  = org_y(idx1,:);
svmc = fitctree(dataTrain, yTrain);
%svmc.predict(dataTest)
pred_label = predict(svmc,dataTest);
tp=0;tn=0;fp=0;fn=0;
for i=1:size(yTest,1)
    actual=yTest(i);
    pred=pred_label(i);
    if actual==1 && pred==1
        tp=tp+1;
    elseif actual==1 && pred==0
        fn=fn+1;
    elseif actual==0 && pred==0
        tn=tn+1;
    else
        fp=fp+1;
    end
end
precision=tp/(tp+fp)
recall=tp/(tp+fn)
f1score=2*(precision*recall)/(recall+precision)

% C = confusionmat(yTest,pred_label)
% for i =1:size(C,1)
%  precision(i)=C(i,i)/sum(C(i,:)); 
% end
% precision(isnan(precision))=[];
% Precision=sum(precision)/size(C,1)
% 
% for i =1:size(C,1)
%  recall(i)=C(i,i)/sum(C(:,i));  
% end
% 
% Recall=sum(recall)/size(C,1)
% 
% F_score=2*Recall*Precision/(Precision+Recall)

% %SVM Classifier
% [coeff, score, latent] = pca(video);
% reduced_dim = coeff(:, 2:9);
% reduced_matrix = video * reduced_dim;
% %[trainA,testA] = divideblock(reduced_matrix, 0.7, 0.3);
% cv = cvpartition(size(reduced_matrix,1),'HoldOut',0.3);
% idx = cv.test;
% dataTrain = reduced_matrix(~idx,:);
% dataTest  = reduced_matrix(idx,:);
% org_y = video(:, 10);
% cv1 = cvpartition(size(org_y,1),'HoldOut',0.3);
% idx1 = cv1.test;
% yTrain = org_y(~idx1,:);
% yTest  = org_y(idx1,:);
% svm = fitcsvm(dataTrain, yTrain);
% pred_label = predict(svm,dataTest);
% C = confusionmat(yTest,pred_label)
% for i =1:size(C,1)
%     precision(i)=C(i,i)/sum(C(i,:)); 
% end
% precision(isnan(precision))=[];
% Precision=sum(precision)/size(C,1)
% 
% for i =1:size(C,1)
%     recall(i)=C(i,i)/sum(C(:,i));  
% end
% 
% Recall=sum(recall)/size(C,1)
% 
% F_score=2*Recall*Precision/(Precision+Recall)
% 
% %Neural Networks