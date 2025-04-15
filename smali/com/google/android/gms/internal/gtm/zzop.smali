.class public final Lcom/google/android/gms/internal/gtm/zzop;
.super Lcom/google/android/gms/internal/gtm/zzjy;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzjy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 7

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    move v3, p1

    goto :goto_0

    :cond_0
    move v3, v1

    .line 2
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v1, p2, v1

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v1, v3, :cond_9

    aget-object v4, p2, p1

    if-ne v4, v3, :cond_1

    goto :goto_4

    .line 4
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v1

    .line 5
    aget-object v3, p2, p1

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    if-le v0, v2, :cond_2

    .line 6
    aget-object v2, p2, v2

    sget-object v5, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v2, v5, :cond_2

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzjx;->zzg(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v4, 0x42

    :cond_2
    const/4 v2, 0x3

    if-le v0, v2, :cond_6

    .line 8
    aget-object p2, p2, v2

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq p2, v0, :cond_6

    .line 9
    instance-of p1, p2, Lcom/google/android/gms/internal/gtm/zzrb;

    if-nez p1, :cond_3

    return-object v0

    .line 10
    :cond_3
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzjx;->zza(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide p1

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_5

    const-wide/16 v5, 0x0

    cmpg-double v0, p1, v5

    if-gez v0, :cond_4

    goto :goto_1

    :cond_4
    double-to-int p1, p1

    goto :goto_2

    :cond_5
    :goto_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1

    :cond_6
    :goto_2
    :try_start_0
    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 12
    invoke-virtual {p2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    if-lt v0, p1, :cond_7

    .line 14
    invoke-virtual {p2, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-nez v1, :cond_8

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    goto :goto_3

    .line 15
    :cond_8
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object p1

    :catch_0
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1

    :cond_9
    :goto_4
    return-object v3
.end method
