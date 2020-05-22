%The Lower bound on Mutual Information Ratio (LMIR) count
function mcount=lmir(h_ij,h_i,h_j)
%|---------------------------------------------------|%
%| Developed by Ali Khajegili Mirabadi               |%
%| Isfahan University of Technology, Isfahan, Iran.  |%
%| Supervised by Prof. Stefano Rini                  |%
%| National Chiao Tung University, Taiwan            |%
%|---------------------------------------------------|%

%h_i , h_j, and h_ij stand for first, second ,and joint input images histogram, respectively.
    NM=sum(h_i(:));
    mcount=(NM/log(NM))*mutualInf(h_ij,h_i,h_j);
end