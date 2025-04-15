.class public final Lcom/google/android/gms/internal/gtm/zzoy;
.super Lcom/google/android/gms/internal/gtm/zzpa;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzpa;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zzb(DD)Z
    .locals 0

    cmpg-double p1, p1, p3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
