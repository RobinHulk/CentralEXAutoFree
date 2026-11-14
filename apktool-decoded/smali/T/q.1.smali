.class public abstract LT/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/lang/Object;

.field public static final e:Ljava/util/List;

.field public static final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "com.wstxda.viper4android"

    invoke-static {v0}, Le/a;->G(Ljava/lang/Object;)Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sput-object v2, LT/q;->a:[I

    const/16 v2, 0x10

    const/16 v3, 0x40

    const/16 v4, 0x100

    const/16 v5, 0x400

    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v6

    sput-object v6, LT/q;->b:[I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lv0/a;

    invoke-direct {v8, v6, v7}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v9, Lv0/a;

    invoke-direct {v9, v6, v7}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v10, Lv0/a;

    invoke-direct {v10, v6, v7}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v11, Lv0/a;

    invoke-direct {v11, v6, v7}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v8, v9, v10, v11}, [Lv0/a;

    move-result-object v6

    invoke-static {v6}, Lw0/u;->V([Lv0/a;)Ljava/util/Map;

    move-result-object v6

    sput-object v6, LT/q;->c:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lv0/a;

    invoke-direct {v8, v6, v7}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v6, Lv0/a;

    invoke-direct {v6, v3, v2}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Lv0/a;

    invoke-direct {v7, v2, v3}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lv0/a;

    invoke-direct {v4, v2, v3}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v8, v6, v7, v4}, [Lv0/a;

    move-result-object v2

    invoke-static {v2}, Lw0/u;->V([Lv0/a;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, LT/q;->d:Ljava/lang/Object;

    new-instance v2, LT/p;

    const-string v3, "1111"

    const-string v4, "c474b4bb1a2244d5bd1d3119d6fb0bfc"

    const v5, 0x1c7aa

    const-string v6, "2c019dfb1d38ee6e5c3b20a876ae73fb"

    invoke-direct {v2, v3, v5, v4, v6}, LT/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, LT/p;

    const-string v4, "1114"

    const-string v5, "de34e468ad334b7062038c5de46f1c52"

    const v6, 0x1c7a1

    const-string v7, "3c1c4d714d1810373b0b0728b68ec648"

    invoke-direct {v3, v4, v6, v5, v7}, LT/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    filled-new-array {v2, v3}, [LT/p;

    move-result-object v2

    invoke-static {v2}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, LT/q;->e:Ljava/util/List;

    const/4 v2, 0x5

    const/16 v3, 0x31

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v0

    sput-object v0, LT/q;->f:[I

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;)Z
    .locals 2

    const-string v0, "connadaptor_modo"

    const-string v1, "ambos"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-static {v1}, LT/q;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "versao"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/local/tmp/fixes/ca_fix_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ".apk"

    invoke-static {v0, p0, p1}, LM/d0;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "modo"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versao"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aa"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "1114"

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "0c280b07f92a3538bcda1aae2e8b0746"

    goto :goto_0

    :cond_0
    const-string p0, "d49ab03b18a5c5e21928c59c465394d7"

    goto :goto_0

    :cond_1
    const-string v0, "carplay"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "4b37f46239a938fa164d4a0bdc65a399"

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "4b0e1de041032ee63ef0c223926d7889"

    goto :goto_0

    :cond_3
    const-string p0, "260459e68360a4ff5c3720d84a2acddd"

    :goto_0
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "carplay"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ambos"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
