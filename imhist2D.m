function h_ij=imhist2D(X1,X2)
% What is 2D histogram:
%The count of same position pixels which for pair (i,j), contains intensity- 
% level i in first image, and similarly intensity-level j for second image.

%X1 and X2 two 2D same size input images or channels (N*M).
% This function divide by resolution is an "approximation" for joint pmf.
% Developed by Ali Khajegili Mirabadi
% Isfahan University of Technology, Isfahan, Iran.
%Check for dimension:
if size(X1,3)>1
    disp('Input Signal Dimension Is Not Correct: Input Must Be 2D Image');
else
[N,M]=size(X1); % The count of rows or N % The count of columns or M
h_ij=zeros(256,256); %primitive 2D joint histogram function
for r=1:N   
  for c=1:M 
    h_ij(X1(r,c)+1,X2(r,c)+1)= h_ij(X1(r,c)+1,X2(r,c)+1)+1;
  end
end
end
%
end