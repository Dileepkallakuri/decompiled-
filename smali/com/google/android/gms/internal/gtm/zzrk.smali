.class public final Lcom/google/android/gms/internal/gtm/zzrk;
.super Lcom/google/android/gms/internal/gtm/zzqz;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field private static final zzb:Ljava/util/Map;


# instance fields
.field private final zzc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzmm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzmm;-><init>()V

    const-string v2, "charAt"

    .line 2
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzmn;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzmn;-><init>()V

    const-string v2, "concat"

    .line 3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hasOwnProperty"

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzlx;->zza:Lcom/google/android/gms/internal/gtm/zzlx;

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzmo;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzmo;-><init>()V

    const-string v2, "indexOf"

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzmp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzmp;-><init>()V

    const-string v2, "lastIndexOf"

    .line 6
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzmq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzmq;-><init>()V

    const-string v2, "match"

    .line 7
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzmr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzmr;-><init>()V

    const-string v2, "replace"

    .line 8
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzms;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzms;-><init>()V

    const-string v2, "search"

    .line 9
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzmt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzmt;-><init>()V

    const-string v2, "slice"

    .line 10
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzmu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzmu;-><init>()V

    const-string v2, "split"

    .line 11
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzmv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzmv;-><init>()V

    const-string v2, "substring"

    .line 12
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzmw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzmw;-><init>()V

    const-string v2, "toLocaleLowerCase"

    .line 13
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzmx;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzmx;-><init>()V

    const-string v2, "toLocaleUpperCase"

    .line 14
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzmy;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzmy;-><init>()V

    const-string v2, "toLowerCase"

    .line 15
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzna;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzna;-><init>()V

    const-string v2, "toUpperCase"

    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzmz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzmz;-><init>()V

    const-string v2, "toString"

    .line 17
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zznb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zznb;-><init>()V

    const-string v2, "trim"

    .line 18
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzrk;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqz;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzrk;->zzc:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/gtm/zzrk;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzrk;->zzc:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrk;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrk;->zzc:Ljava/lang/String;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrk;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzrk;->zzc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrk;->zzc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

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
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrk;->zzb:Ljava/util/Map;

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

    const-string p1, " is not defined for type ListWrapper."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic zzc()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrk;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzrj;-><init>(Lcom/google/android/gms/internal/gtm/zzrk;)V

    return-object v0
.end method

.method public final zzg(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrk;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzi(I)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrk;->zzc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzrk;->zzc:Ljava/lang/String;

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    :goto_0
    return-object v0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrk;->zzc:Ljava/lang/String;

    return-object v0
.end method
