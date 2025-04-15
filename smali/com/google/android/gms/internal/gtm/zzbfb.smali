.class public abstract Lcom/google/android/gms/internal/gtm/zzbfb;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# instance fields
.field protected zzb:Lcom/google/android/gms/internal/gtm/zzbeu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbeu;->zze()Lcom/google/android/gms/internal/gtm/zzbeu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbfb;->zzb:Lcom/google/android/gms/internal/gtm/zzbeu;

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/gtm/zzbfd;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzbfd;->zza:Lcom/google/android/gms/internal/gtm/zzbgs;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzbff;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbff;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    .line 3
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final zzV()Lcom/google/android/gms/internal/gtm/zzbeu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbfb;->zzb:Lcom/google/android/gms/internal/gtm/zzbeu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbeu;->zzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbfb;->zzb:Lcom/google/android/gms/internal/gtm/zzbeu;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbeu;->zzd()Lcom/google/android/gms/internal/gtm/zzbeu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbfb;->zzb:Lcom/google/android/gms/internal/gtm/zzbeu;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbfb;->zzb:Lcom/google/android/gms/internal/gtm/zzbeu;

    return-object v0
.end method

.method public final zzW(Lcom/google/android/gms/internal/gtm/zzben;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzbfd;

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbfb;->zzc(Lcom/google/android/gms/internal/gtm/zzbfd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbfb;->zzb:Lcom/google/android/gms/internal/gtm/zzbeu;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/gtm/zzbfd;->zzd:Lcom/google/android/gms/internal/gtm/zzbfc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbeu;->zzf(Lcom/google/android/gms/internal/gtm/zzbet;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzbfd;->zzb:Ljava/lang/Object;

    return-object p1

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/gtm/zzbfd;->zzd:Lcom/google/android/gms/internal/gtm/zzbfc;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/gtm/zzbfc;->zzd:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/google/android/gms/internal/gtm/zzbfc;->zzc:Lcom/google/android/gms/internal/gtm/zzbip;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbip;->zza()Lcom/google/android/gms/internal/gtm/zzbiq;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/google/android/gms/internal/gtm/zzbiq;->zzh:Lcom/google/android/gms/internal/gtm/zzbiq;

    if-ne v1, v2, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/gtm/zzbfd;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzbfd;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final zzX(Lcom/google/android/gms/internal/gtm/zzben;)Z
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzbfd;

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbfb;->zzc(Lcom/google/android/gms/internal/gtm/zzbfd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbfb;->zzb:Lcom/google/android/gms/internal/gtm/zzbeu;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzbfd;->zzd:Lcom/google/android/gms/internal/gtm/zzbfc;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/gtm/zzbfc;->zzd:Z

    if-nez v1, :cond_1

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzbeu;->zza:Lcom/google/android/gms/internal/gtm/zzbhs;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbhs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    .line 3
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
