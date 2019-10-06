set(gca,'XTick',[1:10]);
users={'user9','user10','user11','user12','user13','user14','user16','user17','user18','user19'};
treef1=[0.4,0.6316,0.7213,0.6316,0.70,0.8,0.444,0.838,0.5263,0.700];
treepre=[0.3636,0.5455,0.6156,0.5455,0.5385,0.8,0.8,0.7143,0.7143,0.7778];
treerec=[0.447,0.75,0.8889,0.75,1,0.80,0.3077,1,0.4167,0.6364];
figure(1);
ylim([0,2]);
plot(treef1);
% for i=1:10
%  Names(i,:)=users(i);
% end
% set(gca, 'xTickLabels',[0:100]); 
xlabel('Users');
ylabel('Accuracy');
set(gca, 'XTickLabel',users);
title('Different measures of accuracy using Decision tree for 10 users');
%figure(2);
%ylim([0,2]);
hold on;
plot(treepre);
% for i=1:10
%  Names(i,:)=users(i);
% end
% set(gca, 'xTickLabels',[0:100]); 
% xlabel('Users');
% ylabel('precision');
% set(gca, 'XTickLabel',users);
% title('precision using Decision tree for 10 users');
% figure(3);
% ylim([0,2]);
plot(treerec);
% for i=1:10
%  Names(i,:)=users(i);
% end
% set(gca, 'xTickLabels',[0:100]); 
% xlabel('Users');
% ylabel('Recall');
% set(gca, 'XTickLabel',users);
% title('Recall using Decision tree for 10 users');
legend({'F1','Precision','Recall'},'Location','southwest');
svmf1=[0.1818,0.4,0.8421,0.5455,0.4162,0.8889,0.4211,0.82,0.2667,0.375];
svmpre=[0.5,0.4286,0.8,0.4286,0.3571,1,0.6667,1,0.667,0.6];
svmrec=[0.111,0.375,0.8889,0.75,0.7143,0.80,0.3077,0.70,0.1667,0.2727];
figure(2);
ylim([0,2]);
plot(svmf1);
% for i=1:10
%  Names(i,:)=users(i);
% end
% set(gca, 'xTickLabels',[0:100]); 
xlabel('Users');
ylabel('Accuracy');
set(gca, 'XTickLabel',users);
title('Different measures of accuracy using SVM for 10 users');
% figure(5);
% ylim([0,2]);
hold on;
plot(svmpre);
% for i=1:10
%  Names(i,:)=users(i);
% end
% set(gca, 'xTickLabels',[0:100]); 
% xlabel('Users');
% ylabel('precision');
% set(gca, 'XTickLabel',users);
% title('precision using SVM for 10 users');
% figure(6);
% ylim([0,2]);
plot(svmrec);
% for i=1:10
%  Names(i,:)=users(i);
% end
% set(gca, 'xTickLabels',[0:100]); 
% xlabel('Users');
% ylabel('Recall');
% set(gca, 'XTickLabel',users);
% title('Recall using SVM for 10 users');
%svmf1=[0.545,0.727,0.889,0.800,0.50,0.889,0.50,0.666,0.444,0.851];
legend({'F1','Precision','Recall'},'Location','southwest');

