package p014j;

import android.R;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class Z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f3516a;
    public final TextView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f3517c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f3518d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ImageView f3519e;

    public Z0(View view) {
        this.f3516a = (TextView) view.findViewById(R.id.text1);
        this.b = (TextView) view.findViewById(R.id.text2);
        this.f3517c = (ImageView) view.findViewById(R.id.icon1);
        this.f3518d = (ImageView) view.findViewById(R.id.icon2);
        this.f3519e = (ImageView) view.findViewById(com.ex.auto.R.id.edit_query);
    }
}
