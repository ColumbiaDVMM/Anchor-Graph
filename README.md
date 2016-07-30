Large Graph Construction for Scalable Semi-Supervised Learning [Code]
----
####Terms of Use
Copyright (c) 2009-2011 by by DVMM Laboratory

Department of Electrical Engineering</br>
Columbia University</br>
Rm 1312 S.W. Mudd, 500 West 120th Street</br>
New York, NY 10027</br>
USA

If it is your intention to use this code for non-commercial purposes, such as in academic research, this code is free.

If you use this code in your research, please acknowledge the authors, and cite our related publication:

Wei Liu, Junfeng He, and Shih-Fu Chang, "Large Graph Construction for Scalable Semi-Supervised Learning," International Conference on Machine Learning (ICML), Haifa, Israel, 2010.

####Instruction

Please first see usps_demo.m to find how my codes work.

To run AnchorGraph.m,  one needs to input anchors. In my ICML'10 paper, I used K-means clustering centers 
as anchors. If one had any sophisticated or task specific clustering algorithms, it could be better to feed 
the resulting clustering centers to anchors. Nevertheless, I found K-means anchors are sufficiently good.

Another possible issue is dimensionality. I strongly suggest users to conduct dimension reduction such
as PCA or LSA before running AnchorGraph.m. The proper dimension for data on which AnchorGraph is to be
constructed is 100-1000.

For any problem with my codes, feel free to drop me a message via wliu@ee.columbia.edu. Also, I hope you
to cite my ICML'10 paper in your publications.

Wei Liu
April 18, 2011

  






 