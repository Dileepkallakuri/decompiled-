.class public final Lcom/google/android/gms/internal/gtm/zznl;
.super Lcom/google/android/gms/internal/gtm/zzjy;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/gtm/zzib;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzib;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzjy;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zznl;->zza:Lcom/google/android/gms/internal/gtm/zzib;

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 1

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length p2, p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 2
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zznl;->zza:Lcom/google/android/gms/internal/gtm/zzib;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzib;->zza()Lcom/google/android/gms/internal/gtm/zzgz;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzgz;->zze(Z)V

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1
.end method
