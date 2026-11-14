.class public final Lp0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Le/a;

.field public b:Le/a;

.field public c:Le/a;

.field public d:Le/a;

.field public e:Lp0/c;

.field public f:Lp0/c;

.field public g:Lp0/c;

.field public h:Lp0/c;

.field public i:Lp0/e;

.field public j:Lp0/e;

.field public k:Lp0/e;

.field public l:Lp0/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lp0/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp0/j;->a:Le/a;

    new-instance v0, Lp0/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp0/j;->b:Le/a;

    new-instance v0, Lp0/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp0/j;->c:Le/a;

    new-instance v0, Lp0/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp0/j;->d:Le/a;

    new-instance v0, Lp0/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp0/a;-><init>(F)V

    iput-object v0, p0, Lp0/j;->e:Lp0/c;

    new-instance v0, Lp0/a;

    invoke-direct {v0, v1}, Lp0/a;-><init>(F)V

    iput-object v0, p0, Lp0/j;->f:Lp0/c;

    new-instance v0, Lp0/a;

    invoke-direct {v0, v1}, Lp0/a;-><init>(F)V

    iput-object v0, p0, Lp0/j;->g:Lp0/c;

    new-instance v0, Lp0/a;

    invoke-direct {v0, v1}, Lp0/a;-><init>(F)V

    iput-object v0, p0, Lp0/j;->h:Lp0/c;

    new-instance v0, Lp0/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp0/j;->i:Lp0/e;

    new-instance v0, Lp0/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp0/j;->j:Lp0/e;

    new-instance v0, Lp0/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp0/j;->k:Lp0/e;

    new-instance v0, Lp0/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp0/j;->l:Lp0/e;

    return-void
.end method

.method public static b(Le/a;)V
    .locals 1

    instance-of v0, p0, Lp0/i;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of p0, p0, Lp0/d;

    return-void
.end method


# virtual methods
.method public final a()Lp0/k;
    .locals 2

    new-instance v0, Lp0/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lp0/j;->a:Le/a;

    iput-object v1, v0, Lp0/k;->a:Le/a;

    iget-object v1, p0, Lp0/j;->b:Le/a;

    iput-object v1, v0, Lp0/k;->b:Le/a;

    iget-object v1, p0, Lp0/j;->c:Le/a;

    iput-object v1, v0, Lp0/k;->c:Le/a;

    iget-object v1, p0, Lp0/j;->d:Le/a;

    iput-object v1, v0, Lp0/k;->d:Le/a;

    iget-object v1, p0, Lp0/j;->e:Lp0/c;

    iput-object v1, v0, Lp0/k;->e:Lp0/c;

    iget-object v1, p0, Lp0/j;->f:Lp0/c;

    iput-object v1, v0, Lp0/k;->f:Lp0/c;

    iget-object v1, p0, Lp0/j;->g:Lp0/c;

    iput-object v1, v0, Lp0/k;->g:Lp0/c;

    iget-object v1, p0, Lp0/j;->h:Lp0/c;

    iput-object v1, v0, Lp0/k;->h:Lp0/c;

    iget-object v1, p0, Lp0/j;->i:Lp0/e;

    iput-object v1, v0, Lp0/k;->i:Lp0/e;

    iget-object v1, p0, Lp0/j;->j:Lp0/e;

    iput-object v1, v0, Lp0/k;->j:Lp0/e;

    iget-object v1, p0, Lp0/j;->k:Lp0/e;

    iput-object v1, v0, Lp0/k;->k:Lp0/e;

    iget-object v1, p0, Lp0/j;->l:Lp0/e;

    iput-object v1, v0, Lp0/k;->l:Lp0/e;

    return-object v0
.end method
