package ecarx.xsf.mediacenter.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class PlaybackInfo implements Parcelable {
    public static final Parcelable.Creator<PlaybackInfo> CREATOR = new Parcelable.Creator<PlaybackInfo>() { // from class: ecarx.xsf.mediacenter.session.PlaybackInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaybackInfo createFromParcel(Parcel parcel) {
            return new PlaybackInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaybackInfo[] newArray(int i2) {
            return new PlaybackInfo[i2];
        }
    };
    private long appId;
    private String appName;
    private Uri iconUri;
    private long initialProgress;
    private PendingIntent launchIntent;
    private MediaItem mediaItem;
    private String pkgName;
    private PendingIntent playerIntent;
    private int zoneId;

    public static class Builder {
        private final PlaybackInfo info = new PlaybackInfo();

        public Builder appId(long j2) {
            this.info.appId = j2;
            return this;
        }

        public Builder appName(String str) {
            this.info.appName = str;
            return this;
        }

        public PlaybackInfo build() {
            return this.info;
        }

        public Builder iconUri(Uri uri) {
            this.info.iconUri = uri;
            return this;
        }

        public Builder initialProgress(long j2) {
            this.info.initialProgress = j2;
            return this;
        }

        public Builder launchIntent(PendingIntent pendingIntent) {
            this.info.launchIntent = pendingIntent;
            return this;
        }

        public Builder mediaItem(MediaItem mediaItem) {
            this.info.mediaItem = mediaItem;
            return this;
        }

        public Builder pkgName(String str) {
            this.info.pkgName = str;
            return this;
        }

        public Builder playerIntent(PendingIntent pendingIntent) {
            this.info.playerIntent = pendingIntent;
            return this;
        }

        public Builder zoneId(int i2) {
            this.info.zoneId = i2;
            return this;
        }
    }

    public PlaybackInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.pkgName);
        parcel.writeParcelable(this.iconUri, i2);
        parcel.writeString(this.appName);
        parcel.writeParcelable(this.launchIntent, i2);
        parcel.writeParcelable(this.playerIntent, i2);
        parcel.writeLong(this.initialProgress);
        parcel.writeParcelable(this.mediaItem, i2);
        parcel.writeInt(this.zoneId);
        parcel.writeLong(this.appId);
    }

    public PlaybackInfo(Parcel parcel) {
        this.pkgName = parcel.readString();
        this.iconUri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.appName = parcel.readString();
        this.launchIntent = (PendingIntent) parcel.readParcelable(PendingIntent.class.getClassLoader());
        this.playerIntent = (PendingIntent) parcel.readParcelable(PendingIntent.class.getClassLoader());
        this.initialProgress = parcel.readLong();
        this.mediaItem = (MediaItem) parcel.readParcelable(MediaItem.class.getClassLoader());
        this.zoneId = parcel.readInt();
        this.appId = parcel.readLong();
    }
}
