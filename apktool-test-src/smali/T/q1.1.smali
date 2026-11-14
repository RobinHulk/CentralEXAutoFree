.class public abstract LT/q1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x40

    const/4 v1, 0x0

    const-string v2, "paVmNcV6WpW+wBhwDnXrMiXVhL7RxhHvjPq93iN5tws="

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v2, "decode(...)"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, LT/q1;->a:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, LT/q1;->b:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, LT/q1;->c:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x31t
        -0x33t
        0x4bt
        0x56t
        -0x20t
        0x15t
        -0x21t
        -0x2bt
        -0x6et
        -0x7ct
        -0x32t
        -0x1ft
        0x71t
        -0x2ft
        0x69t
        0x6ft
        0x67t
        0x62t
        0x19t
        0x60t
        -0x4et
        0x4ft
        0x4ft
        -0x7t
        0x39t
        -0x59t
        -0x35t
        0x13t
        -0x5at
        -0x40t
        -0x54t
        -0x13t
        -0x78t
        -0x56t
        0xbt
        0x7at
        -0x75t
        0x6at
        0x29t
        -0x7ct
        0x14t
        -0x24t
        0x48t
        0x72t
        0x28t
        -0x2ct
        -0x39t
        -0x20t
        -0x64t
        0x7at
        -0x7ft
        -0xat
        -0x17t
        -0x33t
        0x3at
        -0x2t
        -0x18t
        -0x70t
        0x56t
        -0x52t
        0x24t
        -0x2t
        0x27t
        0x7ct
    .end array-data

    :array_1
    .array-data 1
        -0x53t
        -0x7t
        0x2at
        0x65t
        -0x29t
        0x20t
        -0x43t
        -0x13t
        -0x5at
        -0x44t
        -0x54t
        -0x27t
        0x47t
        -0x1ct
        0x51t
        0xbt
        0x54t
        0x4t
        0x2ft
        0x2t
        -0x7bt
        0x2dt
        0x7et
        -0x38t
        0x0t
        -0x3bt
        -0x58t
        0x20t
        -0x6dt
        -0x7t
        -0x67t
        -0x72t
        -0x50t
        -0x63t
        0x32t
        0x4ft
        -0x12t
        0x53t
        0x4at
        -0x4ft
        0x72t
        -0x47t
        0x7ct
        0x4bt
        0x18t
        -0x1ct
        -0x10t
        -0x2et
        -0x5bt
        0x48t
        -0x4ft
        -0x31t
        -0x28t
        -0xct
        0xct
        -0x68t
        -0x74t
        -0xbt
        0x35t
        -0x36t
        0x11t
        -0x3at
        0x44t
        0x4et
    .end array-data
.end method

.method public static a(Landroid/content/ContextWrapper;Landroid/content/SharedPreferences;Ljava/lang/String;J)LT/p1;
    .locals 25

    move-wide/from16 v0, p3

    const/4 v2, 0x1

    const-string v3, "optString(...)"

    const-string v4, "?"

    const-string v5, ""

    const-string v6, "context"

    move-object/from16 v7, p0

    invoke-static {v7, v6}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "sys.ecarx.xdsn"

    invoke-static {v6}, LT/q1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v6, LT/Y0;->a:LT/Y0;

    invoke-static {}, LT/Y0;->a()Ljava/lang/String;

    move-result-object v6

    :cond_0
    const-string v8, "sys.ecarx.vin"

    invoke-static {v8}, LT/q1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {v8}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "update_channel"

    const-string v10, "stable"

    move-object/from16 v11, p1

    invoke-interface {v11, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "experimental"

    invoke-static {v9, v12}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v10, v12

    :cond_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "xdsn"

    invoke-virtual {v9, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "vin"

    invoke-virtual {v9, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.serialno"

    invoke-static {v6}, LT/q1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "serial"

    invoke-virtual {v9, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "pkg"

    move-object/from16 v8, p2

    invoke-virtual {v9, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "versionCode"

    invoke-virtual {v9, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "channel"

    invoke-virtual {v9, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "nonce"

    invoke-virtual {v9, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v12

    const-string v13, "lang"

    invoke-virtual {v9, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "ro.build.version.incremental"

    invoke-static {v12}, LT/q1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "huBuild"

    invoke-virtual {v9, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "ro.build.display.id"

    invoke-static {v12}, LT/q1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "huDisplay"

    invoke-virtual {v9, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v12, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v14, "com.njda.aauto"

    invoke-virtual {v7, v14, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v7, :cond_2

    invoke-static {v7}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_3

    :catchall_0
    move-object v7, v5

    :cond_3
    const-string v14, "caFactory"

    invoke-virtual {v9, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "toString(...)"

    invoke-static {v7, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, LO0/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const-string v9, "getBytes(...)"

    invoke-static {v7, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ljava/net/URL;

    const-string v15, "https://exsapo-dist.appsdecarro.workers.dev/v1/manifest"

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    const-string v15, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v14, v15}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/net/HttpURLConnection;

    const-string v15, "POST"

    invoke-virtual {v14, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v15, 0x2710

    invoke-virtual {v14, v15}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v15, 0x7530

    invoke-virtual {v14, v15}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v14, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v15, "content-type"

    const-string v12, "application/json"

    invoke-virtual {v14, v15, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v12, LT/q1;->b:[B

    array-length v15, v12

    new-array v13, v15, [B

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v15, :cond_4

    aget-byte v17, v12, v2

    sget-object v18, LT/q1;->c:[B

    aget-byte v18, v18, v2

    xor-int v11, v17, v18

    int-to-byte v11, v11

    aput-byte v11, v13, v2

    const/4 v11, 0x1

    add-int/2addr v2, v11

    move-object/from16 v11, p1

    goto :goto_1

    :cond_4
    const-string v2, "HmacSHA256"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v11

    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v12, v13, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v11, v12}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v11, v7}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    const-string v11, "doFinal(...)"

    invoke-static {v2, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, LT/n;

    const/16 v12, 0x11

    invoke-direct {v11, v12}, LT/n;-><init>(I)V

    invoke-static {v2, v11}, Lw0/h;->X([BLH0/l;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "x-sig"

    invoke-virtual {v14, v11, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "CentralEXAuto/"

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " (IHU629G)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {v14, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v14}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v1, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/4 v0, 0x0

    :try_start_3
    invoke-static {v1, v0}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v0, 0xc8

    const/16 v2, 0x2000

    if-ne v1, v0, :cond_7

    invoke-virtual {v14}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "getInputStream(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, LO0/a;->a:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-static {v7}, LA/b;->a0(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v2, 0x0

    :try_start_5
    invoke-static {v7, v2}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "sig"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sget-object v4, LT/d1;->a:Ljava/math/BigInteger;

    sget-object v4, LT/q1;->a:[B

    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v4, v1, v2}, LT/d1;->g([B[B[B)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "channelPinned"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v7, "canal_efetivo"

    invoke-interface {v4, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v7, "canal_fixado_servidor"

    invoke-interface {v4, v7, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    const-string v4, "versionName"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "url"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(...)"

    invoke-static {v6, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "notes"

    invoke-virtual {v1, v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "sha256"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x40

    if-ne v3, v5, :cond_5

    move-object/from16 v22, v1

    goto :goto_2

    :cond_5
    const/16 v22, 0x0

    :goto_2
    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    new-instance v1, LT/p1;

    move-object/from16 v16, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v23, v0

    move/from16 v24, v2

    invoke-direct/range {v16 .. v24}, LT/p1;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    return-object v1

    :cond_6
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "assinatura do manifesto invalida \u2014 descartado"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-static {v7, v1}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_7
    :try_start_a
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v3, "getErrorStream(...)"

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, LO0/a;->a:Ljava/nio/charset/Charset;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-static {v3}, LA/b;->a0(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    const/4 v2, 0x0

    :try_start_c
    invoke-static {v3, v2}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "error"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception v0

    move-object v5, v0

    :try_start_e
    invoke-static {v3, v2}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catch_1
    :goto_3
    :try_start_f
    new-instance v0, LT/o1;

    invoke-static {v4}, LI0/f;->b(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exsapo-dist HTTP "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :catchall_7
    move-exception v0

    move-object v3, v0

    :try_start_11
    invoke-static {v1, v2}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :goto_4
    :try_start_12
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    :catch_2
    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "identidade do aparelho indisponivel (xdsn/vin)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    :catchall_0
    :goto_1
    return-object v0
.end method
