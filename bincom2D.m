function out_2Dhist=bincom2D(h_ij,d)% Feature distance tunner(2D histogram bin combinator)
%|---------------------------------------------------|%
%| Developed by Ali Khajegili Mirabadi               |%
%| Isfahan University of Technology, Isfahan, Iran.  |%
%| Supervised by Prof. Stefano Rini                  |%
%| National Chiao Tung University, Taiwan            |%
%|---------------------------------------------------|%
%h_ij stands for the input image joint histogram of X_1 and X_2.
% d as feature distance.
% d must be within {1,2,...,255} range.
        out_2Dhist=zeros(ceil(256/d),floor(256/d));
% merge the symbols pairs with respect to the feature distance:
    for b1=1:uint8(ceil(256/d))
        for b2=1:uint8(ceil(256/d))
            tmp=h_ij((b1-1)*d+1:b1*d,(b2-1)*d+1:b2*d);
            out_2Dhist(b1,b2)=sum(tmp(:));
        end
    end 
%
end