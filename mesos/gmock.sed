0,/^#ifdef _MSC_VER/{
	/#ifdef _MSC_VER/i \
# pragma GCC diagnostic push \
# pragma GCC diagnostic ignored "-Winfinite-recursion"
}
/return Invalid/,/^#ifdef _MSC_VER/{
	/#ifdef _MSC_VER/i \
# pragma GCC diagnostic pop
}
/^#ifdef _MSC_VER/,/^#endif/d
