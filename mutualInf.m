function I=mutualInf(h_i,h_j,h_ij)
%h_i for first image histogram/ h_j for second image histogram
%h_ij: joint histogram
S=sum(h_ij(:)); % S the count of pixels
I=ShEntopy(h_i/S)+ShEntropy(h_j/S)-ShEntropy(h_ij/S); % mutual Information [nat]
end