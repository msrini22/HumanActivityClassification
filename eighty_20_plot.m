set(gca,'XTick',[1:10]);
users={'user9','user10','user11','user12','user13','user14','user16','user17','user18','user19'};
treef1=[0.545,0.727,0.889,0.800,0.50,0.889,0.50,0.666,0.444,0.851];
treepre=[0.5,0.667,1,1,0.5,1,0.5,0.6667,0.408,1];
treerec=[0.6,0.8,0.8,0.666,0.5,0.801,0.5,0.6661,0.5,0.75];
figure(1);
ylim([0,2]);
% plot(treef1);
% % for i=1:10
% %  Names(i,:)=users(i);
% % end
% % set(gca, 'xTickLabels',[0:100]); 
% xlabel('Users');
% ylabel('Accuracy');
% set(gca, 'XTickLabel',users);
% title('Different Measures of accuracy using Decision tree for 10 users');
% %figure(2);
% hold on
% %ylim([0,2]);
% plot(treepre);
% % for i=1:10
% %  Names(i,:)=users(i);
% % end
% % set(gca, 'xTickLabels',[0:100]); 
% % xlabel('Users');
% % ylabel('precision');
% % set(gca, 'XTickLabel',users);
% % title('precision using Decision tree for 10 users');
% % figure(3);
% % ylim([0,2]);
% plot(treerec);
% % for i=1:10
% %  Names(i,:)=users(i);
% % end
% % set(gca, 'xTickLabels',[0:100]); 
% % xlabel('Users');
% % ylabel('Recall');
% % set(gca, 'XTickLabel',users);
% % title('Recall using Decision tree for 10 users');
% % legend({'F1','Precision','Recall'},'Location','southwest');
svmf1=[0.667,0.667,0.75,0.666,0.60,0.75,0.667,0.4,0.25,0.5714];
svmpre=[0.75,0.75,1,1,0.6,1,0.6,0.5,0.25,0.6661];
svmrec=[0.6,0.6,0.6,0.5,0.75,0.60,0.75,0.33,0.25,0.5];
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






