.class public final enum LT/B4;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LT/B4;

.field public static final enum b:LT/B4;

.field public static final enum c:LT/B4;

.field public static final enum d:LT/B4;

.field public static final enum e:LT/B4;

.field public static final enum f:LT/B4;

.field public static final enum g:LT/B4;

.field public static final synthetic h:[LT/B4;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, LT/B4;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LT/B4;->a:LT/B4;

    new-instance v1, LT/B4;

    const-string v2, "SEARCHING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LT/B4;->b:LT/B4;

    new-instance v2, LT/B4;

    const-string v3, "LEVEL0"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LT/B4;->c:LT/B4;

    new-instance v3, LT/B4;

    const-string v4, "LEVEL1"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LT/B4;->d:LT/B4;

    new-instance v4, LT/B4;

    const-string v5, "LEVEL2"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LT/B4;->e:LT/B4;

    new-instance v5, LT/B4;

    const-string v6, "LEVEL3"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, LT/B4;->f:LT/B4;

    new-instance v6, LT/B4;

    const-string v7, "LEVEL4"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, LT/B4;->g:LT/B4;

    filled-new-array/range {v0 .. v6}, [LT/B4;

    move-result-object v0

    sput-object v0, LT/B4;->h:[LT/B4;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LT/B4;
    .locals 1

    const-class v0, LT/B4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LT/B4;

    return-object p0
.end method

.method public static values()[LT/B4;
    .locals 1

    sget-object v0, LT/B4;->h:[LT/B4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LT/B4;

    return-object v0
.end method
