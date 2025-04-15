.class final Lcom/google/android/gms/internal/gtm/zzbgw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbhf;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/gtm/zzbgs;

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzbhz;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/gtm/zzbeq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/gtm/zzbhz;Lcom/google/android/gms/internal/gtm/zzbeq;Lcom/google/android/gms/internal/gtm/zzbgs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzb:Lcom/google/android/gms/internal/gtm/zzbhz;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/gtm/zzbeq;->zzi(Lcom/google/android/gms/internal/gtm/zzbgs;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzd:Lcom/google/android/gms/internal/gtm/zzbeq;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zza:Lcom/google/android/gms/internal/gtm/zzbgs;

    return-void
.end method

.method static zzc(Lcom/google/android/gms/internal/gtm/zzbhz;Lcom/google/android/gms/internal/gtm/zzbeq;Lcom/google/android/gms/internal/gtm/zzbgs;)Lcom/google/android/gms/internal/gtm/zzbgw;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbgw;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzbgw;-><init>(Lcom/google/android/gms/internal/gtm/zzbhz;Lcom/google/android/gms/internal/gtm/zzbeq;Lcom/google/android/gms/internal/gtm/zzbgs;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzb:Lcom/google/android/gms/internal/gtm/zzbhz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbhz;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbhz;->zzb(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzc:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzd:Lcom/google/android/gms/internal/gtm/zzbeq;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/gtm/zzbeq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzbeu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbeu;->zzc()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzb:Lcom/google/android/gms/internal/gtm/zzbhz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbhz;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzc:Z

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzd:Lcom/google/android/gms/internal/gtm/zzbeq;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/gtm/zzbeq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzbeu;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzbeu;->zza:Lcom/google/android/gms/internal/gtm/zzbhs;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbhs;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zza:Lcom/google/android/gms/internal/gtm/zzbgs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzbgs;->zzas()Lcom/google/android/gms/internal/gtm/zzbgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzbgr;->zzD()Lcom/google/android/gms/internal/gtm/zzbgs;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzb:Lcom/google/android/gms/internal/gtm/zzbhz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbhz;->zzm(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzd:Lcom/google/android/gms/internal/gtm/zzbeq;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbeq;->zzf(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzb:Lcom/google/android/gms/internal/gtm/zzbhz;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzbhh;->zzF(Lcom/google/android/gms/internal/gtm/zzbhz;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzd:Lcom/google/android/gms/internal/gtm/zzbeq;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzbhh;->zzE(Lcom/google/android/gms/internal/gtm/zzbeq;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbhe;Lcom/google/android/gms/internal/gtm/zzbep;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzb:Lcom/google/android/gms/internal/gtm/zzbhz;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzd:Lcom/google/android/gms/internal/gtm/zzbeq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbhz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/gtm/zzbeq;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzbeu;

    move-result-object v3

    .line 3
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzbhe;->zzc()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_b

    .line 4
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzbhe;->zzd()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_3

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zza:Lcom/google/android/gms/internal/gtm/zzbgs;

    ushr-int/lit8 v4, v4, 0x3

    .line 15
    invoke-virtual {v1, p3, v5, v4}, Lcom/google/android/gms/internal/gtm/zzbeq;->zzd(Lcom/google/android/gms/internal/gtm/zzbep;Lcom/google/android/gms/internal/gtm/zzbgs;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 16
    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/gtm/zzbeq;->zzg(Lcom/google/android/gms/internal/gtm/zzbhe;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbep;Lcom/google/android/gms/internal/gtm/zzbeu;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/gtm/zzbhz;->zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbhe;)Z

    move-result v4

    goto :goto_1

    .line 18
    :cond_2
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzbhe;->zzT()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-nez v4, :cond_0

    .line 20
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/gtm/zzbhz;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 v4, 0x0

    const/4 v6, 0x0

    move v7, v6

    move-object v6, v4

    .line 5
    :cond_4
    :goto_2
    :try_start_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzbhe;->zzc()I

    move-result v8

    if-ne v8, v5, :cond_5

    goto :goto_3

    .line 6
    :cond_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzbhe;->zzd()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_6

    .line 10
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzbhe;->zzj()I

    move-result v7

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zza:Lcom/google/android/gms/internal/gtm/zzbgs;

    .line 11
    invoke-virtual {v1, p3, v4, v7}, Lcom/google/android/gms/internal/gtm/zzbeq;->zzd(Lcom/google/android/gms/internal/gtm/zzbep;Lcom/google/android/gms/internal/gtm/zzbgs;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_6
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_8

    if-eqz v4, :cond_7

    .line 7
    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/gtm/zzbeq;->zzg(Lcom/google/android/gms/internal/gtm/zzbhe;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbep;Lcom/google/android/gms/internal/gtm/zzbeu;)V

    goto :goto_2

    .line 8
    :cond_7
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzbhe;->zzq()Lcom/google/android/gms/internal/gtm/zzbbw;

    move-result-object v6

    goto :goto_2

    .line 9
    :cond_8
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzbhe;->zzT()Z

    move-result v8

    if-nez v8, :cond_4

    .line 12
    :goto_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzbhe;->zzd()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_a

    if-eqz v6, :cond_0

    if-eqz v4, :cond_9

    .line 13
    invoke-virtual {v1, v6, v4, p3, v3}, Lcom/google/android/gms/internal/gtm/zzbeq;->zzh(Lcom/google/android/gms/internal/gtm/zzbbw;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbep;Lcom/google/android/gms/internal/gtm/zzbeu;)V

    goto :goto_0

    .line 14
    :cond_9
    invoke-virtual {v0, v2, v7, v6}, Lcom/google/android/gms/internal/gtm/zzbhz;->zzk(Ljava/lang/Object;ILcom/google/android/gms/internal/gtm/zzbbw;)V

    goto :goto_0

    .line 19
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbfs;->zzb()Lcom/google/android/gms/internal/gtm/zzbfs;

    move-result-object p2

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :cond_b
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/gtm/zzbhz;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/gtm/zzbhz;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    throw p2
.end method

.method public final zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/gtm/zzbbf;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbff;

    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzbff;->zzd:Lcom/google/android/gms/internal/gtm/zzbia;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbia;->zzc()Lcom/google/android/gms/internal/gtm/zzbia;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbia;->zze()Lcom/google/android/gms/internal/gtm/zzbia;

    move-result-object v1

    .line 2
    iput-object v1, v0, Lcom/google/android/gms/internal/gtm/zzbff;->zzd:Lcom/google/android/gms/internal/gtm/zzbia;

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzbfb;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbfb;->zzV()Lcom/google/android/gms/internal/gtm/zzbeu;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ge p3, p4, :cond_a

    .line 5
    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/gtm/zzbbg;->zzj([BILcom/google/android/gms/internal/gtm/zzbbf;)I

    move-result v4

    iget p3, p5, Lcom/google/android/gms/internal/gtm/zzbbf;->zza:I

    const/16 v3, 0xb

    const/4 v5, 0x2

    if-eq p3, v3, :cond_3

    and-int/lit8 v3, p3, 0x7

    if-ne v3, v5, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzd:Lcom/google/android/gms/internal/gtm/zzbeq;

    iget-object v3, p5, Lcom/google/android/gms/internal/gtm/zzbbf;->zzd:Lcom/google/android/gms/internal/gtm/zzbep;

    iget-object v5, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zza:Lcom/google/android/gms/internal/gtm/zzbgs;

    ushr-int/lit8 v6, p3, 0x3

    .line 17
    invoke-virtual {v2, v3, v5, v6}, Lcom/google/android/gms/internal/gtm/zzbeq;->zzd(Lcom/google/android/gms/internal/gtm/zzbep;Lcom/google/android/gms/internal/gtm/zzbgs;I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbhb;->zza()Lcom/google/android/gms/internal/gtm/zzbhb;

    move-result-object p3

    move-object v2, v8

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzbfd;

    iget-object v3, v2, Lcom/google/android/gms/internal/gtm/zzbfd;->zzc:Lcom/google/android/gms/internal/gtm/zzbgs;

    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 18
    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/gtm/zzbhb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbhf;

    move-result-object p3

    .line 20
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/android/gms/internal/gtm/zzbbg;->zzd(Lcom/google/android/gms/internal/gtm/zzbhf;[BIILcom/google/android/gms/internal/gtm/zzbbf;)I

    move-result p3

    iget-object v2, v2, Lcom/google/android/gms/internal/gtm/zzbfd;->zzd:Lcom/google/android/gms/internal/gtm/zzbfc;

    iget-object v3, p5, Lcom/google/android/gms/internal/gtm/zzbbf;->zzc:Ljava/lang/Object;

    .line 21
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzbeu;->zzk(Lcom/google/android/gms/internal/gtm/zzbet;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 22
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/gtm/zzbbg;->zzi(I[BIILcom/google/android/gms/internal/gtm/zzbia;Lcom/google/android/gms/internal/gtm/zzbbf;)I

    move-result p3

    :goto_1
    move-object v2, v8

    goto :goto_0

    .line 23
    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/android/gms/internal/gtm/zzbbg;->zzn(I[BIILcom/google/android/gms/internal/gtm/zzbbf;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v3, v0

    :goto_2
    if-ge v4, p4, :cond_8

    .line 6
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/gtm/zzbbg;->zzj([BILcom/google/android/gms/internal/gtm/zzbbf;)I

    move-result v4

    iget v6, p5, Lcom/google/android/gms/internal/gtm/zzbbf;->zza:I

    and-int/lit8 v7, v6, 0x7

    ushr-int/lit8 v8, v6, 0x3

    if-eq v8, v5, :cond_6

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbhb;->zza()Lcom/google/android/gms/internal/gtm/zzbhb;

    move-result-object v6

    move-object v7, v2

    check-cast v7, Lcom/google/android/gms/internal/gtm/zzbfd;

    iget-object v8, v7, Lcom/google/android/gms/internal/gtm/zzbfd;->zzc:Lcom/google/android/gms/internal/gtm/zzbgs;

    .line 8
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 7
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/gtm/zzbhb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbhf;

    move-result-object v6

    .line 9
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/android/gms/internal/gtm/zzbbg;->zzd(Lcom/google/android/gms/internal/gtm/zzbhf;[BIILcom/google/android/gms/internal/gtm/zzbbf;)I

    move-result v4

    iget-object v6, v7, Lcom/google/android/gms/internal/gtm/zzbfd;->zzd:Lcom/google/android/gms/internal/gtm/zzbfc;

    iget-object v7, p5, Lcom/google/android/gms/internal/gtm/zzbbf;->zzc:Ljava/lang/Object;

    .line 10
    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/internal/gtm/zzbeu;->zzk(Lcom/google/android/gms/internal/gtm/zzbet;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v7, v5, :cond_7

    .line 11
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/gtm/zzbbg;->zza([BILcom/google/android/gms/internal/gtm/zzbbf;)I

    move-result v4

    iget-object v3, p5, Lcom/google/android/gms/internal/gtm/zzbbf;->zzc:Ljava/lang/Object;

    .line 12
    check-cast v3, Lcom/google/android/gms/internal/gtm/zzbbw;

    goto :goto_2

    :cond_6
    if-nez v7, :cond_7

    .line 13
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/gtm/zzbbg;->zzj([BILcom/google/android/gms/internal/gtm/zzbbf;)I

    move-result v4

    iget p3, p5, Lcom/google/android/gms/internal/gtm/zzbbf;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzd:Lcom/google/android/gms/internal/gtm/zzbeq;

    iget-object v6, p5, Lcom/google/android/gms/internal/gtm/zzbbf;->zzd:Lcom/google/android/gms/internal/gtm/zzbep;

    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zza:Lcom/google/android/gms/internal/gtm/zzbgs;

    .line 14
    invoke-virtual {v2, v6, v7, p3}, Lcom/google/android/gms/internal/gtm/zzbeq;->zzd(Lcom/google/android/gms/internal/gtm/zzbep;Lcom/google/android/gms/internal/gtm/zzbgs;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_7
    :goto_3
    const/16 v7, 0xc

    if-eq v6, v7, :cond_8

    .line 15
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/android/gms/internal/gtm/zzbbg;->zzn(I[BIILcom/google/android/gms/internal/gtm/zzbbf;)I

    move-result v4

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v5

    .line 16
    invoke-virtual {v1, p3, v3}, Lcom/google/android/gms/internal/gtm/zzbia;->zzh(ILjava/lang/Object;)V

    :cond_9
    move p3, v4

    goto/16 :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    .line 24
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbfs;->zzg()Lcom/google/android/gms/internal/gtm/zzbfs;

    move-result-object p1

    throw p1
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzb:Lcom/google/android/gms/internal/gtm/zzbhz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbhz;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzb:Lcom/google/android/gms/internal/gtm/zzbhz;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/gtm/zzbhz;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzc:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzd:Lcom/google/android/gms/internal/gtm/zzbeq;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbeq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzbeu;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzd:Lcom/google/android/gms/internal/gtm/zzbeq;

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/gtm/zzbeq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzbeu;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzbeu;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzd:Lcom/google/android/gms/internal/gtm/zzbeq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbeq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzbeu;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbeu;->zzm()Z

    move-result p1

    return p1
.end method

.method public final zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbck;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzd:Lcom/google/android/gms/internal/gtm/zzbeq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbeq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzbeu;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbeu;->zzg()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzbet;

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/internal/gtm/zzbet;->zze()Lcom/google/android/gms/internal/gtm/zzbiq;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzbiq;->zzi:Lcom/google/android/gms/internal/gtm/zzbiq;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/gtm/zzbet;->zzg()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/gtm/zzbet;->zzf()Z

    .line 7
    instance-of v3, v1, Lcom/google/android/gms/internal/gtm/zzbfv;

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/gtm/zzbet;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzbfv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbfv;->zza()Lcom/google/android/gms/internal/gtm/zzbfx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbfy;->zzb()Lcom/google/android/gms/internal/gtm/zzbbw;

    move-result-object v1

    .line 9
    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/gtm/zzbck;->zzw(ILjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/gtm/zzbet;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/gtm/zzbck;->zzw(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    .line 11
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbgw;->zzb:Lcom/google/android/gms/internal/gtm/zzbhz;

    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbhz;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzbhz;->zzr(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbck;)V

    return-void
.end method
