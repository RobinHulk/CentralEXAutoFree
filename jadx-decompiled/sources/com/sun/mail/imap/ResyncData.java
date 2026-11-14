package com.sun.mail.imap;

import com.sun.mail.imap.protocol.UIDSet;

/* JADX INFO: loaded from: classes.dex */
public class ResyncData {
    public static final ResyncData CONDSTORE = new ResyncData(-1, -1);
    private long modseq;
    private UIDSet[] uids;
    private long uidvalidity;

    public ResyncData(long j2, long j3) {
        this.uidvalidity = j2;
        this.modseq = j3;
        this.uids = null;
    }

    public long getModSeq() {
        return this.modseq;
    }

    public UIDSet[] getUIDSet() {
        return this.uids;
    }

    public long getUIDValidity() {
        return this.uidvalidity;
    }

    public ResyncData(long j2, long j3, long j4, long j5) {
        this.uids = null;
        this.uidvalidity = j2;
        this.modseq = j3;
        this.uids = new UIDSet[]{new UIDSet(j4, j5)};
    }

    public ResyncData(long j2, long j3, long[] jArr) {
        this.uids = null;
        this.uidvalidity = j2;
        this.modseq = j3;
        this.uids = UIDSet.createUIDSets(jArr);
    }
}
