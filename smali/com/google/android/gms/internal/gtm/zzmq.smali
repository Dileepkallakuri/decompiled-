.class public final Lcom/google/android/gms/internal/gtm/zzmq;
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
    .locals 4

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, p1, :cond_1

    if-ne v0, v2, :cond_0

    move v3, p1

    move v0, v2

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v3, p1

    .line 2
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v3, p2, v1

    instance-of v3, v3, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    aget-object v1, p2, v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v1

    if-ge v0, v2, :cond_2

    const-string p1, ""

    goto :goto_1

    .line 5
    :cond_2
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_1
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 9
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrg;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1
.end method
