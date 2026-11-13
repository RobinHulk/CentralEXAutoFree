package T;

import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.File;
import java.net.NetworkInterface;
import java.util.Comparator;
import java.util.Locale;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class E implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f548a;

    public /* synthetic */ E(int i2) {
        this.f548a = i2;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f548a) {
            case 0:
                String str = (String) ((v0.a) obj).b;
                Locale locale = Locale.ROOT;
                String lowerCase = str.toLowerCase(locale);
                I0.f.d(lowerCase, "toLowerCase(...)");
                String lowerCase2 = ((String) ((v0.a) obj2).b).toLowerCase(locale);
                I0.f.d(lowerCase2, "toLowerCase(...)");
                return AbstractC0201a.m(lowerCase, lowerCase2);
            case 1:
                String str2 = (String) ((v0.d) obj).b;
                Locale locale2 = Locale.ROOT;
                String lowerCase3 = str2.toLowerCase(locale2);
                I0.f.d(lowerCase3, "toLowerCase(...)");
                String lowerCase4 = ((String) ((v0.d) obj2).b).toLowerCase(locale2);
                I0.f.d(lowerCase4, "toLowerCase(...)");
                return AbstractC0201a.m(lowerCase3, lowerCase4);
            case 2:
                String str3 = (String) ((v0.d) obj).b;
                Locale locale3 = Locale.ROOT;
                String lowerCase5 = str3.toLowerCase(locale3);
                I0.f.d(lowerCase5, "toLowerCase(...)");
                String lowerCase6 = ((String) ((v0.d) obj2).b).toLowerCase(locale3);
                I0.f.d(lowerCase6, "toLowerCase(...)");
                return AbstractC0201a.m(lowerCase5, lowerCase6);
            case 3:
                String str4 = (String) ((v0.d) obj).b;
                Locale locale4 = Locale.ROOT;
                String lowerCase7 = str4.toLowerCase(locale4);
                I0.f.d(lowerCase7, "toLowerCase(...)");
                String lowerCase8 = ((String) ((v0.d) obj2).b).toLowerCase(locale4);
                I0.f.d(lowerCase8, "toLowerCase(...)");
                return AbstractC0201a.m(lowerCase7, lowerCase8);
            case 4:
                return AbstractC0201a.m((Long) ((v0.a) obj).f4155a, (Long) ((v0.a) obj2).f4155a);
            case 5:
                return AbstractC0201a.m(Long.valueOf(((File) obj).lastModified()), Long.valueOf(((File) obj2).lastModified()));
            case 6:
                return AbstractC0201a.m(Boolean.valueOf(I0.f.a(((NetworkInterface) obj2).getName(), "ap0")), Boolean.valueOf(I0.f.a(((NetworkInterface) obj).getName(), "ap0")));
            case PlaybackState.STATE_ERROR /* 7 */:
                String str5 = (String) ((v0.a) obj).b;
                Locale locale5 = Locale.ROOT;
                String lowerCase9 = str5.toLowerCase(locale5);
                I0.f.d(lowerCase9, "toLowerCase(...)");
                String lowerCase10 = ((String) ((v0.a) obj2).b).toLowerCase(locale5);
                I0.f.d(lowerCase10, "toLowerCase(...)");
                return AbstractC0201a.m(lowerCase9, lowerCase10);
            case Response.NO /* 8 */:
                String str6 = (String) ((v0.a) obj).b;
                Locale locale6 = Locale.ROOT;
                String lowerCase11 = str6.toLowerCase(locale6);
                I0.f.d(lowerCase11, "toLowerCase(...)");
                String lowerCase12 = ((String) ((v0.a) obj2).b).toLowerCase(locale6);
                I0.f.d(lowerCase12, "toLowerCase(...)");
                return AbstractC0201a.m(lowerCase11, lowerCase12);
            case 9:
                return AbstractC0201a.m(Long.valueOf(((File) obj).lastModified()), Long.valueOf(((File) obj2).lastModified()));
            case 10:
                return AbstractC0201a.m(Long.valueOf(((File) obj2).lastModified()), Long.valueOf(((File) obj).lastModified()));
            case 11:
                String str7 = ((C0096l4) obj).b;
                Locale locale7 = Locale.ROOT;
                String lowerCase13 = str7.toLowerCase(locale7);
                I0.f.d(lowerCase13, "toLowerCase(...)");
                String lowerCase14 = ((C0096l4) obj2).b.toLowerCase(locale7);
                I0.f.d(lowerCase14, "toLowerCase(...)");
                return AbstractC0201a.m(lowerCase13, lowerCase14);
            case Response.BAD /* 12 */:
                String str8 = (String) ((v0.d) obj).b;
                Locale locale8 = Locale.ROOT;
                String lowerCase15 = str8.toLowerCase(locale8);
                I0.f.d(lowerCase15, "toLowerCase(...)");
                String lowerCase16 = ((String) ((v0.d) obj2).b).toLowerCase(locale8);
                I0.f.d(lowerCase16, "toLowerCase(...)");
                return AbstractC0201a.m(lowerCase15, lowerCase16);
            case 13:
                String str9 = ((C0102m4) obj).b;
                Locale locale9 = Locale.ROOT;
                String lowerCase17 = str9.toLowerCase(locale9);
                I0.f.d(lowerCase17, "toLowerCase(...)");
                String lowerCase18 = ((C0102m4) obj2).b.toLowerCase(locale9);
                I0.f.d(lowerCase18, "toLowerCase(...)");
                return AbstractC0201a.m(lowerCase17, lowerCase18);
            case 14:
                Object obj3 = ((v0.a) obj).f4155a;
                I0.f.d(obj3, "<get-first>(...)");
                Locale locale10 = Locale.ROOT;
                String lowerCase19 = ((String) obj3).toLowerCase(locale10);
                I0.f.d(lowerCase19, "toLowerCase(...)");
                Object obj4 = ((v0.a) obj2).f4155a;
                I0.f.d(obj4, "<get-first>(...)");
                String lowerCase20 = ((String) obj4).toLowerCase(locale10);
                I0.f.d(lowerCase20, "toLowerCase(...)");
                return AbstractC0201a.m(lowerCase19, lowerCase20);
            default:
                return AbstractC0201a.m(((D4) obj).f547a, ((D4) obj2).f547a);
        }
    }
}
