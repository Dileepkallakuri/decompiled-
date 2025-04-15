.class public final Lcom/google/android/gms/internal/gtm/zzjx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/gtm/zzqz;)D
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_0

    return-wide v2

    :cond_0
    cmpl-double p0, v0, v2

    if-eqz p0, :cond_2

    if-eqz p0, :cond_2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    return-wide v2

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    if-ne p0, v2, :cond_1

    return-wide v3

    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    const-wide/16 v5, 0x0

    if-ne p0, v2, :cond_2

    return-wide v5

    .line 2
    :cond_2
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzra;

    if-eqz v2, :cond_4

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzra;->zzi()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_3
    return-wide v5

    .line 4
    :cond_4
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzrb;

    if-eqz v2, :cond_5

    .line 5
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrb;->zzi()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_5
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzrg;

    if-eqz v2, :cond_8

    .line 7
    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzrg;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    return-wide v5

    .line 9
    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v0, :cond_7

    goto :goto_1

    .line 10
    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 11
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/gtm/zzrg;->zzi(I)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v0

    return-wide v0

    .line 13
    :cond_8
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzrk;

    if-eqz v0, :cond_a

    .line 16
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-wide v5

    .line 18
    :cond_9
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v3

    .line 14
    :cond_a
    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzj(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v0

    if-nez v0, :cond_b

    return-wide v3

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqz;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal type given to numberEquivalent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/gtm/zzqz;Lcom/google/android/gms/internal/gtm/zzqz;)D
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 2
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide p0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    if-nez v2, :cond_9

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v0, v5

    const-wide/high16 v7, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-nez v2, :cond_3

    cmpl-double v2, p0, v7

    if-eqz v2, :cond_4

    :cond_3
    cmpl-double v2, v0, v7

    if-nez v2, :cond_5

    cmpl-double v2, p0, v5

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    return-wide v3

    .line 6
    :cond_5
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    return-wide v0

    .line 7
    :cond_7
    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_8

    return-wide p0

    :cond_8
    add-double/2addr v0, p0

    return-wide v0

    :cond_9
    :goto_4
    return-wide v3
.end method

.method public static zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne p0, v2, :cond_1

    const-string p0, "undefined"

    return-object p0

    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne p0, v2, :cond_2

    const-string p0, "null"

    return-object p0

    .line 2
    :cond_2
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzra;

    if-eqz v2, :cond_4

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzra;->zzi()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eq v0, p0, :cond_3

    const-string p0, "false"

    return-object p0

    :cond_3
    const-string p0, "true"

    return-object p0

    .line 4
    :cond_4
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzrb;

    const-string v3, ""

    const-string v4, "."

    if-eqz v2, :cond_d

    .line 5
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrb;->zzi()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    const-string v2, "E"

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v6, "0"

    if-lez v5, :cond_b

    add-int/lit8 v7, v5, 0x1

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_7

    const/4 v8, -0x7

    if-le v7, v8, :cond_6

    .line 8
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0."

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    add-int/2addr v7, v0

    if-gez v7, :cond_5

    .line 11
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_6
    const-string v0, "e"

    .line 13
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_7
    const/16 v8, 0x15

    if-ge v7, v8, :cond_a

    .line 14
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    add-int/2addr v7, v0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v7, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-gez v7, :cond_8

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v7

    .line 18
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 21
    :cond_8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    if-lez v7, :cond_9

    .line 22
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 20
    :cond_9
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_a
    const-string v0, "e+"

    .line 23
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_b
    const-string v0, ".0"

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-0"

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v6

    :cond_c
    :goto_4
    return-object p0

    .line 27
    :cond_d
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzrc;

    if-eqz v0, :cond_f

    .line 28
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzrc;->zzi()Lcom/google/android/gms/internal/gtm/zzjw;

    move-result-object v0

    .line 29
    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzjv;

    if-nez v1, :cond_e

    goto :goto_7

    .line 30
    :cond_e
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzjv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzjv;->zzb()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 31
    :cond_f
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzrg;

    if-eqz v0, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzqz;

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v1, v2, :cond_11

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne v1, v2, :cond_10

    goto :goto_6

    .line 35
    :cond_10
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 34
    :cond_11
    :goto_6
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_12
    const-string p0, ","

    .line 36
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 37
    :cond_13
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzrh;

    if-eqz v0, :cond_14

    const-string p0, "[object Object]"

    return-object p0

    .line 38
    :cond_14
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzrk;

    if-eqz v0, :cond_15

    .line 42
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 39
    :cond_15
    :goto_7
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzj(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqz;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal type given to stringEquivalent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_16
    const-string p0, "Unknown type in stringEquivalent."

    :goto_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 41
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zze(Lcom/google/android/gms/internal/gtm/zzqz;Lcom/google/android/gms/internal/gtm/zzqz;)Z
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    .line 2
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzj(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v2

    const-string v3, "."

    const-string v4, "Illegal type given to abstractEqualityCompare: "

    if-nez v2, :cond_1b

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzj(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzi(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzi(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Boolean"

    const-string v6, "Object"

    const-string v7, "String"

    const-string v8, "Number"

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    .line 11
    :sswitch_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v9

    goto :goto_3

    :sswitch_1
    const-string v3, "Undefined"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_3

    :sswitch_2
    const-string v3, "Null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_3

    :sswitch_3
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v10

    goto :goto_3

    :sswitch_4
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_3

    :sswitch_5
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v11

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v2, -0x1

    :goto_3
    if-eqz v2, :cond_a

    if-eq v2, v0, :cond_a

    if-eq v2, v11, :cond_7

    if-eq v2, v10, :cond_6

    if-eq v2, v9, :cond_5

    if-eq v2, v4, :cond_3

    return v1

    :cond_3
    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    return v1

    .line 10
    :cond_5
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzra;->zzi()Ljava/lang/Boolean;

    move-result-object p0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzra;->zzi()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 11
    :cond_6
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 12
    :cond_7
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrb;->zzi()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrb;->zzi()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    cmpl-double p0, v2, p0

    if-nez p0, :cond_9

    return v0

    :cond_9
    :goto_4
    return v1

    :cond_a
    return v0

    .line 11
    :cond_b
    sget-object v4, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq p0, v4, :cond_c

    sget-object v9, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne p0, v9, :cond_d

    :cond_c
    if-eq p1, v4, :cond_19

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq p1, v4, :cond_19

    .line 15
    :cond_d
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5

    .line 33
    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrb;

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    .line 33
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/gtm/zzjx;->zze(Lcom/google/android/gms/internal/gtm/zzqz;Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result p0

    return p0

    .line 16
    :cond_f
    :goto_5
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_6

    .line 31
    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrb;

    .line 32
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    .line 31
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zze(Lcom/google/android/gms/internal/gtm/zzqz;Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result p0

    return p0

    .line 17
    :cond_11
    :goto_6
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrb;

    .line 19
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    .line 18
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zze(Lcom/google/android/gms/internal/gtm/zzqz;Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result p0

    return p0

    .line 20
    :cond_12
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrb;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    .line 21
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/gtm/zzjx;->zze(Lcom/google/android/gms/internal/gtm/zzqz;Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result p0

    return p0

    .line 23
    :cond_13
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 24
    :cond_14
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 25
    :cond_15
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 26
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 27
    :cond_16
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zze(Lcom/google/android/gms/internal/gtm/zzqz;Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result p0

    return p0

    :cond_17
    return v1

    .line 29
    :cond_18
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/gtm/zzjx;->zze(Lcom/google/android/gms/internal/gtm/zzqz;Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result p0

    return p0

    :cond_19
    return v0

    .line 5
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqz;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqz;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x74423897 -> :sswitch_5
        -0x739a70a1 -> :sswitch_4
        -0x6bc5b3cf -> :sswitch_3
        0x2539a7 -> :sswitch_2
        0x39918130 -> :sswitch_1
        0x67140408 -> :sswitch_0
    .end sparse-switch
.end method

.method public static zzf(Lcom/google/android/gms/internal/gtm/zzqz;Lcom/google/android/gms/internal/gtm/zzqz;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    .line 2
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzj(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v2

    const-string v3, "."

    const-string v4, "Illegal type given to abstractRelationalCompare: "

    if-nez v2, :cond_13

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzj(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 7
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzrh;

    if-nez v2, :cond_2

    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzrg;

    if-nez v2, :cond_2

    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzrc;

    if-eqz v2, :cond_3

    .line 8
    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    move-object p0, v2

    .line 9
    :cond_3
    instance-of v2, p1, Lcom/google/android/gms/internal/gtm/zzrh;

    if-nez v2, :cond_4

    instance-of v2, p1, Lcom/google/android/gms/internal/gtm/zzrg;

    if-nez v2, :cond_4

    instance-of v2, p1, Lcom/google/android/gms/internal/gtm/zzrc;

    if-eqz v2, :cond_5

    .line 10
    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    move-object p1, v2

    .line 11
    :cond_5
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzrk;

    if-eqz v2, :cond_8

    instance-of v2, p1, Lcom/google/android/gms/internal/gtm/zzrk;

    if-nez v2, :cond_6

    goto :goto_2

    .line 16
    :cond_6
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object p0

    .line 17
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_7

    return v0

    :cond_7
    return v1

    .line 12
    :cond_8
    :goto_2
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v2

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide p0

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_a

    cmpl-double v7, p0, v4

    if-eqz v7, :cond_b

    :cond_a
    if-nez v6, :cond_c

    cmpl-double v4, p0, v4

    if-eqz v4, :cond_b

    goto :goto_3

    :cond_b
    return v1

    :cond_c
    :goto_3
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v6, v2, v4

    if-nez v6, :cond_d

    return v1

    :cond_d
    cmpl-double v4, p0, v4

    if-nez v4, :cond_e

    return v0

    :cond_e
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v6, p0, v4

    if-nez v6, :cond_f

    return v1

    :cond_f
    cmpl-double v4, v2, v4

    if-nez v4, :cond_10

    return v0

    .line 15
    :cond_10
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-gez p0, :cond_11

    return v0

    :cond_11
    :goto_4
    return v1

    .line 5
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqz;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqz;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzg(Lcom/google/android/gms/internal/gtm/zzqz;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq p0, v2, :cond_8

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne p0, v2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzra;

    if-eqz v2, :cond_2

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzra;->zzi()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 4
    :cond_2
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzrb;

    if-eqz v2, :cond_4

    .line 5
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrb;->zzi()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrb;->zzi()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrb;->zzi()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_3
    return v1

    .line 8
    :cond_4
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzrk;

    if-eqz v2, :cond_5

    .line 9
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    .line 10
    :cond_5
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzj(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqz;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal type given to isTruthy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_1
    return v1
.end method

.method public static zzh(Lcom/google/android/gms/internal/gtm/zzqz;Lcom/google/android/gms/internal/gtm/zzqz;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    .line 2
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzj(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v2

    const-string v3, "."

    const-string v4, "Illegal type given to strictEqualityCompare: "

    if-nez v2, :cond_d

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzj(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzi(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzi(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v3, "Boolean"

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_3

    :sswitch_1
    const-string v3, "Undefined"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_3

    :sswitch_2
    const-string v3, "Null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_3

    :sswitch_3
    const-string v3, "String"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_3

    :sswitch_4
    const-string v3, "Number"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v6

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, -0x1

    :goto_3
    if-eqz v2, :cond_b

    if-eq v2, v0, :cond_b

    if-eq v2, v6, :cond_8

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_5

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    return v1

    .line 10
    :cond_5
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzra;->zzi()Ljava/lang/Boolean;

    move-result-object p0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzra;->zzi()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 11
    :cond_6
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object p0

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    return v1

    .line 14
    :cond_8
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrb;->zzi()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrb;->zzi()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    cmpl-double p0, v2, p0

    if-nez p0, :cond_a

    return v0

    :cond_a
    :goto_4
    return v1

    :cond_b
    return v0

    .line 5
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqz;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqz;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x74423897 -> :sswitch_4
        -0x6bc5b3cf -> :sswitch_3
        0x2539a7 -> :sswitch_2
        0x39918130 -> :sswitch_1
        0x67140408 -> :sswitch_0
    .end sparse-switch
.end method

.method private static zzi(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne p0, v0, :cond_0

    const-string p0, "Undefined"

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne p0, v0, :cond_1

    const-string p0, "Null"

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzra;

    if-eqz v0, :cond_2

    const-string p0, "Boolean"

    return-object p0

    .line 2
    :cond_2
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzrb;

    if-eqz v0, :cond_3

    const-string p0, "Number"

    return-object p0

    .line 3
    :cond_3
    instance-of p0, p0, Lcom/google/android/gms/internal/gtm/zzrk;

    if-eqz p0, :cond_4

    const-string p0, "String"

    return-object p0

    :cond_4
    const-string p0, "Object"

    return-object p0
.end method

.method private static zzj(Lcom/google/android/gms/internal/gtm/zzqz;)Z
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzri;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzrd;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method
