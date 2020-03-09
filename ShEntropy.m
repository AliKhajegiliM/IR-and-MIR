function H=ShEntropy(h)
% Natural lgoarithm is used.
% H for Entropy and h for histogram
S=sum(h(:)); %S for size
pmf=h/S; %probability mass function
H1=-pmf(pmf>0).*log(pmf(pmf>0)); 
H=sum(H1(:)); %Entropy [nat]
end