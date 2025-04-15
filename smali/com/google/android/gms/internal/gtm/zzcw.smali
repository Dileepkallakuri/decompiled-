.class final Lcom/google/android/gms/internal/gtm/zzcw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/analytics/Logger;


# instance fields
.field private zza:I

.field private zzb:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzcw;->zza:I

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final getLogLevel()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzcw;->zza:I

    return v0
.end method

.method public final info(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setLogLevel(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzcw;->zza:I

    iget-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzcw;->zzb:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzew;->zzc:Lcom/google/android/gms/internal/gtm/zzev;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzc:Lcom/google/android/gms/internal/gtm/zzev;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Logger is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " DEBUG"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzcw;->zzb:Z

    :cond_0
    return-void
.end method

.method public final verbose(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final warn(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
