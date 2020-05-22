%The Information Ratio (IR) count
function count=ir(h_i)
%|---------------------------------------------------|%
%| Developed by Ali Khajegili Mirabadi               |%
%| Isfahan University of Technology, Isfahan, Iran.  |%
%| Supervised by Prof. Stefano Rini                  |%
%| National Chiao Tung University, Taiwan            |%
%|---------------------------------------------------|%

%h_i stands for input image histogram.
        NM=sum(h_i(:));
        tmp=h_i(h_i>1).*(log(h_i(h_i>1))-log(NM))./log(h_i(h_i>1));
        count=sum(-tmp(:));
end