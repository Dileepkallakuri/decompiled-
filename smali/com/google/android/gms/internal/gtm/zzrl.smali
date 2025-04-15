.class public final Lcom/google/android/gms/internal/gtm/zzrl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# direct methods
.method public static zza(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/gtm/zzrk;

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/gtm/zzra;

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzra;->zzi()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/gtm/zzrb;

    if-eqz v2, :cond_3

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzrb;->zzi()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/gtm/zzrh;

    if-eqz v2, :cond_4

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzrh;

    iget-object v1, v1, Lcom/google/android/gms/internal/gtm/zzrh;->zza:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzrl;->zza(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Invalid param type for key \'%s\'. Only boolean, double and string types and maps of thereof are supported."

    .line 13
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object v0
.end method

.method public static zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 4

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzqz;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzqz;

    return-object p0

    .line 3
    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzra;

    check-cast p0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzra;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 5
    :cond_2
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrb;

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object v0

    .line 7
    :cond_3
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrb;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object v0

    .line 9
    :cond_4
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrb;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object v0

    .line 11
    :cond_5
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrb;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object v0

    .line 13
    :cond_6
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrb;

    check-cast p0, Ljava/lang/Double;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object v0

    .line 15
    :cond_7
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_8

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 17
    :cond_8
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_9

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 19
    :cond_9
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 21
    :cond_a
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzrl;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzrg;-><init>(Ljava/util/List;)V

    return-object p0

    .line 26
    :cond_c
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/util/HashMap;

    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzrl;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 31
    :cond_d
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzrh;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzrh;-><init>(Ljava/util/Map;)V

    return-object p0

    .line 32
    :cond_e
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_10

    new-instance v0, Ljava/util/HashMap;

    .line 33
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 35
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 36
    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzrl;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 37
    :cond_f
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzrh;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzrh;-><init>(Ljava/util/Map;)V

    return-object p0

    .line 36
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 38
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Type not supported: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/gtm/zzie;Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzrl;->zzj(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrc;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrg;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrh;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzri;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzri;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/gtm/zzrl;->zzd(Lcom/google/android/gms/internal/gtm/zzie;Lcom/google/android/gms/internal/gtm/zzri;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempting to evaluate unknown type"

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    .line 5
    instance-of p0, p1, Lcom/google/android/gms/internal/gtm/zzri;

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AbstractType evaluated to illegal type Statement."

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AbstractType evaluated to Java null"

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzd(Lcom/google/android/gms/internal/gtm/zzie;Lcom/google/android/gms/internal/gtm/zzri;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzri;->zzi()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzri;->zzj()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzie;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v1

    const-string v2, "Function \'"

    if-eqz v1, :cond_1

    .line 5
    instance-of v3, v1, Lcom/google/android/gms/internal/gtm/zzrc;

    if-eqz v3, :cond_0

    .line 7
    check-cast v1, Lcom/google/android/gms/internal/gtm/zzrc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzrc;->zzi()Lcom/google/android/gms/internal/gtm/zzjw;

    move-result-object v0

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzjw;->zzd(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not a function"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not supported"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zze(Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 6

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzrh;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzrh;

    iget-object v1, v1, Lcom/google/android/gms/internal/gtm/zzrh;->zza:Ljava/util/Map;

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne v4, v5, :cond_1

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public static zzf(Lcom/google/android/gms/internal/gtm/zzie;Ljava/util/List;)Lcom/google/android/gms/internal/gtm/zzrd;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzqz;

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzri;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/gtm/zzrl;->zzc(Lcom/google/android/gms/internal/gtm/zzie;Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzrl;->zzi(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrd;

    return-object v0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p0
.end method

.method public static zzg(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne p0, v1, :cond_1

    return-object v0

    :cond_1
    instance-of v1, p0, Lcom/google/android/gms/internal/gtm/zzra;

    if-eqz v1, :cond_2

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzra;->zzi()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3
    :cond_2
    instance-of v1, p0, Lcom/google/android/gms/internal/gtm/zzrb;

    if-eqz v1, :cond_4

    .line 4
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrb;->zzi()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double v2, v0, v2

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    double-to-int p0, v0

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrb;->zzi()Ljava/lang/Double;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_4
    instance-of v1, p0, Lcom/google/android/gms/internal/gtm/zzrk;

    if-eqz v1, :cond_5

    .line 9
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_5
    instance-of v1, p0, Lcom/google/android/gms/internal/gtm/zzrg;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/gtm/zzqz;

    .line 13
    invoke-static {v5}, Lcom/google/android/gms/internal/gtm/zzrl;->zzg(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6

    new-array p0, v4, [Ljava/lang/Object;

    aput-object v5, p0, v3

    .line 15
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v2

    const-string v1, "Failure to convert a list element to object: %s (%s)"

    .line 16
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    return-object v0

    .line 14
    :cond_6
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    return-object v1

    .line 18
    :cond_8
    instance-of v1, p0, Lcom/google/android/gms/internal/gtm/zzrh;

    if-eqz v1, :cond_b

    new-instance v1, Ljava/util/HashMap;

    .line 19
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrh;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzrh;->zza:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-static {v6}, Lcom/google/android/gms/internal/gtm/zzrl;->zzg(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_9

    new-array p0, v4, [Ljava/lang/Object;

    .line 23
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v2

    const-string v1, "Failure to convert a map\'s value to object: %s (%s)"

    .line 24
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    return-object v0

    .line 22
    :cond_9
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    return-object v1

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 26
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Converting to Object from unknown abstract type: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzh(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 5
    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzrl;->zzh(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_1

    .line 7
    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzrl;->zzk(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static zzi(Lcom/google/android/gms/internal/gtm/zzqz;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zzc:Lcom/google/android/gms/internal/gtm/zzrd;

    const/4 v1, 0x1

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zzb:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq p0, v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzrd;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrd;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrd;->zzj()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public static zzj(Lcom/google/android/gms/internal/gtm/zzqz;)Z
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzra;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzrb;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzrk;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private static zzk(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzrl;->zzh(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzrl;->zzk(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
