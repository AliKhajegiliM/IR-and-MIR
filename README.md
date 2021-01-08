# IR and MIR:
The Information &amp; Mutual Information Ratio for Counting Image Local Features and Their Matches
\
Presented at the 8-th Iran Workshop on Communication and Information Theory(May 2020), Sharif University of Technology, Iran.
\
\
Arxiv version: https://arxiv.org/abs/2005.06739.
\
\
The IEEE Xplore webpage: https://ieeexplore.ieee.org/document/9163458
\
\
**Citation Info:**
\
A. K. Mirabadi and S. Rini, "The Information & Mutual Information Ratio for Counting Image Features and Their Matches," 2020 Iran Workshop on Communication and Information Theory (IWCIT), Tehran, Iran, 2020, pp. 1-6, doi: 10.1109/IWCIT50667.2020.9163458.
\
\
#<h3>Details:
\
\
\>> image joint histogram or 2D histogram: imhist2D.m
    \
    The joint histogram of two given images can be easily computed through **h_ij=imhist2D(X1,X2)**, where X1 is the first frame and X2 is the second frame.
\
\
\>> IR: image local feature points count: ir.m
    \
    To estimate the number of exsiting feature points (*count*) in a given image, it is enough to call **count=ir(h_i)**, where *h_i* is the image histogram.
\
\
\>> MIR: match local feature points count over two given frames: mir.m
    \
    To estimate the number of exsiting **joint** feature points (*jcount*) in two given frames, it is enough to call **jcount=mir(h_ij,h_i,h_j)**, where *h_i*, *h_j*, and *h_ij*     are the 1st frame, 2nd frame, and joint(2D) histograms, respectively.
\
\
\>> the lower bound on IR (LIR); MATLAB function: lir.m
\
    This is a **lower bound** on the IR estimator(feature) and depends on image entropy and size. (Apply the same instruction as the *ir* function.)
\
\
\>> the lower bound on MIR (LMIR); MATLAB function: lmir.m
\
    This is a **lower bound** on the MIR estimator(feature) and depends on image mutual information and size. (Apply the same instruction as the *mir* function.)
\
\
\>> contiguous intensity merging for 1D histogram: bincom.m
\
    In a simple sentence, this is a thresholding function. The thresholded histogram(*out_hist*) can be computed through **out_hist=bincom(h_i,d)**, where *h_i* is the             histogram of a given image and *d* is the *feature distance* or threshould level.
\
\
\>> contiguous intensity merging for 2D histogram: bincom2D.m
\
    This function is the 2D version of *bincom.m*. It get the 2D histogram (*h_ij*) and feature distance(*d*) as its inputs and returns the thresholded 2D histogram(*out_2Dhist)     **out_2Dhist=bincom2D(h_ij,d)**.
\
\
\>> image entropy and image mutual information: ShEntropy.m & mutualInf.m
\
\
**The Interesting Part!:**
\>>The IR-based Optimization method: Koptimizer.m
