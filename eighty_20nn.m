set(gca,'XTick',[1:10]);
users={'user9','user10','user11','user12','user13','user14','user16','user17','user18','user19'};
nnf1=[0.9385,0.9584,0.8935,0.9473,0.8625,0.8659,0.8591,0.8533,0.8943,0.8990];
nnpre=[0.8904,0.9288,0.8542,0.8919,0.8120,0.7813,0.7758,0.7551,0.8268,0.8191];
nnrec=[0.9926,0.9001,0.9368,1.000,0.9190,0.9709,0.9625,0.9810,0.9740,0.9962];
figure(1);
ylim([0,2]);
plot(nnf1);
% for i=1:10
%  Names(i,:)=users(i);
% end
% set(gca, 'xTickLabels',[0:100]); 
xlabel('Users');
ylabel('F1 Score');
set(gca, 'XTickLabel',users);
title('F1 scores using Neural networks for 10 users');
figure(2);
%hold on;
ylim([0,2]);
plot(nnpre);
% for i=1:10
%  Names(i,:)=users(i);
% end
set(gca, 'xTickLabels',[0:100]); 
xlabel('Users');
ylabel('Precision');
set(gca, 'XTickLabel',users);
title('Precision using Neural Networks for 10 users');
figure(3);
ylim([0,2]);
plot(nnrec);
% for i=1:10
%  Names(i,:)=users(i);
% end
set(gca, 'xTickLabels',[0:100]); 
xlabel('Users');
ylabel('Recall');
set(gca, 'XTickLabel',users);
title('Recall using Neural networks for 10 users');
%legend({'F1','Precision','Recall'},'Location','southwest');
