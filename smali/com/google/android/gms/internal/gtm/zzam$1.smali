.class Lcom/google/android/gms/internal/gtm/zzam$1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gtm/zzam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/gtm/zzbfm<",
        "Ljava/lang/Integer;",
        "Lcom/google/android/gms/internal/gtm/zzaq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/gtm/zzaq;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzaq;->zzb(I)Lcom/google/android/gms/internal/gtm/zzaq;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzaq;->zza:Lcom/google/android/gms/internal/gtm/zzaq;

    :cond_0
    return-object p1
.end method

.method public bridge synthetic zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzam$1;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/gtm/zzaq;

    move-result-object p1

    return-object p1
.end method
