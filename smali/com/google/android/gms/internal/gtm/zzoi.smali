.class public final Lcom/google/android/gms/internal/gtm/zzoi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzjw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    array-length p2, p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string p2, ""

    if-nez p1, :cond_2

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 5
    :cond_2
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 7
    :cond_3
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
