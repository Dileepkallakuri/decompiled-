.class public final Lcom/google/android/gms/internal/gtm/zzjv;
.super Lcom/google/android/gms/internal/gtm/zzjy;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private zza:Lcom/google/android/gms/internal/gtm/zzie;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/util/List;

.field private final zzd:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzie;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzjy;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjv;->zza:Lcom/google/android/gms/internal/gtm/zzie;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzjv;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzjv;->zzc:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zzjv;->zzd:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjv;->zzb:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzjv;->zzc:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzjv;->zzd:Ljava/util/List;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\tparams: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\t: statements: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjv;->zza:Lcom/google/android/gms/internal/gtm/zzie;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzie;->zza()Lcom/google/android/gms/internal/gtm/zzie;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzjv;->zzc:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    array-length v1, p2

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzjv;->zzc:Ljava/util/List;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v2, p2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zzie;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzqz;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzjv;->zzc:Ljava/util/List;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zzie;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzqz;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrg;

    .line 6
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/gtm/zzrg;-><init>(Ljava/util/List;)V

    const-string p2, "arguments"

    .line 5
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/gtm/zzie;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzqz;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzjv;->zzd:Ljava/util/List;

    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzri;

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zzrl;->zzd(Lcom/google/android/gms/internal/gtm/zzie;Lcom/google/android/gms/internal/gtm/zzri;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzrd;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzrd;->zzj()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzrd;->zzi()Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzjv;->zzb:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Internal error - Function call: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    .line 10
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjv;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/gtm/zzie;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjv;->zza:Lcom/google/android/gms/internal/gtm/zzie;

    return-void
.end method
