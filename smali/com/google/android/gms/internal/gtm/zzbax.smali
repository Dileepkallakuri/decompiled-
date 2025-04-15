.class public abstract Lcom/google/android/gms/internal/gtm/zzbax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/gtm/zzbay<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/gtm/zzbax<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/gtm/zzbgr;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbax;->zzv()Lcom/google/android/gms/internal/gtm/zzbax;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzv()Lcom/google/android/gms/internal/gtm/zzbax;
.end method

.method protected abstract zzw(Lcom/google/android/gms/internal/gtm/zzbay;)Lcom/google/android/gms/internal/gtm/zzbax;
.end method

.method public final bridge synthetic zzx(Lcom/google/android/gms/internal/gtm/zzbgs;)Lcom/google/android/gms/internal/gtm/zzbgr;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbax;->zzav()Lcom/google/android/gms/internal/gtm/zzbgs;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzbay;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbax;->zzw(Lcom/google/android/gms/internal/gtm/zzbay;)Lcom/google/android/gms/internal/gtm/zzbax;

    move-result-object p1

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
