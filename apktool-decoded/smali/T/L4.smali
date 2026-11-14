.class public final LT/L4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LT/S0;

.field public b:Z

.field public c:J

.field public d:J

.field public e:Ljava/lang/Float;

.field public f:Ljava/lang/Float;

.field public g:Ljava/lang/Float;

.field public h:Ljava/lang/Float;

.field public i:Ljava/lang/Float;

.field public j:Ljava/lang/Float;

.field public k:Ljava/lang/Float;

.field public l:F

.field public m:F

.field public n:I

.field public o:F

.field public p:F

.field public q:F

.field public r:Ljava/lang/String;


# direct methods
.method public constructor <init>(LT/S0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/L4;->a:LT/S0;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 8

    iget-object v0, p0, LT/L4;->e:Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, LT/L4;->h:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, LT/L4;->e:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, LT/L4;->h:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, LT/L4;->e:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v0, v2

    goto :goto_0

    :cond_0
    iget v0, p0, LT/L4;->q:F

    :goto_0
    iget-wide v2, p0, LT/L4;->c:J

    sub-long v2, p1, v2

    const v4, 0x3e4ccccd    # 0.2f

    cmpl-float v4, v0, v4

    if-gez v4, :cond_1

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_b

    :cond_1
    iget v2, p0, LT/L4;->n:I

    if-lez v2, :cond_2

    iget v3, p0, LT/L4;->m:F

    int-to-float v2, v2

    div-float/2addr v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    iget v1, p0, LT/L4;->o:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v0

    :cond_3
    iget-object v2, p0, LT/L4;->r:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v4, "unknown"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, LT/L4;->r:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v2, "unknown"

    :goto_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "source_key"

    const-string v6, "c-"

    const-string v7, "-"

    invoke-static {v6, v2, v7}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, LT/L4;->c:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "start_ms"

    iget-wide v5, p0, LT/L4;->c:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "end_ms"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "distance_km"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string p1, "kwh_used"

    iget p2, p0, LT/L4;->o:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string p1, "kwh_regen"

    iget p2, p0, LT/L4;->p:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string p1, "avg_speed"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string p1, "max_speed"

    iget p2, p0, LT/L4;->l:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string p1, "avg_cons"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object p1, p0, LT/L4;->f:Ljava/lang/Float;

    if-eqz p1, :cond_5

    const-string p2, "soc_start"

    invoke-virtual {v4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_5
    iget-object p1, p0, LT/L4;->i:Ljava/lang/Float;

    if-eqz p1, :cond_6

    const-string p2, "soc_end"

    invoke-virtual {v4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_6
    iget-object p1, p0, LT/L4;->g:Ljava/lang/Float;

    if-eqz p1, :cond_7

    const-string p2, "range_start"

    invoke-virtual {v4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_7
    iget-object p1, p0, LT/L4;->j:Ljava/lang/Float;

    if-eqz p1, :cond_8

    const-string p2, "range_end"

    invoke-virtual {v4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_8
    iget-object p1, p0, LT/L4;->e:Ljava/lang/Float;

    if-eqz p1, :cond_9

    const-string p2, "odo_start"

    invoke-virtual {v4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_9
    iget-object p1, p0, LT/L4;->h:Ljava/lang/Float;

    if-eqz p1, :cond_a

    const-string p2, "odo_end"

    invoke-virtual {v4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_a
    iget-object p1, p0, LT/L4;->a:LT/S0;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v0, "trips"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p2, v0, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    const-string v0, "DELETE FROM trips WHERE source_key NOT IN (SELECT source_key FROM trips ORDER BY start_ms DESC LIMIT 20)"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    monitor-exit p1

    :cond_b
    const/4 p1, 0x0

    iput-boolean p1, p0, LT/L4;->b:Z

    return-void
.end method

.method public final declared-synchronized b(LT/F4;J)V
    .locals 10

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p1, LT/F4;->b:Ljava/lang/Integer;

    iget-object v4, p1, LT/F4;->a:Ljava/lang/Float;

    iget-object v5, p1, LT/F4;->d:Ljava/lang/Float;

    iget-object v6, p1, LT/F4;->f:Ljava/lang/Float;

    iget-object v7, p1, LT/F4;->e:Ljava/lang/Float;

    iget-boolean v1, p0, LT/L4;->b:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    if-eqz v2, :cond_2

    iget-object v8, p1, LT/F4;->s:Ljava/lang/String;

    move-object v1, p0

    move-wide v2, p2

    invoke-virtual/range {v1 .. v8}, LT/L4;->c(JLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    const/4 p1, 0x0

    if-eqz v4, :cond_5

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v3, p0, LT/L4;->l:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, LT/L4;->l:F

    :cond_4
    iget v1, p0, LT/L4;->m:F

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v1, v3

    iput v1, p0, LT/L4;->m:F

    iget v1, p0, LT/L4;->n:I

    add-int/2addr v1, v2

    iput v1, p0, LT/L4;->n:I

    iget-wide v1, p0, LT/L4;->d:J

    const-wide/16 v8, 0x0

    cmp-long v3, v1, v8

    if-lez v3, :cond_5

    sub-long v1, p2, v1

    long-to-float v1, v1

    const v2, 0x4a5bba00    # 3600000.0f

    div-float/2addr v1, v2

    cmpl-float v2, v1, p1

    if-lez v2, :cond_5

    const v2, 0x3ca3d70a    # 0.02f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_5

    iget v2, p0, LT/L4;->q:F

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    iput v3, p0, LT/L4;->q:F

    :cond_5
    if-eqz v5, :cond_8

    iget-object v1, p0, LT/L4;->k:Ljava/lang/Float;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x421c0000    # 39.0f

    mul-float/2addr v2, v3

    cmpl-float p1, v1, p1

    if-lez p1, :cond_6

    iget p1, p0, LT/L4;->o:F

    add-float/2addr p1, v2

    iput p1, p0, LT/L4;->o:F

    goto :goto_1

    :cond_6
    iget p1, p0, LT/L4;->p:F

    add-float/2addr p1, v2

    iput p1, p0, LT/L4;->p:F

    :cond_7
    :goto_1
    iput-object v5, p0, LT/L4;->k:Ljava/lang/Float;

    iput-object v5, p0, LT/L4;->i:Ljava/lang/Float;

    :cond_8
    if-eqz v6, :cond_9

    iput-object v6, p0, LT/L4;->h:Ljava/lang/Float;

    :cond_9
    if-eqz v7, :cond_a

    iput-object v7, p0, LT/L4;->j:Ljava/lang/Float;

    :cond_a
    iput-wide p2, p0, LT/L4;->d:J

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    invoke-virtual {p0, p2, p3}, LT/L4;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final c(JLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LT/L4;->b:Z

    iput-wide p1, p0, LT/L4;->c:J

    iput-wide p1, p0, LT/L4;->d:J

    iput-object p5, p0, LT/L4;->e:Ljava/lang/Float;

    iput-object p4, p0, LT/L4;->f:Ljava/lang/Float;

    iput-object p6, p0, LT/L4;->g:Ljava/lang/Float;

    iput-object p5, p0, LT/L4;->h:Ljava/lang/Float;

    iput-object p4, p0, LT/L4;->i:Ljava/lang/Float;

    iput-object p6, p0, LT/L4;->j:Ljava/lang/Float;

    iput-object p4, p0, LT/L4;->k:Ljava/lang/Float;

    iput-object p7, p0, LT/L4;->r:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput p2, p0, LT/L4;->l:F

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_1

    :cond_1
    move p2, p1

    :goto_1
    iput p2, p0, LT/L4;->m:F

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput v0, p0, LT/L4;->n:I

    iput p1, p0, LT/L4;->o:F

    iput p1, p0, LT/L4;->p:F

    iput p1, p0, LT/L4;->q:F

    return-void
.end method
