.class final Lcom/google/android/gms/internal/gtm/zzff;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzfg;

.field private zzb:I

.field private final zzc:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzfg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzff;->zza:Lcom/google/android/gms/internal/gtm/zzfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzff;->zzc:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzff;->zzb:I

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/gtm/zzez;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzff;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzff;->zza:Lcom/google/android/gms/internal/gtm/zzfg;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzcv;->zzg()I

    move-result v2

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzff;->zza:Lcom/google/android/gms/internal/gtm/zzfg;

    .line 3
    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/internal/gtm/zzfg;->zza(Lcom/google/android/gms/internal/gtm/zzez;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzff;->zza:Lcom/google/android/gms/internal/gtm/zzfg;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzz()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v0

    const-string v2, "Error formatting hit"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/gtm/zzfd;->zzb(Lcom/google/android/gms/internal/gtm/zzez;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 6
    array-length v2, v0

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzff;->zza:Lcom/google/android/gms/internal/gtm/zzfg;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzcv;->zzf()I

    move-result v4

    if-le v2, v4, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzff;->zza:Lcom/google/android/gms/internal/gtm/zzfg;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzz()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v0

    const-string v2, "Hit size exceeds the maximum size limit"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/gtm/zzfd;->zzb(Lcom/google/android/gms/internal/gtm/zzez;Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzff;->zzc:Ljava/io/ByteArrayOutputStream;

    .line 9
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-lez p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzff;->zzc:Ljava/io/ByteArrayOutputStream;

    .line 10
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzff;->zza:Lcom/google/android/gms/internal/gtm/zzfg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    add-int/2addr p1, v2

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/gtm/zzew;->zzA:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le p1, v2, :cond_4

    return v3

    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzff;->zzc:Ljava/io/ByteArrayOutputStream;

    .line 12
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzff;->zzc:Ljava/io/ByteArrayOutputStream;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfg;->zzf()[B

    move-result-object v2

    .line 13
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzff;->zzc:Ljava/io/ByteArrayOutputStream;

    .line 14
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzff;->zzb:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzff;->zzb:I

    return v1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzff;->zza:Lcom/google/android/gms/internal/gtm/zzfg;

    const-string v2, "Failed to write payload when batching hits"

    .line 15
    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method public final zzc()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzff;->zzc:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
