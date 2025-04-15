.class final Lcom/google/android/gms/internal/gtm/zzia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zznh;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzic;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzic;Lcom/google/android/gms/internal/gtm/zzhz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzia;->zza:Lcom/google/android/gms/internal/gtm/zzic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzia;->zza:Lcom/google/android/gms/internal/gtm/zzic;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzic;->zza(Lcom/google/android/gms/internal/gtm/zzic;)Lcom/google/android/gms/tagmanager/zzcf;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/tagmanager/zzcf;->zzb(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error calling customEvaluator proxy:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
