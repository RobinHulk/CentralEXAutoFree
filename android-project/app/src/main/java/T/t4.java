package T;

import android.widget.LinearLayout;
import android.widget.TextView;
import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t4 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1155a;
    public final /* synthetic */ SplitFloaterService b;

    public /* synthetic */ t4(SplitFloaterService splitFloaterService, int i2) {
        this.f1155a = i2;
        this.b = splitFloaterService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        Integer numP0;
        int i2 = 6;
        switch (this.f1155a) {
            case 0:
                SplitFloaterService splitFloaterService = SplitFloaterService.f2504v;
                this.b.h();
                break;
            case 1:
                SplitFloaterService splitFloaterService2 = SplitFloaterService.f2504v;
                this.b.h();
                break;
            case 2:
                SplitFloaterService splitFloaterService3 = SplitFloaterService.f2504v;
                this.b.h();
                break;
            case 3:
                SplitFloaterService splitFloaterService4 = SplitFloaterService.f2504v;
                this.b.h();
                break;
            case 4:
                SplitFloaterService splitFloaterService5 = SplitFloaterService.f2504v;
                this.b.h();
                break;
            case 5:
                SplitFloaterService splitFloaterService6 = SplitFloaterService.f2504v;
                SplitFloaterService splitFloaterService7 = this.b;
                splitFloaterService7.h();
                String string = splitFloaterService7.getString(R.string.k_split_done_hint);
                I0.f.d(string, "getString(...)");
                splitFloaterService7.g(string);
                break;
            case 6:
                SplitFloaterService splitFloaterService8 = this.b;
                SplitFloaterService splitFloaterService9 = SplitFloaterService.f2504v;
                if (O0.j.x0(z4.a(5000, "id"), "uid=0", false)) {
                    y4 y4VarE = z4.e();
                    if (y4VarE == null) {
                        String string2 = splitFloaterService8.getString(R.string.k_error_read_resolution, z4.f);
                        I0.f.d(string2, "getString(...)");
                        splitFloaterService8.c(string2);
                    } else {
                        splitFloaterService8.f2514l = y4VarE;
                        String strA = z4.a(8000, "dumpsys activity activities");
                        x4 x4Var = null;
                        if (O0.s.w0(strA, "ADB_FAIL")) {
                            z4.f = strA;
                        } else {
                            O0.e eVarA = I0.l.a(z4.f1245c, strA);
                            if (eVarA == null || (str = (String) ((O0.d) eVarA.a()).get(1)) == null || (numP0 = O0.r.p0(str)) == null) {
                                z4.f = "não achei mFocusedStack";
                            } else {
                                int iIntValue = numP0.intValue();
                                v0.a aVar = (v0.a) z4.h().get(numP0);
                                if (aVar == null) {
                                    z4.f = "stack focada (" + iIntValue + ") sem taskId/component";
                                } else {
                                    int iIntValue2 = ((Number) aVar.f4155a).intValue();
                                    String str2 = (String) aVar.b;
                                    x4Var = new x4(iIntValue, iIntValue2, O0.j.T0(str2, "/"), str2);
                                }
                            }
                        }
                        if (x4Var == null) {
                            String string3 = splitFloaterService8.getString(R.string.k_error_no_foreground_app, z4.f);
                            I0.f.d(string3, "getString(...)");
                            splitFloaterService8.c(string3);
                        } else if (I0.f.a(x4Var.f1209c, splitFloaterService8.getPackageName())) {
                            String string4 = splitFloaterService8.getString(R.string.k_error_open_other_app_first);
                            I0.f.d(string4, "getString(...)");
                            splitFloaterService8.c(string4);
                        } else {
                            splitFloaterService8.f2511i.post(new t4(splitFloaterService8, 8));
                            x4 x4VarI = z4.i(x4Var.f1210d, x4Var.f1209c, splitFloaterService8.d(y4VarE));
                            if (x4VarI == null) {
                                String string5 = splitFloaterService8.getString(R.string.k_error_prepare_left, z4.f);
                                I0.f.d(string5, "getString(...)");
                                splitFloaterService8.c(string5);
                            } else {
                                splitFloaterService8.f2512j = x4VarI;
                                splitFloaterService8.f2517o = false;
                                splitFloaterService8.f2511i.post(new t4(splitFloaterService8, 9));
                            }
                        }
                    }
                } else {
                    String string6 = splitFloaterService8.getString(R.string.k_error_adb_unavailable);
                    I0.f.d(string6, "getString(...)");
                    splitFloaterService8.c(string6);
                }
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                SplitFloaterService splitFloaterService10 = SplitFloaterService.f2504v;
                this.b.stopSelf();
                break;
            case Response.NO /* 8 */:
                SplitFloaterService splitFloaterService11 = SplitFloaterService.f2504v;
                SplitFloaterService splitFloaterService12 = this.b;
                String string7 = splitFloaterService12.getString(R.string.k_split_preparing);
                I0.f.d(string7, "getString(...)");
                splitFloaterService12.g(string7);
                break;
            default:
                SplitFloaterService splitFloaterService13 = SplitFloaterService.f2504v;
                SplitFloaterService splitFloaterService14 = this.b;
                splitFloaterService14.h();
                TextView textView = splitFloaterService14.f;
                if (textView != null) {
                    textView.setText(splitFloaterService14.getString(R.string.k_open_on_right));
                }
                LinearLayout linearLayout = splitFloaterService14.f2509g;
                if (linearLayout != null) {
                    linearLayout.removeAllViews();
                    List<v0.a> listG = z4.g(splitFloaterService14);
                    if (listG.isEmpty()) {
                        TextView textView2 = new TextView(splitFloaterService14);
                        textView2.setText(splitFloaterService14.getString(R.string.k_no_app_found));
                        textView2.setTextColor(-3355444);
                        textView2.setPadding(splitFloaterService14.b(6), splitFloaterService14.b(10), splitFloaterService14.b(6), splitFloaterService14.b(10));
                        linearLayout.addView(textView2);
                    } else {
                        for (v0.a aVar2 : listG) {
                            String str3 = (String) aVar2.f4155a;
                            String str4 = (String) aVar2.b;
                            TextView textView3 = new TextView(splitFloaterService14);
                            textView3.setText(str3);
                            textView3.setTextSize(14.0f);
                            textView3.setTextColor(-1);
                            textView3.setPadding(splitFloaterService14.b(12), splitFloaterService14.b(12), splitFloaterService14.b(12), splitFloaterService14.b(12));
                            textView3.setBackground(splitFloaterService14.f(-13618892, 10));
                            textView3.setOnClickListener(new ViewOnClickListenerC0143u(splitFloaterService14, i2, str4));
                            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                            layoutParams.bottomMargin = splitFloaterService14.b(4);
                            linearLayout.addView(textView3, layoutParams);
                        }
                    }
                }
                LinearLayout linearLayout2 = splitFloaterService14.f2508e;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(0);
                }
                splitFloaterService14.f2516n = true;
                break;
        }
    }
}
