.class public final Lcom/google/android/gms/internal/gtm/zzfc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile zza:Lcom/google/android/gms/analytics/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzcw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzcw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzfc;->zza:Lcom/google/android/gms/analytics/Logger;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/analytics/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfc;->zza:Lcom/google/android/gms/analytics/Logger;

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfd;->zza()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfc;->zzf(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p0

    .line 4
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzc:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1
    :cond_2
    :goto_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzfc;->zza:Lcom/google/android/gms/analytics/Logger;

    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p1, p0}, Lcom/google/android/gms/analytics/Logger;->error(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static zzc(Lcom/google/android/gms/analytics/Logger;)V
    .locals 0

    sput-object p0, Lcom/google/android/gms/internal/gtm/zzfc;->zza:Lcom/google/android/gms/analytics/Logger;

    return-void
.end method

.method public static zzd(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfd;->zza()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzN(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfc;->zzf(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzc:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfc;->zza:Lcom/google/android/gms/analytics/Logger;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->verbose(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static zze(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfd;->zza()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzQ(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfc;->zzf(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzc:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfc;->zza:Lcom/google/android/gms/analytics/Logger;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->warn(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static zzf(I)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfc;->zza:Lcom/google/android/gms/analytics/Logger;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfc;->zza:Lcom/google/android/gms/analytics/Logger;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/Logger;->getLogLevel()I

    move-result v0

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method
