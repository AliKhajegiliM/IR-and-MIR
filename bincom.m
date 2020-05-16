function out_hist=bincom(h_i,d)% Feature distance tunner(1D histogram bin combinator)
%|---------------------------------------------------|%
%| Developed by Ali Khajegili Mirabadi               |%
%| Isfahan University of Technology, Isfahan, Iran.  |%
%| Supervised by Prof. Stefano Rini                  |%
%| National Chiao Tung University, Taiwan            |%
%|---------------------------------------------------|%
%h_i stands for the input image histogram.
% d as feature distance.
% d must be within {1,2,...,255} range.
    out_hist=zeros(ceil(256/d),1);% Initialization
    % merge the symbols with respect to the feature distance:
    for r=1:uint8(ceil(256/d))
        out_hist(r,1)=sum(h_i((r-1)*d+1:r*d,1));
    end  
%
end
