package T;

import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.io.File;

/* JADX INFO: renamed from: T.o2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0112o2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1078a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f1079c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f1080d;

    public /* synthetic */ RunnableC0112o2(int i2, MainActivity mainActivity, String str, String str2) {
        this.f1078a = i2;
        this.b = mainActivity;
        this.f1079c = str;
        this.f1080d = str2;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0047  */
    @Override // java.lang.Runnable
    public final void run() {
        String string;
        String string2;
        String str = this.f1080d;
        String str2 = this.f1079c;
        MainActivity mainActivity = this.b;
        switch (this.f1078a) {
            case 0:
                int i2 = MainActivity.u0;
                File file = new File("/data/local/tmp/fixes/ca_fix.apk");
                if (!file.isFile() || file.length() <= 0) {
                    string = mainActivity.getString(R.string.k_connadaptor_versao_nao_baixada, str2);
                } else {
                    String strS0 = mainActivity.S0(file);
                    if (strS0 == null) {
                        string2 = mainActivity.B0().getString("connadaptor_arquivo_versao", null);
                    } else if (strS0.equalsIgnoreCase("260459e68360a4ff5c3720d84a2acddd")) {
                        string2 = "1111";
                    } else if (strS0.equalsIgnoreCase("4b0e1de041032ee63ef0c223926d7889")) {
                        string2 = "1114";
                    } else {
                        string2 = mainActivity.B0().getString("connadaptor_arquivo_versao", null);
                    }
                    string = (string2 == null || string2.equals(str)) ? mainActivity.getString(R.string.k_connadaptor_versao_selecionada, str2) : mainActivity.getString(R.string.k_connadaptor_arquivo_outra_versao, mainActivity.d0(string2), str2);
                }
                I0.f.b(string);
                mainActivity.f2387v.post(new V1(mainActivity, string, 14));
                break;
            default:
                int i3 = MainActivity.u0;
                mainActivity.v(str2, str);
                break;
        }
    }
}
