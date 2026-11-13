package com.sun.mail.iap;

/* JADX INFO: loaded from: classes.dex */
public class ConnectionException extends ProtocolException {
    private static final long serialVersionUID = 5749739604257464727L;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private transient Protocol f2903p;

    public ConnectionException() {
    }

    public Protocol getProtocol() {
        return this.f2903p;
    }

    public ConnectionException(String str) {
        super(str);
    }

    public ConnectionException(Protocol protocol, Response response) {
        super(response);
        this.f2903p = protocol;
    }
}
