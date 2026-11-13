package com.ex.auto;

import A.b;
import I0.f;
import M.d0;
import O0.s;
import T.DialogInterfaceOnClickListenerC0061g;
import T.H;
import T.I1;
import android.app.AlertDialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import p007e.AbstractActivityC0210j;

/* JADX INFO: loaded from: classes.dex */
public final class InstallerActivity extends AbstractActivityC0210j {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ int f2322u = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public TextView f2323t;

    public static String s(File file) {
        StringBuilder sb = new StringBuilder("pm install -r -g -d -t ");
        String absolutePath = file.getAbsolutePath();
        f.d(absolutePath, "getAbsolutePath(...)");
        String strB = new I1(5555).b(60000, d0.g(sb, "'" + s.v0(absolutePath, "'", "'\\''") + '\'', " 2>&1"));
        f.d(strB, "runShell(...)");
        return strB;
    }

    @Override // p007e.AbstractActivityC0210j, androidx.activity.g, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setLayout((int) (((double) getResources().getDisplayMetrics().widthPixels) * 0.72d), -2);
        float f = getResources().getDisplayMetrics().density;
        int i2 = (int) (20 * f);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(i2, i2, i2, i2);
        TextView textView = new TextView(this);
        textView.setText(getString(R.string.app_name) + " — " + getString(R.string.k_installer_title));
        textView.setTextSize(15.0f);
        int i3 = (int) (((float) 12) * f);
        textView.setPadding(0, 0, 0, i3);
        ProgressBar progressBar = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
        progressBar.setIndeterminate(true);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.bottomMargin = i3;
        progressBar.setLayoutParams(layoutParams);
        TextView textView2 = new TextView(this);
        textView2.setText(getString(R.string.k_installer_preparing));
        textView2.setTextSize(13.0f);
        this.f2323t = textView2;
        linearLayout.addView(textView);
        linearLayout.addView(progressBar);
        View view = this.f2323t;
        if (view == null) {
            f.h("tvStatus");
            throw null;
        }
        linearLayout.addView(view);
        setContentView(linearLayout);
        Uri data = getIntent().getData();
        if (data == null) {
            finish();
        } else {
            new Thread(new H(this, 9, data)).start();
        }
    }

    @Override // p007e.AbstractActivityC0210j, androidx.activity.g, android.app.Activity
    public final void onNewIntent(Intent intent) {
        f.e(intent, "intent");
        super.onNewIntent(intent);
        setIntent(intent);
        Uri data = intent.getData();
        if (data != null) {
            new Thread(new H(this, 9, data)).start();
        }
    }

    public final File t(Uri uri) {
        if (f.a(uri.getScheme(), "file")) {
            String path = uri.getPath();
            f.b(path);
            return new File(path);
        }
        File file = new File(getCacheDir(), "pending_install.apk");
        InputStream inputStreamOpenInputStream = getContentResolver().openInputStream(uri);
        f.b(inputStreamOpenInputStream);
        try {
            b.t(inputStreamOpenInputStream, new FileOutputStream(file));
            b.m(inputStreamOpenInputStream, null);
            return file;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                b.m(inputStreamOpenInputStream, th);
                throw th2;
            }
        }
    }

    public final void u(String str, boolean z2) {
        String string = z2 ? getString(R.string.k_installer_success) : getString(R.string.k_installer_failure, str);
        f.b(string);
        new AlertDialog.Builder(this).setTitle(getString(z2 ? R.string.k_installer_done_title : R.string.k_installer_error_title)).setMessage(string).setPositiveButton(getString(R.string.common_ok), new DialogInterfaceOnClickListenerC0061g(this, 1)).setCancelable(false).show();
    }
}
