package com.sun.mail.imap.protocol;

/* JADX INFO: loaded from: classes.dex */
public class UID implements Item {
    static final char[] name = {'U', 'I', 'D'};
    public int seqnum;
    public long uid;

    public UID(FetchResponse fetchResponse) {
        this.seqnum = fetchResponse.getNumber();
        fetchResponse.skipSpaces();
        this.uid = fetchResponse.readLong();
    }
}
