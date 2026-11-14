package com.ex.auto;

import I0.f;
import M.d0;
import O0.j;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.FileNotFoundException;

/* JADX INFO: loaded from: classes.dex */
public final class MediaCenterArtworkProvider extends ContentProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f2411a = 0;

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        f.e(uri, "u");
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        f.e(uri, "uri");
        return "image/png";
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        f.e(uri, "u");
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public final ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        f.e(uri, "uri");
        f.e(str, "mode");
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null || j.x0(lastPathSegment, "..", false) || j.x0(lastPathSegment, "/", false)) {
            throw new FileNotFoundException(d0.e("nome inválido: ", lastPathSegment));
        }
        Context context = getContext();
        f.b(context);
        File file = new File(context.getFilesDir(), "mediabridge_artwork");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, lastPathSegment);
        if (!file2.exists()) {
            throw new FileNotFoundException("capa não encontrada: ".concat(lastPathSegment));
        }
        ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(file2, 268435456);
        f.d(parcelFileDescriptorOpen, "open(...)");
        return parcelFileDescriptorOpen;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        f.e(uri, "u");
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        f.e(uri, "u");
        return 0;
    }
}
