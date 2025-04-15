.class public final Lcom/google/android/gms/internal/gtm/zzrc;
.super Lcom/google/android/gms/internal/gtm/zzqz;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field private static final zzb:Ljava/util/Map;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/gtm/zzjw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hasOwnProperty"

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzlx;->zza:Lcom/google/android/gms/internal/gtm/zzlx;

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzrc;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzjw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzrc;->zzc:Lcom/google/android/gms/internal/gtm/zzjw;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrc;->zzc:Lcom/google/android/gms/internal/gtm/zzjw;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzjw;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqz;->zzg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrc;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzjw;

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Native Method "

    .line 3
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not defined for type InstructionReference."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic zzc()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrc;->zzc:Lcom/google/android/gms/internal/gtm/zzjw;

    return-object v0
.end method

.method public final zze()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqz;->zzd()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zzg(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrc;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzi()Lcom/google/android/gms/internal/gtm/zzjw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrc;->zzc:Lcom/google/android/gms/internal/gtm/zzjw;

    return-object v0
.end method
