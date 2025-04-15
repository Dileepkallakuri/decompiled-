.class final Lcom/google/android/gms/internal/gtm/zzex;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzct;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/gtm/zzbx;

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzey;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzex;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzey;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzey;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzex;->zzb:Lcom/google/android/gms/internal/gtm/zzey;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/gtm/zzcs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzex;->zzb:Lcom/google/android/gms/internal/gtm/zzey;

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzc(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "ga_dryRun"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzex;->zzb:Lcom/google/android/gms/internal/gtm/zzey;

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzey;->zze:I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzex;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object p2

    const-string v0, "Bool xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzR(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "ga_dispatchPeriod"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzex;->zzb:Lcom/google/android/gms/internal/gtm/zzey;

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzey;->zzd:I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzex;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object p2

    const-string v0, "Int xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzR(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ga_appName"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzex;->zzb:Lcom/google/android/gms/internal/gtm/zzey;

    iput-object p2, p1, Lcom/google/android/gms/internal/gtm/zzey;->zza:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "ga_appVersion"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzex;->zzb:Lcom/google/android/gms/internal/gtm/zzey;

    iput-object p2, p1, Lcom/google/android/gms/internal/gtm/zzey;->zzb:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "ga_logLevel"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzex;->zzb:Lcom/google/android/gms/internal/gtm/zzey;

    iput-object p2, p1, Lcom/google/android/gms/internal/gtm/zzey;->zzc:Ljava/lang/String;

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzex;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object p2

    const-string v0, "String xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzR(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
