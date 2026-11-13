.class public abstract LO0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LI0/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LI0/l;

    const-string v1, "[\\x00-\\x20]*[+-]?(NaN|Infinity|((((\\p{Digit}+)(\\.)?((\\p{Digit}+)?)([eE][+-]?(\\p{Digit}+))?)|(\\.((\\p{Digit}+))([eE][+-]?(\\p{Digit}+))?)|(((0[xX](\\p{XDigit}+)(\\.)?)|(0[xX](\\p{XDigit}+)?(\\.)(\\p{XDigit}+)))[pP][+-]?(\\p{Digit}+)))[fFdD]?))[\\x00-\\x20]*"

    invoke-direct {v0, v1}, LI0/l;-><init>(Ljava/lang/String;)V

    sput-object v0, LO0/i;->a:LI0/l;

    return-void
.end method
