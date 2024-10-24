# VADPCM

The Vector Adaptive Differential Pulse-Code Modulation (VADPCM) is an adaptation of ADPCM designed to be decoded quickly using the N64's Reality Signal Processor (RSP) with it's 8-lane 16-bit SIMD instruction set.

As with ADPCM it is based on linear prediction models. A (forward) linear prediction model allows one to determine the next sample in a signal based on a linear combination of the prior samples, and an error term encoding how far off the prediction is to the true value of the next sample.

Let

$$
\hat{x}[n] = \sum^O_{i=1} a_i x[n - i]
$$

be the value of the prediction based on the prior samples $x$. The coefficients $a_i$ are called the 'prediction coefficients' and are arranged into a 'codebook' that is used in decoding. The number of samples to look back on $O$ is called the "order", in practice we will fix this to 2 as this is the only value supported by the decoder.

Further let

$$
e[n] = x[n] - \hat{x}[n]
$$

be the error in the prediction $\hat{x}[n]$ from the true sample value $x[n]$. These errors are quantized and stored for use in decoding.

Given these quantities, we let the next sample $x[n]$ be (fixing $O=2$)

$$
x[n] = a_1 x[n - 1] + a_2 x[n - 2] + e[n]
$$

We need only store the prediction coefficients and the error terms, and agree on what the two initial values should be in order to decode a sequence of samples. In practice we arrange the signal into 16-sample frames and assign new predictors for each frame.

---
## Decoding VADPCM

9-byte-per-frame VADPCM frames consist of
 - A 4-bit predictor page number that selects 16 predictors from the book.
 - A 4-bit scale factor that determines by how much to scale up all the quantized residuals by.
 - 16x 4-bit residuals, one for each sample.

5-byte-per-frame VADPCM frames consist of
 - A 4-bit predictor page number that selects 16 predictors from the book.
 - A 4-bit scale factor (log2-encoded) that determines by how much to scale up all the quantized residuals by.
 - 16x 2-bit residuals, one for each sample.

The first 8 bits are together referred to as the frame header.

The decoding largely consists of multiplying the following 10x8 FIR filter matrix with a vector consisting of the last two decoded samples and 8 residuals after scaling by the scale factor in the frame header.

$$
\begin{pmatrix}
    p_0 \\
    p_1 \\
    p_2 \\
    p_3 \\
    p_4 \\
    p_5 \\
    p_6 \\
    p_7 \\
\end{pmatrix} =
\begin{pmatrix}
    c_0 & d_0 &   1 &   0 &   0 &   0 &   0 &   0 &   0 &   0 \\
    c_1 & d_1 & d_0 &   1 &   0 &   0 &   0 &   0 &   0 &   0 \\
    c_2 & d_2 & d_1 & d_0 &   1 &   0 &   0 &   0 &   0 &   0 \\
    c_3 & d_3 & d_2 & d_1 & d_0 &   1 &   0 &   0 &   0 &   0 \\
    c_4 & d_4 & d_3 & d_2 & d_1 & d_0 &   1 &   0 &   0 &   0 \\
    c_5 & d_5 & d_4 & d_3 & d_2 & d_1 & d_0 &   1 &   0 &   0 \\
    c_6 & d_6 & d_5 & d_4 & d_3 & d_2 & d_1 & d_0 &   1 &   0 \\
    c_7 & d_7 & d_6 & d_5 & d_4 & d_3 & d_2 & d_1 & d_0 &   1 \\
\end{pmatrix}
\begin{pmatrix}
    p_{-2} \\
    p_{-1} \\
    s_0 \\
    s_1 \\
    s_2 \\
    s_3 \\
    s_4 \\
    s_5 \\
    s_6 \\
    s_7 \\
\end{pmatrix}
$$

where
 - $p_{-2}$, $p_{-1}$ are the two most recently decoded samples, corresponding to $p_6$ and $p_7$ in the previous set of 8 samples. For the very first frame, let both be 0.
 - $s_0$, $s_7$ residuals for the next 8 samples (half a frame) to decode, scaled by the scale factor chosen in the frame header.
 - $c_{0...7}$, $d_{0...7}$ are derived from the codebook predictors chosen in the frame header. $c_i$ and $d_i$ are computed from $a_i$ in advance when the codebook is generated during encoding.

This calculation is performed twice to decode a full frame.

The particular efficiency of VADPCM comes from how each sample in the above vector equation can be computed with 16-bit SIMD that is available on the RSP.

---
## Encoding VADPCM: Obtaining optimal predictors

The SDK tool `tabledesign` and our tool [sampleconv](../../tools/audio/sampleconv/src/codec/vadpcm_tabledesign.c) finds optimal predictors by way of the autocorrelation criterion, where the mean-squared error $\mathrm{E} [e^2[n]]$ is minimized.

The mean-squared error is

```math
\begin{aligned}
\mathrm{E}[e^2[n]] &= \mathrm{E} \left [ \left ( x[n] - \hat{x}[n] \right )^2 \right ] = \mathrm{E} \left [ x^2[n] - 2 x[n] \hat{x}[n] + \hat{x}^2[n] \right ]
\\
          &= \mathrm{E} \left [ x^2[n] \right ] - 2 \mathrm{E} \left [ x[n] \hat{x}[n] \right ] + \mathrm{E} \left [ \hat{x}^2[n] \right ]
\\
          &= \mathrm{E} \left [ x^2[n] \right ] - 2 \sum^O_{i=1} a_i \mathrm{E} \left [ x[n] x[n-i] \right ] + \sum^O_{i=1} \sum^O_{j=1} a_i a_j \mathrm{E} [x[n-i] x[n-j]]
\\
          &= \mathbf{r}_{xx}[0] - 2 \mathbf{r}_{xx}^\intercal \mathbf{a} + \mathbf{a}^\intercal R_{xx} \mathbf{a}
\end{aligned}
```

where we have identified the autocorrelation vector $`\mathbf{r}_{xx}`$ and autocorrelation matrix $`R_{xx}`$.

Minimizing this yields the optimal predictors in terms of the autocorrelation:

```math
\frac{\partial}{\partial \mathbf{a}} \mathrm{E} \left [ e^2[n] \right ] = -2 \mathbf{r}_{xx}^\intercal + 2 \mathbf{a}^\intercal R_{xx} = 0
```

```math
r_{xx} = R_{xx} \mathbf{a} \Rightarrow \mathbf{a} = R^{-1}_{xx} \mathbf{r}_{xx}
```

The Levinson-Durbin algorithm provides an efficient solution to this if the system is known to be stable. These predictors are used to assemble the codebook that is used along with residuals to decode the samples.

This is done for all 16-sample frames to produce a set of predictors that is optimal for that frame. However this is far too much data to include in the output, k-means clustering is employed to decimate the set of predictors down to a representative set that is suitable for all frames.

Finally, the average predictors output by k-means, $\{ a_i \}$, are converted to the FIR filter coefficients $\{ c_i \}$, $\{ d_i \}$ for use in decoding.

## Encoding VADPCM: Frames

To encode a frame, we must first find the best-fitting predictors in our representative set. This is done by finding the predictors that minimizes the $L^2$ norm of the residuals. The residuals for the best fit are then taken for quantization.

When using the previous two samples in the last frame, they should be the decode result as that is all the decoder will have available.

To save space in the binary, the residuals from the prediction are quantized from 16 bits to either 2 or 4 bits depending on frame size. A power-of-2 scale factor is chosen for the entire frame such that the samples fit within the required number of bits and the rescaled residuals are rounded to the nearest integer.

The frame is assembled as:
- 4-bit predictor index identifying the best-fitting predictor for this frame, 
- 4-bit scale
- 16x 4-bit (or 2-bit) quantized residuals

This continues for all frames until the entire signal is compressed.
