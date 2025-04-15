.class public abstract Lcom/google/android/gms/internal/gtm/zzbff;
.super Lcom/google/android/gms/internal/gtm/zzbay;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/gtm/zzbff<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/gtm/zzbez<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/gtm/zzbay<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zza:Ljava/util/Map;


# instance fields
.field protected zzd:Lcom/google/android/gms/internal/gtm/zzbia;

.field protected zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbff;->zza:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbay;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbia;->zzc()Lcom/google/android/gms/internal/gtm/zzbia;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbff;->zzd:Lcom/google/android/gms/internal/gtm/zzbia;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzbff;->zze:I

    return-void
.end method

.method public static zzab(Lcom/google/android/gms/internal/gtm/zzbgs;Lcom/google/android/gms/internal/gtm/zzbgs;Lcom/google/android/gms/internal/gtm/zzbfi;ILcom/google/android/gms/internal/gtm/zzbip;ZLjava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbfd;
    .locals 9

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzbfd;

    new-instance p5, Lcom/google/android/gms/internal/gtm/zzbfc;

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p5

    move v5, p3

    move-object v6, p4

    .line 2
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/gtm/zzbfc;-><init>(Lcom/google/android/gms/internal/gtm/zzbfi;ILcom/google/android/gms/internal/gtm/zzbip;ZZ)V

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbfd;-><init>(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbgs;Lcom/google/android/gms/internal/gtm/zzbfc;Ljava/lang/Class;)V

    return-object p2
.end method

.method public static zzac(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbgs;Lcom/google/android/gms/internal/gtm/zzbfi;ILcom/google/android/gms/internal/gtm/zzbip;Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbfd;
    .locals 8

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/gtm/zzbfd;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzbfc;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbfc;-><init>(Lcom/google/android/gms/internal/gtm/zzbfi;ILcom/google/android/gms/internal/gtm/zzbip;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbfd;-><init>(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbgs;Lcom/google/android/gms/internal/gtm/zzbfc;Ljava/lang/Class;)V

    return-object v6
.end method

.method static zzad(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbff;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbff;->zza:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzbff;

    if-nez v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzbff;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    .line 3
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzbij;->zze(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzbff;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/gtm/zzbff;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/google/android/gms/internal/gtm/zzbff;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v1
.end method

.method protected static zzae(Lcom/google/android/gms/internal/gtm/zzbff;Ljava/io/InputStream;Lcom/google/android/gms/internal/gtm/zzbep;)Lcom/google/android/gms/internal/gtm/zzbff;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzbfs;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbca;

    const/16 v1, 0x1000

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zzbca;-><init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/gtm/zzbbz;)V

    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzbff;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzbff;

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbhb;->zza()Lcom/google/android/gms/internal/gtm/zzbhb;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/gtm/zzbhb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbhf;

    move-result-object p1

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbcd;->zzp(Lcom/google/android/gms/internal/gtm/zzbcc;)Lcom/google/android/gms/internal/gtm/zzbcd;

    move-result-object v0

    invoke-interface {p1, p0, v0, p2}, Lcom/google/android/gms/internal/gtm/zzbhf;->zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbhe;Lcom/google/android/gms/internal/gtm/zzbep;)V

    .line 7
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/gtm/zzbhf;->zzf(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/gtm/zzbfs; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/gtm/zzbhy; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzc(Lcom/google/android/gms/internal/gtm/zzbff;)Lcom/google/android/gms/internal/gtm/zzbff;

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/gtm/zzbfs;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzbfs;

    throw p0

    .line 10
    :cond_0
    throw p0

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/gtm/zzbfs;

    if-eqz p2, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzbfs;

    throw p0

    .line 10
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzbfs;

    .line 13
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzbfs;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/gtm/zzbfs;->zzh(Lcom/google/android/gms/internal/gtm/zzbgs;)Lcom/google/android/gms/internal/gtm/zzbfs;

    throw p2

    :catch_2
    move-exception p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbhy;->zza()Lcom/google/android/gms/internal/gtm/zzbfs;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/gtm/zzbfs;->zzh(Lcom/google/android/gms/internal/gtm/zzbgs;)Lcom/google/android/gms/internal/gtm/zzbfs;

    throw p1

    :catch_3
    move-exception p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbfs;->zzl()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzbfs;

    .line 15
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzbfs;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    .line 16
    :cond_2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/gtm/zzbfs;->zzh(Lcom/google/android/gms/internal/gtm/zzbgs;)Lcom/google/android/gms/internal/gtm/zzbfs;

    throw p1
.end method

.method protected static zzaf(Lcom/google/android/gms/internal/gtm/zzbff;[BLcom/google/android/gms/internal/gtm/zzbep;)Lcom/google/android/gms/internal/gtm/zzbff;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzbfs;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    array-length v1, p1

    .line 2
    invoke-static {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/gtm/zzbff;->zze(Lcom/google/android/gms/internal/gtm/zzbff;[BIILcom/google/android/gms/internal/gtm/zzbep;)Lcom/google/android/gms/internal/gtm/zzbff;

    move-result-object p0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzc(Lcom/google/android/gms/internal/gtm/zzbff;)Lcom/google/android/gms/internal/gtm/zzbff;

    return-object p0
.end method

.method protected static zzag()Lcom/google/android/gms/internal/gtm/zzbfk;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbew;->zze()Lcom/google/android/gms/internal/gtm/zzbew;

    move-result-object v0

    return-object v0
.end method

.method protected static zzah()Lcom/google/android/gms/internal/gtm/zzbfl;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbfg;->zzf()Lcom/google/android/gms/internal/gtm/zzbfg;

    move-result-object v0

    return-object v0
.end method

.method protected static zzai()Lcom/google/android/gms/internal/gtm/zzbfo;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbgh;->zzf()Lcom/google/android/gms/internal/gtm/zzbgh;

    move-result-object v0

    return-object v0
.end method

.method protected static zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbhc;->zze()Lcom/google/android/gms/internal/gtm/zzbhc;

    move-result-object v0

    return-object v0
.end method

.method protected static zzak(Lcom/google/android/gms/internal/gtm/zzbfp;)Lcom/google/android/gms/internal/gtm/zzbfp;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzbfp;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    .line 2
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbfp;->zzd(I)Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object p0

    return-object p0
.end method

.method static varargs zzal(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 5
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 6
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    .line 7
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 4
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 8
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbhd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzbhd;-><init>(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected static zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbff;->zza:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zzao(Lcom/google/android/gms/internal/gtm/zzbff;Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzbff;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v0, :cond_0

    return v0

    :cond_0
    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbhb;->zza()Lcom/google/android/gms/internal/gtm/zzbhb;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gtm/zzbhb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbhf;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/gtm/zzbhf;->zzk(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p1, :cond_3

    if-eq v0, v2, :cond_2

    move-object p1, v1

    goto :goto_0

    :cond_2
    move-object p1, p0

    :goto_0
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/gtm/zzbff;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v2
.end method

.method private static zzc(Lcom/google/android/gms/internal/gtm/zzbff;)Lcom/google/android/gms/internal/gtm/zzbff;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzbfs;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzaw()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbhy;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzbhy;-><init>(Lcom/google/android/gms/internal/gtm/zzbgs;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbhy;->zza()Lcom/google/android/gms/internal/gtm/zzbfs;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzbfs;->zzh(Lcom/google/android/gms/internal/gtm/zzbgs;)Lcom/google/android/gms/internal/gtm/zzbfs;

    throw v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static zze(Lcom/google/android/gms/internal/gtm/zzbff;[BIILcom/google/android/gms/internal/gtm/zzbep;)Lcom/google/android/gms/internal/gtm/zzbff;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzbfs;
        }
    .end annotation

    const/4 p2, 0x4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p2, v0, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzbff;

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbhb;->zza()Lcom/google/android/gms/internal/gtm/zzbhb;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/gtm/zzbhb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbhf;

    move-result-object p2

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzbbf;

    .line 4
    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/gtm/zzbbf;-><init>(Lcom/google/android/gms/internal/gtm/zzbep;)V

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzbhf;->zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/gtm/zzbbf;)V

    .line 5
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/gtm/zzbhf;->zzf(Ljava/lang/Object;)V

    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzbff;->zzc:I

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 7
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/gtm/zzbfs; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/gtm/zzbhy; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbfs;->zzj()Lcom/google/android/gms/internal/gtm/zzbfs;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/gtm/zzbfs;->zzh(Lcom/google/android/gms/internal/gtm/zzbgs;)Lcom/google/android/gms/internal/gtm/zzbfs;

    throw p1

    :catch_1
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/gtm/zzbfs;

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzbfs;

    throw p0

    .line 8
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzbfs;

    .line 11
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzbfs;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/gtm/zzbfs;->zzh(Lcom/google/android/gms/internal/gtm/zzbgs;)Lcom/google/android/gms/internal/gtm/zzbfs;

    throw p2

    :catch_2
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbhy;->zza()Lcom/google/android/gms/internal/gtm/zzbfs;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/gtm/zzbfs;->zzh(Lcom/google/android/gms/internal/gtm/zzbgs;)Lcom/google/android/gms/internal/gtm/zzbfs;

    throw p1

    :catch_3
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbfs;->zzl()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzbfs;

    .line 13
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzbfs;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    .line 14
    :cond_2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/gtm/zzbfs;->zzh(Lcom/google/android/gms/internal/gtm/zzbgs;)Lcom/google/android/gms/internal/gtm/zzbfs;

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbhb;->zza()Lcom/google/android/gms/internal/gtm/zzbhb;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbhb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbhf;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzbff;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzbhf;->zzj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzbff;->zzc:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbhb;->zza()Lcom/google/android/gms/internal/gtm/zzbhb;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbhb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbhf;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/gtm/zzbhf;->zzb(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzbff;->zzc:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbgu;->zza(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzQ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzbff;->zze:I

    return v0
.end method

.method final zzT(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzbff;->zze:I

    return-void
.end method

.method public final zzY()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzbff;->zze:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbhb;->zza()Lcom/google/android/gms/internal/gtm/zzbhb;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbhb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbhf;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/gtm/zzbhf;->zza(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzbff;->zze:I

    :cond_0
    return v0
.end method

.method protected final zzZ()Lcom/google/android/gms/internal/gtm/zzbez;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzbff;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbez;

    return-object v0
.end method

.method public final zzaa()Lcom/google/android/gms/internal/gtm/zzbez;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzbff;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbez;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzbez;->zzz(Lcom/google/android/gms/internal/gtm/zzbff;)Lcom/google/android/gms/internal/gtm/zzbez;

    return-object v0
.end method

.method public final synthetic zzas()Lcom/google/android/gms/internal/gtm/zzbgr;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzbff;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbez;

    return-object v0
.end method

.method public final synthetic zzat()Lcom/google/android/gms/internal/gtm/zzbgr;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzbff;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbez;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzbez;->zzz(Lcom/google/android/gms/internal/gtm/zzbff;)Lcom/google/android/gms/internal/gtm/zzbez;

    return-object v0
.end method

.method public final zzau(Lcom/google/android/gms/internal/gtm/zzbcj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbhb;->zza()Lcom/google/android/gms/internal/gtm/zzbhb;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbhb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbhf;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzbck;->zza(Lcom/google/android/gms/internal/gtm/zzbcj;)Lcom/google/android/gms/internal/gtm/zzbck;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzbhf;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbck;)V

    return-void
.end method

.method public final synthetic zzav()Lcom/google/android/gms/internal/gtm/zzbgs;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzbff;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbff;

    return-object v0
.end method

.method public final zzaw()Z
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzao(Lcom/google/android/gms/internal/gtm/zzbff;Z)Z

    move-result v0

    return v0
.end method

.method protected abstract zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method
