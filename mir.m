%The Mutual Information Ratio (MIR) count
function mcount=mir(h_ij,h_i,h_j)
%|---------------------------------------------------|%
%| Developed by Ali Khajegili Mirabadi               |%
%| Isfahan University of Technology, Isfahan, Iran.  |%
%| Supervised by Prof. Stefano Rini                  |%
%| National Chiao Tung University, Taiwan            |%
%|---------------------------------------------------|%

%h_i , h_j, and h_ij stand for first, second ,and joint input images histogram, respectively.
    NM=sum(h_i(:));
    %probability mass functions:
    p_i=h_i/NM;
    p_j=h_j/NM;
    p_ij=h_ij/NM;
    %The count of histogram symbols
    Symbols=size(h_i,1);
    MR=zeros(Symbols,Symbols);
    for i=1:Symbols
        for j=1:Symbols
            MR(i,j)=h_ij(i,j)*(log(p_ij(i,j)/(p_i(i)*p_j(j))))/log(h_ij(i,j));
        end
    end
    tmp1=MR(MR<Inf & MR>-Inf);
    mcount=sum(tmp1(:));      
end

