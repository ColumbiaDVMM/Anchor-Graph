

load USPS-MATLAB-train.mat;
n = 7291; 
m = 1000;
s = 3;
cn = 10;
data = samples';
label = labels;
clear samples;
clear labels;

load usps_label_100;
load usps_anchor_1000;

%% construct an AnchorGraph(m,s) with kernel weights
[Z, rL] = AnchorGraph(data', anchor', s, 0, cn);
rate0 = zeros(1,20);
for iter = 1:20
    [F, A, err] = AnchorGraphReg(Z, rL, label', label_index(iter,:), 0.01);
    rate0(iter) = err;
    %[iter]
end
fprintf('\n The average classification error rate of AGR with kernel weights is %.2f%%.\n', 100*mean(rate0));

%% construct an AnchorGraph(m,s) with LAE weights
[Z, rL] = AnchorGraph(data', anchor', s, 1, cn);
rate = zeros(1,20);
for iter = 1:20
    [F, A, err] = AnchorGraphReg(Z, rL, label', label_index(iter,:), 0.01);
    rate(iter) = err;
    %[iter]
end
fprintf('\n The average classification error rate of AGR with LAE weights is %.2f%%.\n', 100*mean(rate));

