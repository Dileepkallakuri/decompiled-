.class public Lcom/google/android/gms/internal/gtm/zzbt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/gtm/zzbx;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/gtm/zzbx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    return-void
.end method

.method protected static zzD(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzbt;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/gtm/zzbt;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 7
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p0, v2

    .line 10
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move-object v2, p0

    .line 13
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final zzU()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzc:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static zza(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 3
    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_2

    const-string p0, "true"

    return-object p0

    :cond_2
    const-string p0, "false"

    return-object p0

    .line 4
    :cond_3
    instance-of v0, p0, Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 5
    check-cast p0, Ljava/lang/Throwable;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzn()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    if-eqz v1, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzc:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-static {p2, p3, p4, p5}, Lcom/google/android/gms/internal/gtm/zzfd;->zzD(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p1, v0, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x5

    if-lt p1, v0, :cond_3

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/gtm/zzfd;->zze(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzc:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-static {p2, p3, p4, p5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzD(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method


# virtual methods
.method protected final zzA()Lcom/google/android/gms/internal/gtm/zzfj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzo()Lcom/google/android/gms/internal/gtm/zzfj;

    move-result-object v0

    return-object v0
.end method

.method protected final zzB()Lcom/google/android/gms/internal/gtm/zzfv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzq()Lcom/google/android/gms/internal/gtm/zzfv;

    move-result-object v0

    return-object v0
.end method

.method protected final zzC()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzr()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final zzE(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzF(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzG(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzH(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x3

    const-string v2, "POST compressed size, ratio %, url"

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzI(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzJ(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzK(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzL(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzM(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzN(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzO(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzP(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzQ(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzR(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzS(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzT(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x5

    const-string v2, "Deleted fewer hits then expected"

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected final zzo()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/analytics/GoogleAnalytics;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzc()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    return-object v0
.end method

.method protected final zzq()Lcom/google/android/gms/analytics/zzr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzd()Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    return-object v0
.end method

.method protected final zzr()Lcom/google/android/gms/internal/gtm/zzbk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zze()Lcom/google/android/gms/internal/gtm/zzbk;

    move-result-object v0

    return-object v0
.end method

.method protected final zzs()Lcom/google/android/gms/internal/gtm/zzbs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzf()Lcom/google/android/gms/internal/gtm/zzbs;

    move-result-object v0

    return-object v0
.end method

.method public final zzt()Lcom/google/android/gms/internal/gtm/zzbx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    return-object v0
.end method

.method protected final zzu()Lcom/google/android/gms/internal/gtm/zzch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzh()Lcom/google/android/gms/internal/gtm/zzch;

    move-result-object v0

    return-object v0
.end method

.method protected final zzv()Lcom/google/android/gms/internal/gtm/zzcp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzi()Lcom/google/android/gms/internal/gtm/zzcp;

    move-result-object v0

    return-object v0
.end method

.method protected final zzw()Lcom/google/android/gms/internal/gtm/zzcv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzj()Lcom/google/android/gms/internal/gtm/zzcv;

    move-result-object v0

    return-object v0
.end method

.method protected final zzx()Lcom/google/android/gms/internal/gtm/zzcz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzk()Lcom/google/android/gms/internal/gtm/zzcz;

    move-result-object v0

    return-object v0
.end method

.method protected final zzy()Lcom/google/android/gms/internal/gtm/zzda;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzl()Lcom/google/android/gms/internal/gtm/zzda;

    move-result-object v0

    return-object v0
.end method

.method protected final zzz()Lcom/google/android/gms/internal/gtm/zzfd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v0

    return-object v0
.end method
