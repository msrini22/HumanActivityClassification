set(gca,'XTick',[1:10]);
users={'user9','user10','user11','user12','user13','user14','user16','user17','user18','user19'};
nnf1=[0.943,0.9483,0.953,0.953,0.9556,0.825,0.862,0.871,0.745,0.8997];
nnpre=[0.904,0.91,0.92,0.919,0.921,0.819,0.77,0.797,0.644,0.823];
nnrec=[0.987,0.99,0.99,0.99,0.995,0.8311,0.981,0.961,0.8844,0.9922];
figure(1);
ylim([0,2]);
plot(nnf1);
% for i=1:10
%  Names(i,:)=users(i);
% end
% set(gca, 'xTickLabels',[0:100]); 
xlabel('Users');
ylabel('accuracy');
set(gca, 'XTickLabel',users);
title('using Neural Networks for 10 users');
%figure(2);
hold on;
%ylim([0,2]);
plot(nnpre);
% for i=1:10
%  Names(i,:)=users(i);
% end
% set(gca, 'xTickLabels',[0:100]); 
% xlabel('Users');
% ylabel('precision');
% set(gca, 'XTickLabel',users);
% title('precision using Neural Networks for 10 users');
% figure(3);
% ylim([0,2]);
plot(nnrec);
% for i=1:10
%  Names(i,:)=users(i);
% end
% set(gca, 'xTickLabels',[0:100]); 
% xlabel('Users');
% ylabel('Recall');
% set(gca, 'XTickLabel',users);
% title('Recall using Neural networks for 10 users');
legend({'F1','Precision','Recall'},'Location','southwest');
