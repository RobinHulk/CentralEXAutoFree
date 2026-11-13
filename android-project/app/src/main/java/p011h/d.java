package p011h;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final class d extends ContextWrapper {
    public static Configuration f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3217a;
    public Resources.Theme b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LayoutInflater f3218c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Configuration f3219d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Resources f3220e;

    public d(Context context, int i2) {
        super(context);
        this.f3217a = i2;
    }

    public final void a(Configuration configuration) {
        if (this.f3220e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f3219d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f3219d = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public final void b() {
        if (this.b == null) {
            this.b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.b.setTo(theme);
            }
        }
        this.b.applyStyle(this.f3217a, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return getResources().getAssets();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002c  */
    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        if (this.f3220e == null) {
            Configuration configuration = this.f3219d;
            if (configuration == null) {
                this.f3220e = super.getResources();
            } else {
                if (f == null) {
                    Configuration configuration2 = new Configuration();
                    configuration2.fontScale = 0.0f;
                    f = configuration2;
                }
                if (configuration.equals(f)) {
                    this.f3220e = super.getResources();
                } else {
                    this.f3220e = c.a(this, this.f3219d).getResources();
                }
            }
        }
        return this.f3220e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f3218c == null) {
            this.f3218c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f3218c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.b;
        if (theme != null) {
            return theme;
        }
        if (this.f3217a == 0) {
            this.f3217a = R.style.Theme_AppCompat_Light;
        }
        b();
        return this.b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i2) {
        if (this.f3217a != i2) {
            this.f3217a = i2;
            b();
        }
    }
}
