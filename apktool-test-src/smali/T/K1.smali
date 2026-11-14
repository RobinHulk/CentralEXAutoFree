.class public abstract LT/K1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final e:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final f:Ljava/util/Set;

.field public static final g:Ljava/util/Set;

.field public static volatile h:Ljava/net/Proxy;

.field public static volatile i:Ljava/io/File;

.field public static final j:[J

.field public static final k:LI0/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, LT/K1;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, LT/K1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, LT/K1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, LT/K1;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, LT/K1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LT/K1;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LT/K1;->g:Ljava/util/Set;

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, LT/K1;->j:[J

    new-instance v0, LI0/l;

    const-string v1, "\\[(\\d{1,2}):(\\d{1,2})(?:[.:](\\d{1,3}))?]\\s?(.*)"

    invoke-direct {v0, v1}, LI0/l;-><init>(Ljava/lang/String;)V

    sput-object v0, LT/K1;->k:LI0/l;

    return-void

    nop

    :array_0
    .array-data 8
        0x1388
        0x3a98
        0xafc8
    .end array-data
.end method

.method public static a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "artist_name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-static {p3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&track_name="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-lez p2, :cond_0

    const-string p2, "&duration="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "https://lrclib.net/api/get?"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LT/K1;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "syncedLyrics"

    const-string p3, ""

    invoke-virtual {p2, p0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {p0}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    move-object p1, p0

    :cond_2
    return-object p1
.end method

.method public static b(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    sget-object v0, LT/K1;->i:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    sget-object v4, LO0/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v5, "getBytes(...)"

    invoke-static {v4, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    const-string v4, "digest(...)"

    invoke-static {v3, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, LT/n;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, LT/n;-><init>(I)V

    invoke-static {v3, v4}, Lw0/h;->X([BLH0/l;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v3, ".lrc"

    invoke-static {v2, p0, v3}, LM/d0;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5

    const-string v0, "title"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artist"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LT/K1;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, LT/K1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, LT/K1;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    invoke-static {v0}, LA/b;->b0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LT/K1;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1, p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, LT/K1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    :catchall_0
    :cond_3
    return-object v1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;JLH0/a;)V
    .locals 9

    const-string v0, "title"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artist"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, LT/K1;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v0, LT/K1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, LT/K1;->g:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    sget-object v1, LT/K1;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    move v8, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    const/4 v2, 0x4

    if-lt v8, v2, :cond_3

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, LT/K1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0x0

    :goto_2
    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, LT/K1;->f:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    add-int/lit8 v0, v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LT/J1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, LT/J1;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;LH0/a;I)V

    sget-object p0, LT/K1;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public static e(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "\\s*[\\(\\[][^)\\]]*\\b(remaster|remastered|live|ao vivo|deluxe|bonus|version|vers[\u00e3a]o|edit|mix|mono|stereo)\\b[^)\\]]*[\\)\\]]"

    const/16 v3, 0x42

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v4, "compile(...)"

    invoke-static {v2, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "input"

    invoke-static {v0, v5}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "replaceAll(...)"

    invoke-static {v2, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "\\s*-\\s*(remaster|remastered|live|ao vivo|single version|radio edit).*$"

    invoke-static {v8, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-static {v8, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "\\s*(feat\\.?|ft\\.?|part\\.?)\\s+.*$"

    invoke-static {v8, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-static {v3, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, ","

    const-string v7, "&"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, LO0/j;->O0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lw0/i;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p0 .. p3}, LT/K1;->a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    return-object v5

    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v5, p0, v7

    if-lez v5, :cond_1

    invoke-static {v7, v8, v0, v1}, LT/K1;->a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    return-object v5

    :cond_1
    invoke-static {v2, v0}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3, v1}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {v7, v8, v2, v3}, LT/K1;->a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-static {v2}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v5, "optString(...)"

    const-string v9, "toLowerCase(...)"

    const-string v10, "UTF-8"

    const/16 v11, 0x20

    if-eqz v0, :cond_5

    :catchall_0
    :cond_4
    :goto_0
    const/4 v8, 0x0

    goto/16 :goto_6

    :cond_5
    invoke-static {v3}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v2

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "https://lrclib.net/api/search?q="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LT/K1;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    :try_start_0
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v15

    const/16 v12, 0x14

    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v12, :cond_4

    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_8

    goto/16 :goto_5

    :cond_8
    const-string v8, "syncedLyrics"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v8}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_d

    const-string v11, "trackName"

    invoke-virtual {v7, v11, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p3, v8

    const-string v8, "artistName"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_a

    const/4 v7, 0x0

    invoke-static {v11, v14, v7}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v16

    if-nez v16, :cond_9

    invoke-static {v14, v11, v7}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_9
    move v7, v8

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    :goto_3
    invoke-static {v0}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    invoke-static {v1}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    const/4 v11, 0x0

    invoke-static {v1, v0, v11}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v16

    if-nez v16, :cond_c

    invoke-static {v0, v1, v11}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_4

    :cond_b
    const/4 v8, 0x0

    :cond_c
    :goto_4
    if-eqz v7, :cond_d

    if-eqz v8, :cond_d

    move-object/from16 v8, p3

    goto :goto_6

    :cond_d
    :goto_5
    add-int/lit8 v15, v15, 0x1

    const-wide/16 v7, 0x0

    const/16 v11, 0x20

    goto :goto_2

    :goto_6
    if-eqz v8, :cond_e

    return-object v8

    :cond_e
    invoke-static {v2}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    :goto_7
    const/4 v12, 0x0

    goto/16 :goto_11

    :cond_10
    invoke-static {v3}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, v2

    goto :goto_8

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "https://music.163.com/api/search/get?type=1&limit=5&s="

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LT/K1;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_7

    :cond_12
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "songs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_9

    :catchall_1
    :cond_13
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_14

    goto :goto_7

    :cond_14
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v7, 0x5

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v3, :cond_f

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_16

    :cond_15
    :goto_b
    const-wide/16 v11, 0x0

    const/4 v15, 0x0

    goto/16 :goto_10

    :cond_16
    const-string v10, "name"

    invoke-virtual {v8, v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_15

    const/4 v12, 0x0

    invoke-static {v11, v2, v12}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v13

    if-nez v13, :cond_17

    invoke-static {v2, v11, v12}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v11

    if-nez v11, :cond_17

    goto :goto_b

    :cond_17
    invoke-static {v1}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1d

    const-string v11, "artists"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-eqz v11, :cond_18

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    goto :goto_c

    :cond_18
    const/4 v12, 0x0

    :goto_c
    const/4 v13, 0x0

    :goto_d
    if-ge v13, v12, :cond_1c

    invoke-static {v11}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    if-eqz v14, :cond_19

    invoke-virtual {v14, v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_19

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_e

    :cond_19
    move-object v14, v6

    :goto_e
    invoke-static {v14}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1a

    const/4 v15, 0x0

    invoke-static {v14, v1, v15}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v16

    if-nez v16, :cond_1e

    invoke-static {v1, v14, v15}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v14

    if-eqz v14, :cond_1b

    goto :goto_f

    :cond_1a
    const/4 v15, 0x0

    :cond_1b
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_1c
    const/4 v15, 0x0

    const-wide/16 v11, 0x0

    goto :goto_10

    :cond_1d
    const/4 v15, 0x0

    :cond_1e
    :goto_f
    const-string v10, "id"

    const-wide/16 v11, 0x0

    invoke-virtual {v8, v10, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    cmp-long v8, v13, v11

    if-lez v8, :cond_22

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "https://music.163.com/api/song/lyric?lv=1&kv=1&tv=-1&id="

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LT/K1;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1f

    goto :goto_10

    :cond_1f
    :try_start_2
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "lrc"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_20

    const-string v10, "lyric"

    invoke-virtual {v8, v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v8, :cond_21

    :catchall_2
    :cond_20
    move-object v8, v6

    :cond_21
    invoke-static {v8}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_22

    const-string v10, "\\[\\d{1,2}:\\d{2}"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-static {v10, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_22

    move-object v12, v8

    goto :goto_11

    :cond_22
    :goto_10
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a

    :goto_11
    return-object v12
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toLowerCase(...)"

    invoke-static {p0, p1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static g(Ljava/util/List;J)Ljava/lang/String;
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv0/a;

    iget-object v2, v1, Lv0/a;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-object v1, v1, Lv0/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    cmp-long v2, v2, p1

    if-gtz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static h(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "\n"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, LO0/j;->O0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, LT/K1;->k:LI0/l;

    invoke-static {v3, v1}, LI0/l;->a(LI0/l;Ljava/lang/String;)LO0/e;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, LO0/e;->a()Ljava/util/List;

    move-result-object v3

    check-cast v3, LO0/d;

    invoke-virtual {v3, v2}, LO0/d;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1}, LO0/e;->a()Ljava/util/List;

    move-result-object v5

    check-cast v5, LO0/d;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, LO0/d;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1}, LO0/e;->a()Ljava/util/List;

    move-result-object v7

    check-cast v7, LO0/d;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, LO0/d;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    const-wide/16 v7, 0x0

    goto :goto_3

    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v8, v9, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_2

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x3

    if-gt v2, v7, :cond_3

    :goto_1
    const/16 v10, 0x30

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eq v2, v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v9

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :goto_3
    const v2, 0xea60

    int-to-long v9, v2

    mul-long/2addr v3, v9

    const/16 v2, 0x3e8

    int-to-long v9, v2

    mul-long/2addr v5, v9

    add-long/2addr v5, v3

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1}, LO0/e;->a()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x4

    check-cast v1, LO0/d;

    invoke-virtual {v1, v3}, LO0/d;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lv0/a;

    invoke-direct {v3, v2, v1}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, v2, :cond_5

    new-instance p0, LT/E;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, LT/E;-><init>(I)V

    invoke-static {v0, p0}, Lw0/n;->W(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    return-object v0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "lrclib respondeu HTTP "

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v2, LT/K1;->h:Ljava/net/Proxy;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    :cond_1
    const-string v1, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v2, v1}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1388

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v1, "User-Agent"

    const-string v3, "TelaPretaCentral-MediaBridge (com.ex.auto)"

    invoke-virtual {v2, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v3, "music.163.com"

    invoke-static {p0, v3, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Referer"

    const-string v1, "https://music.163.com/"

    invoke-virtual {v2, p0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x194

    if-ne p0, v1, :cond_3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    const/16 v1, 0xc8

    if-ne p0, v1, :cond_4

    :try_start_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v0, "getInputStream(...)"

    invoke-static {p0, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LO0/a;->a:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p0, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {p0, v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-static {p0}, LA/b;->a0(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_4
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, LT/K1;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, LA/b;->k0(Ljava/io/File;Ljava/lang/String;)V

    sget-object p0, LT/K1;->i:Ljava/io/File;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    array-length p1, p0

    const/16 v0, 0x1388

    if-le p1, v0, :cond_3

    new-instance p1, LT/E;

    const/4 v1, 0x5

    invoke-direct {p1, v1}, LT/E;-><init>(I)V

    invoke-static {p0, p1}, Lw0/h;->Z([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    array-length p0, p0

    sub-int/2addr p0, v0

    invoke-static {p1, p0}, Lw0/i;->g0(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_3
    return-void
.end method
