package P0;

/* JADX INFO: loaded from: classes.dex */
public final class j extends RuntimeException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final z0.j f439a = z0.j.f4284a;

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        this.f439a.getClass();
        return "EmptyCoroutineContext";
    }
}
