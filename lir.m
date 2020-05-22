%The Lower bound on Information Ratio (LIR) count
function count=lir(h_i)
%|---------------------------------------------------|%
%| Developed by Ali Khajegili Mirabadi               |%
%| Isfahan University of Technology, Isfahan, Iran.  |%
%| Supervised by Prof. Stefano Rini                  |%
%| National Chiao Tung University, Taiwan            |%
%|---------------------------------------------------|%

%h_i stands for input image histogram.
        NM=sum(h_i(:));
        count=(NM/log(NM))*ShEntropy(h_i);
end