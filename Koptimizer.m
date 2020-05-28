function K_o=Koptimizer(X,d)
%|---------------------------------------------------|%
%| Developed by Ali Khajegili Mirabadi               |%
%| Isfahan University of Technology, Isfahan, Iran.  |%
%| Supervised by Prof. Stefano Rini                  |%
%| National Chiao Tung University, Taiwan            |%
%|---------------------------------------------------|%

%Algorithm 1: The IR-based optimization
%X as input image channel (2D)
%d as feature distance, in the paper d belongs to {1,8}
        feat1=0;
        for k=0.9:0.1:ceil(1/(mean(im2double(X(:)))))
            feat2=ir(bincom(imhist(k*X),d));
            if feat2-feat1<=0
            K_o=k-0.1;
            break
            end
        feat1=feat2;
        end
end
