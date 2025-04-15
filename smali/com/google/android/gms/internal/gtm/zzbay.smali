.class public abstract Lcom/google/android/gms/internal/gtm/zzbay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/gtm/zzbay<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/gtm/zzbax<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/gtm/zzbgs;"
    }
.end annotation


# instance fields
.field protected zzc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzbay;->zzc:I

    return-void
.end method

.method protected static zzS(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzbfq;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Element at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is null."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v0, :cond_1

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 10
    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method zzQ()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzR()Lcom/google/android/gms/internal/gtm/zzbbw;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbay;->zzY()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzbbw;->zzb:Lcom/google/android/gms/internal/gtm/zzbbw;

    .line 2
    new-array v0, v0, [B

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbcj;->zzL([B)Lcom/google/android/gms/internal/gtm/zzbcj;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzbay;->zzau(Lcom/google/android/gms/internal/gtm/zzbcj;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbcj;->zzb()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbbt;

    .line 5
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbbt;-><init>([B)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Serializing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to a ByteString threw an IOException (should never happen)."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method zzT(I)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzU(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbay;->zzY()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbcj;->zzG(I)I

    move-result v0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zzbcj;->zzM(Ljava/io/OutputStream;I)Lcom/google/android/gms/internal/gtm/zzbcj;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbay;->zzau(Lcom/google/android/gms/internal/gtm/zzbcj;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbcj;->zzR()V

    return-void
.end method
