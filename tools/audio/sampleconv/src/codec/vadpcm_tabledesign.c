/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: CC0-1.0
 */
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include "../util.h"
#include "vadpcm.h"

// Levinson-Durbin algorithm for iteratively solving for prediction and reflection coefficients, given autocorrelation
// https://en.wikipedia.org/wiki/Levinson_recursion
static int
durbin(double *acvec, int order, double *reflection_coeffs, double *prediction_coeffs, double *error)
{
    int i, j;
    double sum, E;
    int ret;

    prediction_coeffs[0] = 1.0;
    E = acvec[0]; // E[0] = r{xx}[0]
    ret = 0;

    for (i = 1; i <= order; i++) {
        // SUM(j, a[i-1][j] * r{xx}[i - j] )
        sum = 0.0;
        for (j = 1; j <= i - 1; j++) {
            sum += prediction_coeffs[j] * acvec[i - j];
        }

        // a[i][i] = -Delta[i-1] / E[i-1]
        prediction_coeffs[i] = (E > 0.0) ? (-(acvec[i] + sum) / E) : 0.0;
        // k[i] = a[i][i]
        reflection_coeffs[i] = prediction_coeffs[i];

        if (fabs(reflection_coeffs[i]) > 1.0) {
            // incr when a reflection coefficient has a magnitude > 1 (indicates numerical instability in the model)
            ret++;
        }

        for (j = 1; j < i; j++) {
            // a[i][j] = a[i-1][j] + a[i-1][i - j] * a[i][i]
            prediction_coeffs[j] += prediction_coeffs[i - j] * prediction_coeffs[i];
        }

        // E[i] = E[i-1] * (1.0 - k[i] ** 2)
        //      = E[i-1] * (1.0 - a[i][i] ** 2)
        E *= 1.0 - prediction_coeffs[i] * prediction_coeffs[i];
    }
    *error = E;
    return ret;
}

// Reflection coefficients (k) -> Predictor coefficients (a)
// A subset of Levinson-Durbin that only computes predictors from known reflection coefficients and previous predictors
static void
afromk(double *k, double *ai, int order)
{
    int i, j;

    ai[0] = 1.0;

    for (i = 1; i <= order; i++) {
        // a[i][i] = k[i]
        ai[i] = k[i];

        for (j = 1; j <= i - 1; j++) {
            // a[i][j] = a[i-1][j] + a[i-1][i - j] * k[i] = a[i-1][j] + a[i-1][i - j] * a[i][i]
            ai[j] += ai[i - j] * ai[i];
        }
    }
}

// Prediction coefficients (a) -> Reflection coefficients (k)
// Performs afromk in reverse?
// Returns 0 if numerically stable, otherwise returns non-zero
static int
kfroma(double *in, double *out, int order)
{
    int i, j;
    double div;
    double temp;
    double next[order + 1];
    int ret = 0;

    out[order] = in[order];

    for (i = order - 1; i >= 1; i--) {
        for (j = 0; j <= i; j++) {
            temp = out[i + 1];
            div = 1.0 - temp * temp;

            if (div == 0.0) {
                return 1;
            }

            next[j] = (in[j] - in[i - j + 1] * temp) / div;
        }

        for (j = 0; j <= i; j++) {
            in[j] = next[j];
        }

        out[i] = next[i];
        if (fabs(out[i]) > 1.0) {
            // Not numerically stable
            ret++;
        }
    }

    return ret;
}

// autocorrelation (r{xx}) from predictors (a) ?
static void
rfroma(double *in, int n, double *out)
{
    int i, j;
    double mat[n + 1][n + 1];
    double div;

    mat[n][0] = 1.0;
    for (i = 1; i <= n; i++) {
        mat[n][i] = -in[i];
    }

    for (i = n; i >= 1; i--) {
        div = 1.0 - mat[i][i] * mat[i][i];

        for (j = 1; j <= i - 1; j++) {
            mat[i - 1][j] = (mat[i][i - j] * mat[i][i] + mat[i][j]) / div;
        }
    }

    out[0] = 1.0;
    for (i = 1; i <= n; i++) {
        out[i] = 0.0;
        for (j = 1; j <= i; j++) {
            out[i] += mat[i][j] * out[i - j];
        }
    }
}

static double
model_dist(double *mean_predictors, double *frame_predictors, int order)
{
    double autocorrelation_frame_predictors[order + 1];
    double autocorrelation_mean_predictors[order + 1];
    double ret;
    int i, j;

    // autocorrelation from frame predictors
    rfroma(frame_predictors, order, autocorrelation_frame_predictors);

    // autocorrelation from current mean predictors (?)
    for (i = 0; i <= order; i++) {
        autocorrelation_mean_predictors[i] = 0.0;
        for (j = 0; j <= order - i; j++)
            autocorrelation_mean_predictors[i] += mean_predictors[j] * mean_predictors[i + j];
    }

    // compute "model distance" (scaled L2 norm: 2 * inner(ac1, ac2) )
    // this compares how good the mean predictors are to the optimal predictors for this frame
    ret = autocorrelation_frame_predictors[0] * autocorrelation_mean_predictors[0];
    for (i = 1; i <= order; i++)
        ret += 2 * autocorrelation_frame_predictors[i] * autocorrelation_mean_predictors[i];

    return ret;
}

// Calculate the autocorrelation matrix of two vectors at x and x - xlen
// https://en.wikipedia.org/wiki/Autocorrelation
static void
acmat(int16_t *x, int order, int xlen, double **ac)
{
    int i, j, k;

    for (i = 1; i <= order; i++) {
        for (j = 1; j <= order; j++) {
            // R{xx}[i,j] = E[X[i] * X[j]]

            ac[i][j] = 0.0;
            for (k = 0; k < xlen; k++) {
                ac[i][j] += x[k - i] * x[k - j];
            }
        }
    }
}

// Computes the autocorrelation vector of two vectors at x and x - xlen
static void
acvect(int16_t *x, int order, int xlen, double *ac)
{
    int i, j;

    for (i = 0; i <= order; i++) {
        ac[i] = 0.0;
        // r{xx} = E(x(m)x) = SUM(j, x[j - i] * x[j])
        for (j = 0; j < xlen; j++) {
            ac[i] -= x[j - i] * x[j];
        }
    }
}

/**
 * Lower-Upper (with Permutation vector) (LUP) Decomposition
 *
 * Replaces a real n-by-n matrix "a" with the LU decomposition of a row-wise
 * permutation of itself.
 *
 * Input parameters:
 * a: The matrix which is operated on. 1-indexed; it should be of size
 *    (n+1) x (n+1), and row/column index 0 is not used.
 * n: The size of the matrix.
 *
 * Output parameters:
 * indx: The row permutation performed. 1-indexed; it should be of size n+1,
 *       and index 0 is not used.
 * d: the determinant of the permutation matrix.
 *
 * Returns 1 to indicate failure if the matrix is singular or has zeroes on the
 * diagonal, 0 on success.
 *
 * Derived from ludcmp in "Numerical Recipes in C: The Art of Scientific Computing",
 * with modified error handling.
 */
static int
lud(double **a, int n, int *perm, int *d)
{
    int i, imax = 0, j, k;
    double big, dum, sum, temp;
    double min, max;
    double vv[n + 1];

    *d = 1;
    for (i = 1; i <= n; i++) {
        big = 0.0;
        for (j = 1; j <= n; j++)
            if ((temp = fabs(a[i][j])) > big)
                big = temp;

        if (big == 0.0)
            return 1;

        vv[i] = 1.0 / big;
    }

    for (j = 1; j <= n; j++) {
        for (i = 1; i < j; i++) {
            sum = a[i][j];
            for (k = 1; k < i; k++)
                sum -= a[i][k] * a[k][j];

            a[i][j] = sum;
        }

        big = 0.0;

        for (i = j; i <= n; i++) {
            sum = a[i][j];
            for (k = 1; k < j; k++)
                sum -= a[i][k] * a[k][j];

            a[i][j] = sum;

            if ((dum = vv[i] * fabs(sum)) >= big) {
                big = dum;
                imax = i;
            }
        }

        if (j != imax) {
            for (k = 1; k <= n; k++) {
                dum = a[imax][k];
                a[imax][k] = a[j][k];
                a[j][k] = dum;
            }

            *d = -(*d);
            vv[imax] = vv[j];
        }

        perm[j] = imax;

        if (a[j][j] == 0.0)
            return 1;

        if (j != n) {
            dum = 1.0 / (a[j][j]);
            for (i = j + 1; i <= n; i++)
                a[i][j] *= dum;
        }
    }

    min = 1e10;
    max = 0.0;
    for (i = 1; i <= n; i++) {
        temp = fabs(a[i][i]);
        if (temp < min)
            min = temp;
        if (temp > max)
            max = temp;
    }
    return (min / max < 1e-10) ? 1 : 0;
}

/**
 * Solves the set of n linear equations Ax = b, using LU decomposition back-substitution.
 *
 * Input parameters:
 * a: The LU decomposition of a matrix, created by "lud".
 * n: The size of the matrix.
 * indx: Row permutation vector, created by "lud".
 * b: The vector b in the equation. 1-indexed; is should be of size n+1, and index 0 is not used.
 *
 * Output parameters:
 * b: The output vector x. 1-indexed.
 *
 * From "Numerical Recipes in C: The Art of Scientific Computing".
 */
static void
lubksb(double **a, int n, int *perm, double *b)
{
    int i, ii = 0, ip, j;
    double sum;

    for (i = 1; i <= n; i++) {
        ip = perm[i];
        sum = b[ip];
        b[ip] = b[i];

        if (ii) {
            for (j = ii; j <= i - 1; j++)
                sum -= a[i][j] * b[j];
        } else if (sum) {
            ii = i;
        }

        b[i] = sum;
    }

    for (i = n; i >= 1; i--) {
        sum = b[i];
        for (j = i + 1; j <= n; j++)
            sum -= a[i][j] * b[j];
        b[i] = sum / a[i][i];
    }
}

static void
split(double **predictors, double *delta, int order, int npredictors, double scale)
{
    int i, j;

    for (i = 0; i < npredictors; i++) {
        for (j = 0; j <= order; j++) {
            predictors[i + npredictors][j] = predictors[i][j] + delta[j] * scale;
        }
    }
}

static void
refine(double **predictors, int order, int npredictors, double *all_frame_predictors, int num_frame_predictors,
       int refine_iters)
{
    int iter;
    double dist;
    double dummy;
    double best_value;
    int best_index;
    int i, j;

    double rsums[npredictors][order + 1];
    int counts[npredictors];
    double vec[order + 1];

    // For some number of refinement iterations
    for (iter = 0; iter < refine_iters; iter++) {
        // Initialize average autocorrelations
        memset(counts, 0, npredictors * sizeof(int));
        memset(rsums, 0, npredictors * (order + 1) * sizeof(double));

        // Sum autocorrelations for averaging for each frame, binning them based on best fitting predictor set
        for (i = 0; i < num_frame_predictors; i++) {
            best_value = 1e30;
            best_index = 0;

            // Find the choice of predictor that minimizes the "model distance" for this frame
            for (j = 0; j < npredictors; j++) {
                // Compare with current mean predictors, the distance metric is based on autocorrelations
                dist = model_dist(predictors[j], &all_frame_predictors[(order + 1) * i], order);

                if (dist < best_value) {
                    // Record the new best predictors
                    best_value = dist;
                    best_index = j;
                }
            }

            // Compute autocorrelation from optimal predictor
            rfroma(&all_frame_predictors[(order + 1) * i], order, vec);
            // Add to average autocorrelation for the best predictor choice
            for (j = 0; j <= order; j++)
                rsums[best_index][j] += vec[j];

            // Update the counter of how many frames we've summed for this predictor
            counts[best_index]++;
        }

        // Finalize average autocorrelations
        for (i = 0; i < npredictors; i++) {
            if (counts[i] > 1) {
                // Need to divide by the number of frames we summed
                for (j = 0; j <= order; j++) {
                    rsums[i][j] /= counts[i];
                }
            }
        }

        // Update the predictors with the new average autocorrelations in each bin
        for (i = 0; i < npredictors; i++) {
            // Compute predictors and reflection coefficients from average autocorrelation
            durbin(rsums[i], order, vec, predictors[i], &dummy);

            // Clamp reflection coeffs for stability
            for (j = 1; j <= order; j++) {
                if (vec[j] >= 1.0)
                    vec[j] = 0.9999999999;
                if (vec[j] <= -1.0)
                    vec[j] = -0.9999999999;
            }

            // Convert clamped reflection coeffs to stable predictors
            afromk(vec, predictors[i], order);
        }
    }
}

static int
read_row(int16_t *out, double *predictors, int order)
{
    int i, j, k;
    int overflows;
    double table[8][order];

    // (discussion is for order=2)
    //
    // Converts 2 predictors a,b into the coefficients for an FIR filter matrix
    // [ c0, d0, 1,  0,  0,  0,  0,  0,  0,  0 ]
    // [ c0, d1, d0, 1,  0,  0,  0,  0,  0,  0 ]
    // [ c0, d2, d1, d0, 1,  0,  0,  0,  0,  0 ]
    // [ c0, d3, d2, d1, d0, 1,  0,  0,  0,  0 ]
    // [ c0, d4, d3, d2, d1, d0, 1,  0,  0,  0 ]
    // [ c0, d5, d4, d3, d2, d1, d0, 1,  0,  0 ]
    // [ c0, d6, d5, d4, d3, d2, d1, d0, 1,  0 ]
    // [ c0, d7, d6, d5, d4, d3, d2, d1, d0, 1 ]
    //
    // Multiplication by this matrix on a vector containing the previous two samples p[-2] and p[-1] and 8 residuals
    // s[i] decodes 8 samples p[i] simultaneously.
    // Only c0..7 and d0..7 are actually stored in the book, the decoder arranges the rest.
    //
    // The coefficients are those you get by substituting decoded samples into the prediction model at each step to
    // express each p[i] for i in [0, 8) as a linear combination of p[-2], p[-1] and past residuals
    //      p[i] = a * p[i - 2] * b * p[i - 1] + s[i]
    //
    // c0 = a,          d0 = b
    // c1 = ab,         d1 = a + b^2
    // c2 = a^2 + ab^2, d2 = 2ab + b^3
    // ...

    for (i = 0; i < order; i++) {
        for (j = 0; j < i; j++)
            table[i][j] = 0.0;

        for (j = i; j < order; j++)
            table[i][j] = -predictors[order - j + i];
    }
    for (i = order; i < 8; i++) {
        for (j = 0; j < order; j++)
            table[i][j] = 0.0;
    }

    for (i = 1; i < 8; i++) {
        for (j = 1; j <= order; j++) {
            if (i >= j) {
                for (k = 0; k < order; k++)
                    table[i][k] -= predictors[j] * table[i - j][k];
            }
        }
    }

    // Convert double-precision book entries into qs4.11 fixed point numbers,
    // rounding away from 0 and checking for overflows
    overflows = 0;
    for (i = 0; i < order; i++) {
        for (j = 0; j < 8; j++) {
            int ival;
            double fval = table[j][i] * (double)(1 << 11);

            if (fval < 0.0) {
                ival = (int)(fval - 0.5);
                if (ival < -0x8000)
                    overflows++;
            } else {
                ival = (int)(fval + 0.5);
                if (ival >= 0x8000)
                    overflows++;
            }

            *out++ = ival;
        }
    }

    return overflows;
}

int
tabledesign_run(int16_t *order_out, int16_t *npredictors_out, int16_t **book_data_out, void *sample_data,
                size_t num_samples, const table_design_spec *design)
{
    static const table_design_spec default_design = {
        .order = 2,
        .bits = 2,
        .refine_iters = 2,
        .thresh = 10.0,
        .frame_size = 16,
    };

    if (design == NULL)
        design = &default_design;

    int16_t order = design->order;
    int16_t npredictors = 1 << design->bits;
    unsigned int frame_size = design->frame_size;

    int num_order = order + 1;

    double vec[num_order];
    int perm[num_order];
    double reflection_coeffs[num_order];

    int16_t *buffer = MALLOC_CHECKED_INFO(2 * frame_size * sizeof(int16_t), "frame_size=%u", frame_size);

    double **predictors = MALLOC_CHECKED_INFO(npredictors * sizeof(double *), "npredictors=%d", npredictors);
    for (int i = 0; i < npredictors; i++)
        predictors[i] = MALLOC_CHECKED_INFO(num_order * sizeof(double), "npredictors=%d", npredictors);

    double **autocorrelation_matrix = MALLOC_CHECKED_INFO(num_order * sizeof(double *), "num_order=%d", num_order);
    for (int i = 0; i < num_order; i++)
        autocorrelation_matrix[i] = MALLOC_CHECKED_INFO(num_order * sizeof(double), "num_order=%d", num_order);

    // (back-)align to a multiple of the frame size
    size_t nframes = num_samples - (num_samples % frame_size);

    double *all_frame_predictors =
        MALLOC_CHECKED_INFO(nframes * num_order * sizeof(double), "nframes=%lu, num_order=%d", nframes, num_order);
    uint32_t num_frame_predictors = 0;

    int16_t *sample = sample_data;
    int16_t *sample_end = sample + nframes;

    memset(buffer, 0, frame_size * sizeof(*buffer));

    // First, compute the optimal set of predictors for every complete frame in the signal, where optimal here means
    // the predictors that minimize the mean-square error between the predicted signal and the true signal.

    for (; sample < sample_end; sample += frame_size) {
        // Copy sample data into second half of buffer, during the first iteration the first half is 0 while in
        // later iterations the second half of the previous iteration is shifted into the first half.
        memcpy(&buffer[frame_size], sample, frame_size * sizeof(*buffer));

        // Compute autocorrelation vector of the two vectors in the buffer
        acvect(&buffer[frame_size], order, frame_size, vec);

        // First element of autocorrelation has the largest magnitude
        if (fabs(vec[0]) > design->thresh) {
            // Over threshold

            // Computes the autocorrelation matrix of the two vectors in the buffer
            acmat(&buffer[frame_size], order, frame_size, autocorrelation_matrix);

            // Compute the LUP decomposition of the autocorrelation matrix
            int perm_det;
            if (lud(autocorrelation_matrix, order, perm, &perm_det) == 0) { // Continue only if numerically stable
                // Back-substitution to solve the linear equation Ra = r
                // where
                //  R = autocorrelation matrix
                //  r = autocorrelation vector
                //  a = linear prediction coefficients
                // After this vec contains the prediction coefficients that minimize the mean-square error.
                lubksb(autocorrelation_matrix, order, perm, vec);
                vec[0] = 1.0;

                // Compute reflection coefficients from prediction coefficients
                if (kfroma(vec, reflection_coeffs, order) == 0) { // Continue only if numerically stable
                    all_frame_predictors[num_frame_predictors * num_order] = 1.0;

                    // Clamp the reflection coefficients. Reflection coefficients are clamped rather than the
                    // predictors themselves as the reflection coefficients have a direct relationship with the
                    // stability of the model. If the reflection coefficients are outside of the interval (-1,1)
                    // the model is unstable as the associated transfer function will contain poles outside the
                    // complex unit disk. If the reflection coefficients are all inside the interval (-1,1) there
                    // are no poles outside of the unit disk, guaranteeing the stability of the model.
                    for (int i = 1; i < num_order; i++) {
                        if (reflection_coeffs[i] >= 1.0)
                            reflection_coeffs[i] = 0.9999999999;
                        if (reflection_coeffs[i] <= -1.0)
                            reflection_coeffs[i] = -0.9999999999;
                    }

                    // Compute prediction coefficients from clamped reflection coefficients
                    afromk(reflection_coeffs, &all_frame_predictors[num_frame_predictors * num_order], order);
                    num_frame_predictors++;
                }
            }
        }

        // Move second vector to first vector
        memcpy(&buffer[0], &buffer[frame_size], frame_size * sizeof(*buffer));
    }

    // Now that predictors for every frame have been found, they need to be reduced to a manageable quantity
    // (determined by npredictors) to build the prediction codebook that will be exported. First compute the average
    // autocorrelation of the prediction models for all frames:

    // Create a vector [1.0, 0.0, ..., 0.0]
    vec[0] = 1.0;
    for (int i = 1; i < num_order; i++)
        vec[i] = 0.0;

    for (uint32_t i = 0; i < num_frame_predictors; i++) {
        // Compute autocorrelation from predictors, equivalent to computing the autocorrelation on the signal produced
        // by following the prediction model exactly.
        rfroma(&all_frame_predictors[i * num_order], order, predictors[0]);

        for (int k = 1; k < num_order; k++)
            vec[k] += predictors[0][k];
    }

    for (int i = 1; i < num_order; i++)
        vec[i] /= num_frame_predictors;

    // vec now contains the average autocorrelation.
    // Compute predictors for this average autocorrelation using the Levinson-Durbin algorithm.
    double dummy;
    durbin(vec, order, reflection_coeffs, predictors[0], &dummy);

    // Clamp resulting reflection coefficients to ensure stability
    for (int i = 1; i < num_order; i++) {
        if (reflection_coeffs[i] >= 1.0)
            reflection_coeffs[i] = 0.9999999999;
        if (reflection_coeffs[i] <= -1.0)
            reflection_coeffs[i] = -0.9999999999;
    }

    // Convert clamped reflection coefficients to stable predictors
    afromk(reflection_coeffs, predictors[0], order);

    // Starting with the predictors obtained from the average autocorrelation, cluster the predictors for each frame
    // via k-means until we have just npredictors worth of output
    for (unsigned cur_bits = 0; cur_bits < design->bits; cur_bits++) {
        double split_delta[num_order];

        // Prepare [0, ..., -1, 0]
        for (int i = 0; i < num_order; i++)
            split_delta[i] = 0.0;
        split_delta[order - 1] = -1.0;

        // Split the predictors into two halves
        split(predictors, split_delta, order, 1 << cur_bits, 0.01);

        // Update the values of each half to the means of the halves
        refine(predictors, order, 1 << (1 + cur_bits), all_frame_predictors, num_frame_predictors,
               design->refine_iters);
    }

    // Now we have the reduced set of predictors, write them into the book of size 8 * order * npredictors

    int16_t *book_data =
        MALLOC_CHECKED_INFO(8 * order * npredictors * sizeof(int16_t), "order=%d, npredictors=%d", order, npredictors);

    *order_out = order;
    *npredictors_out = npredictors;

    // As a final step, we need to convert the predictors into coefficients for an FIR filter so that samples in a
    // frame can be decoded in parallel taking advantage of the RSP's 8-lane SIMD instruction set.
    int num_oflow = 0;
    for (int i = 0; i < npredictors; i++)
        num_oflow += read_row(&book_data[8 * order * i], predictors[i], order);

    if (num_oflow) {
        error("overflow detected in tabledesign");
    }

    *book_data_out = book_data;

    free(buffer);
    free(all_frame_predictors);

    for (int i = 0; i < num_order; i++)
        free(autocorrelation_matrix[i]);
    free(autocorrelation_matrix);

    for (int i = 0; i < npredictors; i++)
        free(predictors[i]);
    free(predictors);

    return 0;
}
