.class public final Lcom/google/android/gms/internal/gtm/zzqv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field private static final zza:Ljava/lang/String;

.field private static final zzb:Ljava/lang/Integer;


# instance fields
.field private final zzc:I

.field private final zzd:Ljava/lang/Object;

.field private final zze:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzqv;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzqv;->zzb:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Object;Ljava/util/List;ZLcom/google/android/gms/internal/gtm/zzqu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqv;->zzc:I

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzqv;->zzd:Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqv;->zze:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzqv;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzqv;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzqv;->zzd:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqv;->zzd:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqv;->zzd:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqv;->zzd:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "Fail to convert a null object to string"

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzqv;->zza:Ljava/lang/String;

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqv;->zzc:I

    return v0
.end method

.method public final zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqv;->zzd:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzc()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqv;->zze:Ljava/util/List;

    return-object v0
.end method
