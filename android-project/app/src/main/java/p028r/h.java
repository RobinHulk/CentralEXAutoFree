package p028r;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import p007e.AbstractC0201a;
import p026q.f;
import p026q.g;

/* JADX INFO: loaded from: classes.dex */
public final class h extends AbstractC0201a {
    public static Font T(FontFamily fontFamily, int i2) {
        FontStyle fontStyle = new FontStyle((i2 & 1) != 0 ? 700 : 400, (i2 & 2) != 0 ? 1 : 0);
        Font font = fontFamily.getFont(0);
        int iU = U(fontStyle, font.getStyle());
        for (int i3 = 1; i3 < fontFamily.getSize(); i3++) {
            Font font2 = fontFamily.getFont(i3);
            int iU2 = U(fontStyle, font2.getStyle());
            if (iU2 < iU) {
                font = font2;
                iU = iU2;
            }
        }
        return font;
    }

    public static int U(FontStyle fontStyle, FontStyle fontStyle2) {
        return (Math.abs(fontStyle.getWeight() - fontStyle2.getWeight()) / 100) + (fontStyle.getSlant() == fontStyle2.getSlant() ? 0 : 2);
    }

    @Override // p007e.AbstractC0201a
    public final Typeface r(Context context, f fVar, Resources resources, int i2) {
        try {
            FontFamily.Builder builder = null;
            for (g gVar : fVar.f4014a) {
                try {
                    Font fontBuild = new Font.Builder(resources, gVar.f).setWeight(gVar.b).setSlant(gVar.f4016c ? 1 : 0).setTtcIndex(gVar.f4018e).setFontVariationSettings(gVar.f4017d).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(fontBuild);
                    } else {
                        builder.addFont(fontBuild);
                    }
                } catch (IOException unused) {
                }
            }
            if (builder == null) {
                return null;
            }
            FontFamily fontFamilyBuild = builder.build();
            return new Typeface.CustomFallbackBuilder(fontFamilyBuild).setStyle(T(fontFamilyBuild, i2).getStyle()).build();
        } catch (Exception unused2) {
            return null;
        }
    }

    @Override // p007e.AbstractC0201a
    public final Typeface s(Context context, v.h[] hVarArr, int i2) {
        ContentResolver contentResolver = context.getContentResolver();
        try {
            FontFamily.Builder builder = null;
            for (v.h hVar : hVarArr) {
                try {
                    ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(hVar.f4150a, "r", null);
                    if (parcelFileDescriptorOpenFileDescriptor == null) {
                        if (parcelFileDescriptorOpenFileDescriptor != null) {
                        }
                    } else {
                        try {
                            Font fontBuild = new Font.Builder(parcelFileDescriptorOpenFileDescriptor).setWeight(hVar.f4151c).setSlant(hVar.f4152d ? 1 : 0).setTtcIndex(hVar.b).build();
                            if (builder == null) {
                                builder = new FontFamily.Builder(fontBuild);
                            } else {
                                builder.addFont(fontBuild);
                            }
                        } catch (Throwable th) {
                            try {
                                parcelFileDescriptorOpenFileDescriptor.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                    parcelFileDescriptorOpenFileDescriptor.close();
                } catch (IOException unused) {
                }
            }
            if (builder == null) {
                return null;
            }
            FontFamily fontFamilyBuild = builder.build();
            return new Typeface.CustomFallbackBuilder(fontFamilyBuild).setStyle(T(fontFamilyBuild, i2).getStyle()).build();
        } catch (Exception unused2) {
            return null;
        }
    }

    @Override // p007e.AbstractC0201a
    public final Typeface t(Context context, Resources resources, int i2, String str, int i3) {
        try {
            Font fontBuild = new Font.Builder(resources, i2).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(fontBuild).build()).setStyle(fontBuild.getStyle()).build();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // p007e.AbstractC0201a
    public final v.h u(v.h[] hVarArr, int i2) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
