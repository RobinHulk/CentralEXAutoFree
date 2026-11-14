package T;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class G implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f585a;
    public final /* synthetic */ SharedPreferences b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f586c;

    public /* synthetic */ G(SharedPreferences sharedPreferences, Context context, int i2) {
        this.f585a = i2;
        this.b = sharedPreferences;
        this.f586c = context;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        boolean z2;
        boolean z3;
        JSONObject jSONObjectOptJSONObject;
        final int iOptInt;
        boolean z4 = false;
        switch (this.f585a) {
            case 0:
                SharedPreferences sharedPreferences = this.b;
                Context context = this.f586c;
                try {
                    try {
                        Y0 y0 = Y0.f854a;
                        String string = O0.j.X0(Y0.a()).toString();
                        if (!O0.j.E0(string)) {
                            if (sharedPreferences.getBoolean("device_banned", false)) {
                                try {
                                    if (Y0.q(context, sharedPreferences, string)) {
                                        sharedPreferences.edit().putBoolean("device_ban_avisado", true).apply();
                                        L3.f671a.b("BanChecker", "aviso de ban (pendente) entregue por e-mail");
                                    } else {
                                        L3.f671a.b("BanChecker", "aviso de ban pendente NÃO saiu (sem rede?) — tenta de novo");
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    z3 = false;
                                    J.f629a = z3;
                                    throw th;
                                }
                            } else {
                                String strC = J.c();
                                if (strC != null) {
                                    JSONArray jSONArrayOptJSONArray = new JSONObject(strC).optJSONArray("entries");
                                    if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() == 0) {
                                        z2 = z4;
                                    } else {
                                        String strB = J.b(string);
                                        int length = jSONArrayOptJSONArray.length();
                                        int i2 = 0;
                                        while (i2 < length) {
                                            String strOptString = jSONArrayOptJSONArray.getJSONObject(i2).optString("hash", "");
                                            I0.f.b(strOptString);
                                            if (O0.j.E0(strOptString) || !strOptString.equalsIgnoreCase(strB)) {
                                                i2++;
                                                z4 = false;
                                            } else {
                                                sharedPreferences.edit().putBoolean("device_banned", true).apply();
                                                L3 l3 = L3.f671a;
                                                l3.b("BanChecker", "dispositivo BANIDO — XDSN confere com a banlist");
                                                Y0 y1 = Y0.f854a;
                                                boolean zQ = Y0.q(context, sharedPreferences, string);
                                                sharedPreferences.edit().putBoolean("device_ban_avisado", zQ).apply();
                                                l3.b("BanChecker", zQ ? "aviso de ban entregue por e-mail" : "aviso de ban NÃO saiu (sem rede?) — tenta na próxima checagem");
                                                z2 = false;
                                            }
                                        }
                                        z2 = z4;
                                    }
                                    J.f629a = z2;
                                    return;
                                }
                            }
                            break;
                        }
                        J.f629a = false;
                        return;
                    } catch (Exception e2) {
                        Log.d("BanChecker", "check: " + e2.getMessage());
                        z2 = false;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    z3 = false;
                }
                break;
            default:
                final SharedPreferences sharedPreferences2 = this.b;
                final Context context2 = this.f586c;
                try {
                    try {
                        String strC2 = E3.c();
                        if (strC2 != null && (jSONObjectOptJSONObject = new JSONObject(strC2).optJSONObject("messages")) != null) {
                            Y0 y2 = Y0.f854a;
                            String string2 = O0.j.X0(Y0.a()).toString();
                            String upperCase = O0.j.X0(Y0.g(sharedPreferences2)).toString().toUpperCase(Locale.ROOT);
                            I0.f.d(upperCase, "toUpperCase(...)");
                            ArrayList arrayList = new ArrayList();
                            if (!O0.j.E0(string2)) {
                                arrayList.add(string2);
                            }
                            if (!O0.j.E0(upperCase)) {
                                arrayList.add(upperCase);
                            }
                            arrayList.add("ALL");
                            Iterator it = arrayList.iterator();
                            I0.f.d(it, "iterator(...)");
                            while (it.hasNext()) {
                                Object next = it.next();
                                I0.f.d(next, "next(...)");
                                final String str = (String) next;
                                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(str);
                                if (jSONObjectOptJSONObject2 != null && (iOptInt = jSONObjectOptJSONObject2.optInt("id", 0)) > 0) {
                                    if (iOptInt > sharedPreferences2.getInt("msg_seen_" + str, 0)) {
                                        String strOptString2 = jSONObjectOptJSONObject2.optString("enc", "");
                                        I0.f.b(strOptString2);
                                        final String strC3 = !O0.j.E0(strOptString2) ? AbstractC0126q4.c(strOptString2) : jSONObjectOptJSONObject2.optString("body", "");
                                        I0.f.b(strC3);
                                        if (!O0.j.E0(strC3)) {
                                            final String strOptString3 = jSONObjectOptJSONObject2.optString("title", context2.getString(R.string.k_notice_default_title));
                                            E3.f553c.post(new Runnable() { // from class: T.C3
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    final Context context3 = context2;
                                                    final SharedPreferences sharedPreferences3 = sharedPreferences2;
                                                    final String str2 = str;
                                                    final int i3 = iOptInt;
                                                    String str3 = strOptString3;
                                                    String str4 = strC3;
                                                    boolean z5 = E3.f552a;
                                                    I0.f.b(context3);
                                                    I0.f.b(str3);
                                                    if (E3.b) {
                                                        return;
                                                    }
                                                    E3.b = true;
                                                    Object systemService = context3.getSystemService("window");
                                                    I0.f.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
                                                    final WindowManager windowManager = (WindowManager) systemService;
                                                    final LinearLayout linearLayout = new LinearLayout(context3);
                                                    linearLayout.setGravity(17);
                                                    linearLayout.setBackgroundColor(Color.parseColor("#CC000000"));
                                                    linearLayout.setPadding(E3.b(context3, 24), E3.b(context3, 24), E3.b(context3, 24), E3.b(context3, 24));
                                                    LinearLayout linearLayout2 = new LinearLayout(context3);
                                                    linearLayout2.setOrientation(1);
                                                    linearLayout2.setBackground(E3.d(context3, Color.parseColor("#F20B131E"), 18, Integer.valueOf(Color.parseColor("#0F1722")), 1));
                                                    linearLayout2.setPadding(E3.b(context3, 22), E3.b(context3, 20), E3.b(context3, 22), E3.b(context3, 18));
                                                    TextView textView = new TextView(context3);
                                                    textView.setText(str3);
                                                    textView.setTextSize(18.0f);
                                                    textView.setTextColor(Color.parseColor("#1C68EF"));
                                                    textView.setTypeface(textView.getTypeface(), 1);
                                                    linearLayout2.addView(textView);
                                                    TextView textView2 = new TextView(context3);
                                                    textView2.setText(str4);
                                                    textView2.setTextSize(15.0f);
                                                    textView2.setTextColor(Color.parseColor("#EAF2F8"));
                                                    textView2.setLineSpacing(0.0f, 1.15f);
                                                    textView2.setPadding(0, E3.b(context3, 12), 0, E3.b(context3, 16));
                                                    linearLayout2.addView(textView2);
                                                    Button button = new Button(context3);
                                                    button.setText(context3.getString(R.string.common_ok));
                                                    button.setTextColor(Color.parseColor("#FFFFFF"));
                                                    button.setTypeface(button.getTypeface(), 1);
                                                    button.setBackground(E3.d(context3, Color.parseColor("#1C68EF"), 12, null, 0));
                                                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                                                    layoutParams.gravity = 8388613;
                                                    linearLayout2.addView(button, layoutParams);
                                                    linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(E3.b(context3, 540), -2));
                                                    ViewGroup.LayoutParams layoutParams2 = new WindowManager.LayoutParams(-1, -1, 2038, 256, -3);
                                                    button.setOnClickListener(new View.OnClickListener() { // from class: T.D3
                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view) {
                                                            WindowManager windowManager2 = windowManager;
                                                            LinearLayout linearLayout3 = linearLayout;
                                                            SharedPreferences sharedPreferences4 = sharedPreferences3;
                                                            String str5 = str2;
                                                            int i4 = i3;
                                                            Context context4 = context3;
                                                            try {
                                                                windowManager2.removeView(linearLayout3);
                                                            } catch (Exception unused) {
                                                            }
                                                            E3.b = false;
                                                            sharedPreferences4.edit().putInt("msg_seen_".concat(str5), i4).apply();
                                                            Y0 y3 = Y0.f854a;
                                                            I0.f.e(context4, "context");
                                                            new Thread(new W0(sharedPreferences4, str5, i4)).start();
                                                        }
                                                    });
                                                    try {
                                                        windowManager.addView(linearLayout, layoutParams2);
                                                    } catch (Exception e3) {
                                                        M.d0.n(e3, new StringBuilder("addView: "), "MsgMgr");
                                                        E3.b = false;
                                                    }
                                                }
                                            });
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    } catch (Exception e3) {
                        Log.d("MsgMgr", "check: " + e3.getMessage());
                        break;
                    }
                    return;
                } finally {
                    E3.f552a = false;
                }
        }
    }
}
