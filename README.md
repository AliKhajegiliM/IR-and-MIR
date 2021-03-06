# IR and MIR: :computer:
**The Information &amp; Mutual Information Ratio for Counting Image Features and Their Matches**
\
Presented at the 8th Iran Workshop on Communication and Information Theory(May 2020), Sharif University of Technology, Tehran, Iran.
\
\
**Arxiv version: https://arxiv.org/abs/2005.06739**
\
\
**The IEEE Xplore webpage: https://ieeexplore.ieee.org/document/9163458**

## Citation Info:
A. K. Mirabadi and S. Rini, "The Information & Mutual Information Ratio for Counting Image Features and Their Matches," 2020 Iran Workshop on Communication and Information Theory (IWCIT), Tehran, Iran, 2020, pp. 1-6, doi: 10.1109/IWCIT50667.2020.9163458.

## Details:
- Image joint histogram or 2D histogram, imhist2D.m:
    \
    The joint histogram of two given images can be easily computed through **h_ij=imhist2D(X1,X2)**, where X1 is the first frame and X2 is the second frame.
    
- IR: the estimated count of image feature points, ir.m:
    \
    To estimate the number of existing feature points (*count*) in a given image, it is enough to call **count=ir(h_i)**, where *h_i* is the image histogram.
    
- MIR: the estimated count of joint feature points of two frames, mir.m:
    \
    To estimate the number of existing **joint** feature points (*jcount*) in two given frames, it is enough to call **jcount=mir(h_ij,h_i,h_j)**, where *h_i*, *h_j*, and *h_ij*     are the 1st frame, 2nd frame, and joint(2D) histograms, respectively.

- The lower bound on IR (LIR); MATLAB function, lir.m:
    \
    This is a **lower bound** on the IR estimator(feature) and depends on image entropy and size. (Apply the same instruction as the *ir* function.)

- The lower bound on MIR (LMIR), lmir.m:
    \
    This is a **lower bound** on the MIR estimator(feature) and depends on image mutual information and size. (Apply the same instruction as the *mir* function.)

- Contiguous intensity merging for 1D histogram, bincom.m:
    \
    In a simple sentence, this is a thresholding function. The thresholded histogram(*out_hist*) can be computed through **out_hist=bincom(h_i,d)**, where *h_i* is the             histogram of a given image and *d* is the *feature distance* or threshold level.

- Contiguous intensity merging for 2D histogram, bincom2D.m:
    \
    This function is the 2D version of *bincom.m*. It gets the 2D histogram (*h_ij*) and feature distance(*d*) as its inputs and returns the thresholded 2D histogram(*out_2Dhist*) through **out_2Dhist=bincom2D(h_ij,d)**.
- Image entropy and image mutual information, ShEntropy.m & mutualInf.m

    
## K-Optimizer Method
   The IR-based Optimization method, Koptimizer.m
   \
    The number of extracted feature points from an image can be boosted by this algorithm (How? I invite you to read the paper). The function **Koptimizer** gets an image and a     feature distance (usually a number ranging within 6 to 9, **d=8** is preferred). Thus, let image **X** and call **K_o=Koptimizer(X,d)**, and then you will have a coefficient     **K_o** which should be multiplied by the image (**X**): **Y=K_o * X**.
    \
    Now, you have an image that guarantees feature extraction algorithms can extract more features when using it than when using the original image. The improvement rate is           roughly 15% to 35% on average, of course, depended on the utilized feature extraction algorithm.
    \
    The paper mainly discusses handcrafted feature points, but you can use this optimizing method for ML or DL algorithms as well (Why? because **features** are **features** :))
    \
    Good Luck!
