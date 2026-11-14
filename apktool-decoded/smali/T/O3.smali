.class public final enum LT/O3;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LT/O3;

.field public static final enum b:LT/O3;

.field public static final synthetic c:[LT/O3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LT/O3;

    const-string v1, "MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LT/O3;->a:LT/O3;

    new-instance v1, LT/O3;

    const-string v2, "DRIVE_REGEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LT/O3;->b:LT/O3;

    filled-new-array {v0, v1}, [LT/O3;

    move-result-object v0

    sput-object v0, LT/O3;->c:[LT/O3;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LT/O3;
    .locals 1

    const-class v0, LT/O3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LT/O3;

    return-object p0
.end method

.method public static values()[LT/O3;
    .locals 1

    sget-object v0, LT/O3;->c:[LT/O3;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LT/O3;

    return-object v0
.end method
