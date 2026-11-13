package javax.mail;

/* JADX INFO: loaded from: classes.dex */
public interface QuotaAwareStore {
    Quota[] getQuota(String str);

    void setQuota(Quota quota);
}
