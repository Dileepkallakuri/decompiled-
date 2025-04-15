.class public final Lcom/google/android/gms/internal/gtm/zzlv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzjw;


# static fields
.field private static zza:Lcom/google/android/gms/internal/gtm/zzic;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/google/android/gms/internal/gtm/zzlv;->zza:Lcom/google/android/gms/internal/gtm/zzic;

    return-void
.end method


# virtual methods
.method public final varargs zzd(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 2
    array-length v1, p2

    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object p1, p2, v0

    instance-of p1, p1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzlv;->zza:Lcom/google/android/gms/internal/gtm/zzic;

    .line 4
    aget-object p2, p2, v0

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzic;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p1

    return-object p1
.end method
