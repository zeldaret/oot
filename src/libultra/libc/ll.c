// IDO Compiler Intrinsics for 64-bit arithmetic

unsigned long long __ull_rshift(unsigned long long l, unsigned long long r) {
    return l >> r;
}

unsigned long long __ull_rem(unsigned long long l, unsigned long long r) {
    return l % r;
}

unsigned long long __ull_div(unsigned long long l, unsigned long long r) {
    return l / r;
}

unsigned long long __ll_lshift(unsigned long long l, unsigned long long r) {
    return l << r;
}

long long __ll_rem(unsigned long long l, long long r) {
    return l % r;
}

long long __ll_div(long long l, long long r) {
    return l / r;
}

unsigned long long __ll_mul(unsigned long long l, unsigned long long r) {
    return l * r;
}

void __ull_divremi(unsigned long long int* quotient, unsigned long long int* remainder,
                   unsigned long long dividend, unsigned short divisor) {
    *quotient = dividend / divisor;
    *remainder = dividend % divisor;
}

long long __ll_mod(long long l, long long r) {
    long long remainder = l % r;

    if ((remainder < 0 && r > 0) || (remainder > 0 && r < 0)) {
        remainder += r;
    }
    return remainder;
}

long long __ll_rshift(long long l, long long r) {
    return l >> r;
}
