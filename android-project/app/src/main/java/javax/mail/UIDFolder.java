package javax.mail;

/* JADX INFO: loaded from: classes.dex */
public interface UIDFolder {
    public static final long LASTUID = -1;
    public static final long MAXUID = 4294967295L;

    public static class FetchProfileItem extends FetchProfile.Item {
        public static final FetchProfileItem UID = new FetchProfileItem("UID");

        public FetchProfileItem(String str) {
            super(str);
        }
    }

    Message getMessageByUID(long j2);

    Message[] getMessagesByUID(long j2, long j3);

    Message[] getMessagesByUID(long[] jArr);

    long getUID(Message message);

    long getUIDNext();

    long getUIDValidity();
}
