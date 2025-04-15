.class public abstract Lcom/google/android/gms/internal/gtm/zzbcj;
.super Lcom/google/android/gms/internal/gtm/zzbbm;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Z


# instance fields
.field zze:Lcom/google/android/gms/internal/gtm/zzbck;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/gtm/zzbcj;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbcj;->zza:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbij;->zzx()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/gtm/zzbcj;->zzb:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbbm;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzbci;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbbm;-><init>()V

    return-void
.end method

.method static zzA(ILcom/google/android/gms/internal/gtm/zzbgs;Lcom/google/android/gms/internal/gtm/zzbhf;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzbcj;->zzJ(I)I

    move-result p0

    add-int/2addr p0, p0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzbay;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbay;->zzQ()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/gtm/zzbhf;->zza(Ljava/lang/Object;)I

    move-result v0

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzbay;->zzT(I)V

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method

.method public static zzB(Lcom/google/android/gms/internal/gtm/zzbgs;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzbgs;->zzY()I

    move-result p0

    return p0
.end method

.method public static zzC(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzbcj;->zzJ(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static zzD(Lcom/google/android/gms/internal/gtm/zzbfy;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbfy;->zza()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzbcj;->zzJ(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzE(Lcom/google/android/gms/internal/gtm/zzbgs;)I
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzbgs;->zzY()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzbcj;->zzJ(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static zzF(Lcom/google/android/gms/internal/gtm/zzbgs;Lcom/google/android/gms/internal/gtm/zzbhf;)I
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzbay;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbay;->zzQ()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/gtm/zzbhf;->zza(Ljava/lang/Object;)I

    move-result v0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbay;->zzT(I)V

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbcj;->zzJ(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method static zzG(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static zzH(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzbio;->zzc(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/gtm/zzbin; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbfq;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3
    array-length p0, p0

    .line 1
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzbcj;->zzJ(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzI(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzbcj;->zzJ(I)I

    move-result p0

    return p0
.end method

.method public static zzJ(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static zzK(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v4, -0x800000000L

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v4, 0xe

    ushr-long/2addr p0, v4

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_4

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public static zzL([B)Lcom/google/android/gms/internal/gtm/zzbcj;
    .locals 3

    .line 1
    array-length v0, p0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbcf;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbcf;-><init>([BII)V

    return-object v1
.end method

.method public static zzM(Ljava/io/OutputStream;I)Lcom/google/android/gms/internal/gtm/zzbcj;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbch;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzbch;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method static bridge synthetic zzO()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/gtm/zzbcj;->zzb:Z

    return v0
.end method

.method public static zzy([B)I
    .locals 1

    .line 1
    array-length p0, p0

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzbcj;->zzJ(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzz(Lcom/google/android/gms/internal/gtm/zzbbw;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbbw;->zzd()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzbcj;->zzJ(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method final zzN(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzbin;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbcj;->zza:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/gtm/zzbfq;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 3
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzbcj;->zzu(I)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/gtm/zzbcj;->zza([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzbcg;

    .line 5
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzbcg;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract zzR()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzS(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzT(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzU(ILcom/google/android/gms/internal/gtm/zzbbw;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb()I
.end method

.method public abstract zzh(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzi(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzj(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzk(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzl(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzm(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zzn(ILcom/google/android/gms/internal/gtm/zzbgs;Lcom/google/android/gms/internal/gtm/zzbhf;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzo(ILcom/google/android/gms/internal/gtm/zzbgs;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzp(ILcom/google/android/gms/internal/gtm/zzbbw;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzq(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzs(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzt(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzu(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzv(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzw(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
