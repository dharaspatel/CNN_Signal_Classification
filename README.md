# CNN_Signal_Classification
Contributers: [Chelsea](@c-bailey2) and [Dhara](@dharaspatel)

## Background 
We’ve covered a lot of amplitude modulation (AM) signal processing in class, but there is so much more to learn about! AM classification, for example, is really important because it is used to quickly adapt to various communication systems, without requiring control overhead. Modulation recognition may also prove to be an essential capability for identifying the source(s) of received wireless signals, which can enable various intelligent decisions for a context-aware autonomous wireless communication system. 
QAM, or Quadrature Amplitude Modulation, is a digital modulation method that sends two streams by changing the amplitude of the orthogonal carrier waves. We’ve touched on QAM a bit in class but we would like to go beyond that and explore what types of QAMs there  are (Rectangular, Square, Triangle, 16-bit, 32-bit, etc.) and what makes one modulation method more efficient than another. 
Our learning goals for this final project are to solidify large concepts in ADC (digital and analog processing, sampling, and filtering) and understanding the differences between and applications of modulation methods. Applying ADC to machine learning concepts will help us understand why certain types of AM or QAM modulation are better. 

## Goals 
### MVP 
At a minimum, we hope to implement a neural network (probably CNN) that classifies AM signals with high accuracy. We want our signal classifier to be able to differentiate AM from FM at the very least. We will use Python to implement machine learning algorithms and collect data using an SDR. 

### Mountain 
Our expectation is to reach a point where we have implemented an AM neural network system, and use research and papers we have found to try and improve our implementation. We would also like to try one or two other types of data to train and use our model on, such as seeing how the system handles audio and graphic inputs.

### Stretch 
Our stretch goal is to take what we’ve learned about neural networks during our work earlier in this project and apply it to a QAM system. Depending on time left we could either simulate this model or implement it with an RTL-SDR.

## Timeline
12/2 - MVP Complete 
12/9 - Mountain 
12/14 - Final Presentation 

## Resources 
https://iopscience.iop.org/article/10.1088/1742-6596/1302/2/022095/pdf 
http://ecelabs.njit.edu/ece489v2/lab5.php 
https://github.com/randaller/cnn-rtlsdr 
https://arxiv.org/pdf/1901.05850.
pdf 
https://www.semanticscholar.org/paper/NEURAL-NETWORK-DEMODULATOR-FOR-QUADRATURE-AMPLITUDE-Milad/227f0c028e127cb17c16184a105b1416cf139324

